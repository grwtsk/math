# toObserverReducer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7512dae8f88ceb082c544f0d5a07605ee2acbc7f482752338aee12b85d2705c",
  "kind": "def",
  "lexical_name": "toObserverReducer",
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
  "slug": "toobserverreducer--b692f112438086f491b5980e",
  "source": {
    "blob": "504ac3570ce6ccc1370c96ff7fa2bf073c023225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 221,
    "path": "GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b692f112438086f491b5980e7d6b3d539404c76f6f911e0cbfa379eef335864c",
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

Occurrence: `declaration:e7512dae8f88ceb082c544f0d5a07605ee2acbc7f482752338aee12b85d2705c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toObserverReducer
    {Input : Type uInput}
    {Resolution : Type uResolution}
    {GlobalRep : Rep}
    {M : System Input GlobalRep.Denote Resolution}
    {ρ : Resolution}
    (C : CertifiedReducerIR M ρ) :
    ObserverReducer M ρ :=
  ObserverReducer.ofRealizedImage
    C.program.eval C.localStep C.localObserve
    C.step_commute C.observe_commute

end CertifiedReducerIR

end BinaryMatrix.Runtime
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MatrixReducerIR/Variantc1e74e0c9647a6f15c0e60d607baf5fb664b33da5ba42252a192a73357191835.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `504ac3570ce6ccc1370c96ff7fa2bf073c023225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
