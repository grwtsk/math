# B_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7161f2e-686b-a5b0-bf1f-a5156f02c001",
  "kind": "theorem",
  "lexical_name": "B_ne_zero",
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
  "slug": "b-ne-zero--f8f31939b4a1a03cbbaf9da8",
  "source": {
    "blob": "8d8031137bb0d8befafbb35f9d1a0c3a3481a1c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8f31939b4a1a03cbbaf9da8a0ce14bdae08cb3b56aa06926b7c50a56eede037",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7161f2e-686b-a5b0-bf1f-a5156f02c001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B_ne_zero [Nontrivial F] : B F ≠ 0 := fun h => by
  simpa using LinearMap.congr_fun₂ h (1, 0) (1, 1)

/-- `LinearMap.BilinForm.toQuadraticForm` is not injective on symmetric bilinear forms.

This disproves a weaker version of `QuadraticForm.associated_left_inverse`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d8031137bb0d8befafbb35f9d1a0c3a3481a1c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
