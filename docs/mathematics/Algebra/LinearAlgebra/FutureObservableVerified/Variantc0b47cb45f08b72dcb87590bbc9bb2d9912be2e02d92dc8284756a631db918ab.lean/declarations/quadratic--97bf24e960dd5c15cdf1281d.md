# quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5331e088b2a2219d05e9876acd13f39c66617855e3d911f2435a317be72c524a",
  "kind": "def",
  "lexical_name": "quadratic",
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
  "slug": "quadratic--97bf24e960dd5c15cdf1281d",
  "source": {
    "blob": "34b9958f0e469f0dcd228293f0362c5add26a550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97bf24e960dd5c15cdf1281d1c374a3b99716e410d49d8440d2f3cc60e96b11b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5331e088b2a2219d05e9876acd13f39c66617855e3d911f2435a317be72c524a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quadratic (K : Matrix ι ι ℚ) (x : ι → ℚ) : ℚ := x ⬝ᵥ K.mulVec x

/-- Pull back a rational form by the declared linear state mutation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b9958f0e469f0dcd228293f0362c5add26a550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
