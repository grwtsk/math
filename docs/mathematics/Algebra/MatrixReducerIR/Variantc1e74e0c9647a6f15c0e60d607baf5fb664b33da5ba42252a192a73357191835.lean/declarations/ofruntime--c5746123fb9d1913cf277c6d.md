# ofRuntime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f719bcac7afc46b5713f68fee95c579a8a801e777d5a447a4b9e137d53416922",
  "kind": "def",
  "lexical_name": "ofRuntime",
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
  "slug": "ofruntime--c5746123fb9d1913cf277c6d",
  "source": {
    "blob": "504ac3570ce6ccc1370c96ff7fa2bf073c023225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 176,
    "path": "GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5746123fb9d1913cf277c6dd91ffc51c899676478b310d49c5708f7193569e8",
  "verification": {
    "reference": "docs/verification/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f719bcac7afc46b5713f68fee95c579a8a801e777d5a447a4b9e137d53416922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofRuntime :
    {A B : DAF.Runtime.Rep} →
      DAF.Runtime.ReducerIR A B →
      ReducerIR (Rep.ofRuntime A) (Rep.ofRuntime B)
  | _, _, .identity => .identity
  | _, _, .compose first second =>
      .compose (ofRuntime first) (ofRuntime second)
  | _, _, .pair left right => .pair (ofRuntime left) (ofRuntime right)
  | _, _, .projectLeft => .projectLeft
  | _, _, .projectRight => .projectRight
  | _, _, .boolNot => .booleanNot
  | _, _, .sequenceModulo modulus => .sequenceModulo modulus


end ReducerIR

open ObservableRecursion
open ObserverFactor

universe uInput uResolution

/--
A reducer program together with the equations making it an observer-local
factor.  The raw program need not be surjective; `toObserverReducer` restricts
its local codomain to the realized image.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `504ac3570ce6ccc1370c96ff7fa2bf073c023225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
