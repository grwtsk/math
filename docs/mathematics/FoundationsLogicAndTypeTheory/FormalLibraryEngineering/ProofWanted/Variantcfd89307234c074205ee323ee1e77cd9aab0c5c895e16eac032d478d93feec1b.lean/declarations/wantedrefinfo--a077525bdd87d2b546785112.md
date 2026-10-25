# WantedRefInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b752472d427eb02e941a5ebfcb215f23baf094c615fb149b3a164d11669652d7",
  "kind": "structure",
  "lexical_name": "WantedRefInfo",
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
  "slug": "wantedrefinfo--a077525bdd87d2b546785112",
  "source": {
    "blob": "0fd54ae27efd64bd5098aa0c44a09505bf051150",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a077525bdd87d2b5467851123597d5a807b9a257815dd90c45ae3a830975448b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b752472d427eb02e941a5ebfcb215f23baf094c615fb149b3a164d11669652d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure WantedRefInfo where
  kind : WantedRefKind
  /-- The binder type, e.g. `ProofWanted.Stmt foo` for parameterless `foo`, or
  `∀ (n : Nat), (foo n).Stmt` if `foo` itself has binders. -/
  binderType : TSyntax `term
  /-- `true` if the wanted's payload is a typeclass. The generated parameter is then an instance
  binder so Lean's instance synth can find it. -/
  isClass : Bool
  /-- `nm`'s own non-class wanted-dependencies, to be surfaced as binders on the enclosing
  declaration and threaded into `nm`'s application. Empty unless `nm` was itself declared with a
  body (or other `❰…❱` references) introducing chained dependencies. -/
  deps : Array WantedDep := #[]
  /-- For a *transparent* (derived) `nm`, the inlined replacement term: `nm` applied to its user
  arguments and to all of its surfaced leaf-hole binders, η-abstracted over the user arguments so
  that `❰nm❱ x y` βι-reduces to `nm`'s body. When `some`, `rewriteRefs` splices this in directly and
  adds no `d_nm` binder (`nm` is not a hole); `binderType`/`isClass`/`kind` are then unused. -/
  transparent : Option (TSyntax `term) := none

/-- Check that `nm` is a `theorem_wanted` or `def_wanted` declaration, and return both
which kind it is and the parameter-binder type to use when referencing it. The binder type is
Π-quantified over `nm`'s user binders, so parametrised wanted declarations can be referenced as
`❰foo❱ x y` (which desugars to applying the generated parameter to `x y`).

`nm`'s own auto-generated binders (chained `❰…❱` dependencies and ambient `instance_wanted`
includes — the trailing ones, counted by `wantedArityExt`) are handled specially. Instance-valued
ones stay quantified inside the reference's binder, so instance synth still discharges them at the
use site.
Non-class ones (a `def_wanted`/`theorem_wanted` `nm` referenced in its own body) would become
*unsolvable* implicits if quantified — nothing constrains them, since the `.Val`/`.Stmt` accessor
discards its argument — so instead they are returned as `deps`: the caller adds a matching binder
to the enclosing declaration and threads it into `nm`'s application.

We build the binder type by combining explicit syntactic construction for the Π body (so that
`@foo` is applied to each binder's argument) with `PrettyPrinter.delab` for each binder's TYPE
(under options that force a round-trip-safe form). The arguments use fresh names rather than
those from `forallTelescope` to avoid hygiene collisions with the outer signature, and `@` is
prepended to each argument to suppress Lean's implicit-lambda / auto-application machinery —
otherwise functional arguments (e.g. a chained `d_Jacobian` binder) get η-expanded during
elaboration, leaving lambdas in the stored env type that don't round-trip back through delab. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd54ae27efd64bd5098aa0c44a09505bf051150` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
