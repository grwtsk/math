# exists_mul_eq_inl_mul_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acf92adb-1452-ee0a-0d19-9c14f616e4ac",
  "kind": "theorem",
  "lexical_name": "exists_mul_eq_inl_mul_mul",
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
  "slug": "exists-mul-eq-inl-mul-mul--5f1935de01e0bd2563b3146d",
  "source": {
    "blob": "9dc146094fa0f6ce29790f452e3d15a0fd450265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantcfeb66eab4d00cc7633966063cde5da1b3dbf4e5593b4912d46c7a828118b120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1935de01e0bd2563b3146d0bafd83593d4ab4f4fb856ff361f5337ee016af9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantcfeb66eab4d00cc7633966063cde5da1b3dbf4e5593b4912d46c7a828118b120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf92adb-1452-ee0a-0d19-9c14f616e4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mul_eq_inl_mul_mul : ∃ n : N, σ (g₁ * g₂) = S.inl n * σ g₁ * σ g₂ := by
  obtain ⟨n, hn⟩ := mul_mul_mul_inv_mem_range_inl σ g₁ g₂
  use n⁻¹
  rw [mul_assoc, map_inv, eq_inv_mul_iff_mul_eq, ← eq_mul_inv_iff_mul_eq, hn]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantcfeb66eab4d00cc7633966063cde5da1b3dbf4e5593b4912d46c7a828118b120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantcfeb66eab4d00cc7633966063cde5da1b3dbf4e5593b4912d46c7a828118b120.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc146094fa0f6ce29790f452e3d15a0fd450265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
