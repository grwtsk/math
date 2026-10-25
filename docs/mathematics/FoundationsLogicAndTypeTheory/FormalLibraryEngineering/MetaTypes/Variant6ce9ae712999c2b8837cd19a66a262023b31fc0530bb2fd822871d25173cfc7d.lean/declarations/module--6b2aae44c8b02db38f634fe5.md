# Module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dde6a1e902d8a2223473e75c48bad4e21328522fd663f62733206431ba1546fc",
  "kind": "structure",
  "lexical_name": "Module",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "module--6b2aae44c8b02db38f634fe5",
  "source": {
    "blob": "9dc60f9b32862069489bef92c22b3f02cc97a3e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b2aae44c8b02db38f634fe537a5b3c695f851e6cbfa8c794c83afe45b17cb4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dde6a1e902d8a2223473e75c48bad4e21328522fd663f62733206431ba1546fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Module where
  header   : Syntax
  commands : Array Syntax

namespace Meta

/--
Controls which constants `isDefEq` (definitional equality) and `whnf` (weak head normal form)
are allowed to unfold.

## Background: "try-hard" vs "speculative" modes

During **type checking of user input**, we assume the input is most likely correct, and we want
Lean to try hard before reporting a failure. Here, it is fine to unfold `[semireducible]` definitions
(the `.default` setting).

During **proof automation** (`simp`, `rw`, type class resolution), we perform many speculative
`isDefEq` calls — most of which *fail*. In this setting, we do *not* want to try hard: unfolding
too many definitions is a performance footgun. This is why `.reducible` exists.

## The transparency hierarchy

The levels form a linear order: `none < reducible < instances < implicit < default < all`.
Each level unfolds everything the previous level does, plus more:

- **`reducible`**: Only unfolds `[reducible]` definitions. Used for speculative `isDefEq` checks
  (e.g., discrimination tree lookups in `simp`, type class resolution). Think of `[reducible]` as
  `[inline]` for type checking and indexing.

- **`instances`**: Also unfolds `[instance_reducible]` definitions (auto-applied to type class
  instances by the `instance` command). Primarily but not exclusively used during type class synthesis
  when unifying an instance's type with the expected type. Constants that play a role in an instance's
  discrimination pattern must not be instance-reducible; they must at least be implicit-reducible.
  For example, if `id : α → α` was instance-reducible, under some circumstances an instance of type
  `C (id x)` can be applied when an instance of type `C x` is requested. If this is undesirable,
  `id` (in this example) should be at most implicit-reducible.
  Most users should follow a simple rule: Make declarations that are meant to return instances but
  were not declared using the `instance` command instance-reducible.
  Most users will never need to manually annotate anything else with `[instance_reducible]` and they
  should not unless they understand what they do. There are some more subtle corners of the
  elaborator where instance-reducible constants have a special role, such as in the lazy WHNF
  mechanism and the generation of `sizeOf` equational lemmas. `[instance_reducible]` also affects
  the compiler's specialization and inlining behavior.

- **`implicit`**: Also unfolds `[implicit_reducible]` definitions. Implicit arguments and instance
  arguments are always checked at implicit transparency, even if the ambient transparency is `reducible`
  or `instances`. It is usually cheaper to compare terms at implicit transparency than it is to
  compare them at default transparency (see below) because it is more restrictive at unfolding.
  Tactics such as `simp` unify lemmas with subterms at `reducible` transparency. For example, when
  `simp` applies a lemma to a subterm, it puts metavariables in the place of its parameters and then
  unifies the lemma's conclusion with the subterm at `reducible` transparency, bumping the
  transparency to `implicit` for implicit and instance arguments. When `simp` does not apply a lemma
  that it should, it can be because `simp` would need to unfold a semireducible declaration during
  the unification process. In that case, marking that declaration `[implicit_reducible]` can be a
  solution.

  `[implicit_reducible]` is the right annotation in several situations, such as the following ones.

  - Because instance arguments are always compared at (at least) implicit transparency,
    marking constants as `[implicit_reducible]` can prevent instance diamonds.
  - Operations used in type parameters (such as in the `n` of `Fin n`) should, as a basic rule,
    be implicit-reducible, at least as soon as `backward.isDefEq.respectTransparency.types` is
    enabled, because types during metavariable assignments are then compared at implicit
    transparency.
  - The left-hand side and right-hand side of a `rfl` lemma should be definitionally equal at
    implicit transparency. Marking constants as `[implicit_reducible]` allows for more `rfl` lemmas.

  The downside is that every implicit-reducible constant makes the definitional equality checker
  do more unfolding, which can get expensive.
- **`default`**: Also unfolds `[semireducible]` definitions (anything not `[irreducible]`).
  Used for type checking user input where we want to try hard.

- **`all`**: Also unfolds `[irreducible]` definitions. Rarely used.

## Implicit arguments and transparency

When proof automation (e.g., `simp`, `rw`) applies a lemma, explicit arguments are checked at the
caller's transparency (typically `.reducible`). But implicit arguments are often "invisible" to the
user — if a lemma fails to apply because of an implicit argument mismatch, the user is confused.
Historically, Lean bumped transparency to `.default` for implicit arguments, but this eventually
became a performance bottleneck in Mathlib. The option `backward.isDefEq.respectTransparency true`
(default: `true`) disables this bump. Instead, implicit arguments (`{..}`) and instance-implicit
arguments (`[..]`) are checked at `.implicit` (so implicit-reducible definitions additionally unfold
and instance diamonds resolve), or at the
caller's transparency when `backward.isDefEq.implicitBump` is `false`.

See also: `ReducibilityStatus`, `backward.isDefEq.respectTransparency`,
`backward.whnf.reducibleClassField`.
-/
-- Note: the constructors below are not in the `none < reducible < instances < implicit < default < all`
-- order described in the docstring above. Reordering them induces a bootstrap problem that is
-- non-trivial to repair.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaTypes/Variant6ce9ae712999c2b8837cd19a66a262023b31fc0530bb2fd822871d25173cfc7d.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc60f9b32862069489bef92c22b3f02cc97a3e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
