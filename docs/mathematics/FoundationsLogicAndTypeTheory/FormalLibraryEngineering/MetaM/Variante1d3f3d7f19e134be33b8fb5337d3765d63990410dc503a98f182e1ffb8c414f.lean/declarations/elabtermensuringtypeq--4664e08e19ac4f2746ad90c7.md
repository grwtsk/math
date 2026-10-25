# elabTermEnsuringTypeQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56af05f4ffdd562d568dd6155d709352412e13f0654687906556d9c0b50cc349",
  "kind": "def",
  "lexical_name": "elabTermEnsuringTypeQ",
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
  "slug": "elabtermensuringtypeq--4664e08e19ac4f2746ad90c7",
  "source": {
    "blob": "99c47e41dbed26fd5280958c704308ddc58d0cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variante1d3f3d7f19e134be33b8fb5337d3765d63990410dc503a98f182e1ffb8c414f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4664e08e19ac4f2746ad90c79b27440d67991039face763a924438cfc6cc17dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variante1d3f3d7f19e134be33b8fb5337d3765d63990410dc503a98f182e1ffb8c414f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56af05f4ffdd562d568dd6155d709352412e13f0654687906556d9c0b50cc349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def elabTermEnsuringTypeQ (stx : Syntax) (expectedType : Q(Sort u))
    (catchExPostpone := true) (implicitLambda := true) (errorMsgHeader? : Option String := none) :
    TermElabM Q($expectedType) := do
  elabTermEnsuringType stx (some expectedType) catchExPostpone implicitLambda errorMsgHeader?

/--
A `Qq`-ified version of `Lean.Meta.inferType`

Instead of writing `let α ← inferType e`, this allows writing `let ⟨u, α, e⟩ ← inferTypeQ e`,
which results in a context of
```
e✝ : Expr
u : Level
α : Q(Type u)
e : Q($α)
```
Here, the new `e` is defeq to the old one, but now has `Qq`-ascribed type information.

This is frequently useful when using the `~q` matching from `QQ/Match.lean`,
as it allows an `Expr` to be turned into something that can be matched upon.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variante1d3f3d7f19e134be33b8fb5337d3765d63990410dc503a98f182e1ffb8c414f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetaM/Variante1d3f3d7f19e134be33b8fb5337d3765d63990410dc503a98f182e1ffb8c414f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c47e41dbed26fd5280958c704308ddc58d0cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
