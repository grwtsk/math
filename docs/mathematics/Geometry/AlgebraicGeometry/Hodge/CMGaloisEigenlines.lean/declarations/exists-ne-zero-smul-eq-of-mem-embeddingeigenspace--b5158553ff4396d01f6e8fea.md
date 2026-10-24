# exists_ne_zero_smul_eq_of_mem_embeddingEigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bd5b615-1be1-8408-7f99-fbd159114a0b",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_smul_eq_of_mem_embeddingEigenspace",
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
  "slug": "exists-ne-zero-smul-eq-of-mem-embeddingeigenspace--b5158553ff4396d01f6e8fea",
  "source": {
    "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 162,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5158553ff4396d01f6e8feae7ce29551a52e4b955bcb72a165d42677805d4b9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd5b615-1be1-8408-7f99-fbd159114a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_smul_eq_of_mem_embeddingEigenspace
    (σ : E ≃ₐ[k] E)
    {x y : E ⊗[k] E}
    (hxmem : x ∈ embeddingEigenspace (k := k) σ.toAlgHom)
    (hymem : y ∈ embeddingEigenspace (k := k) σ.toAlgHom)
    (hx : x ≠ 0)
    (hy : y ≠ 0) :
    ∃ c : E, c ≠ 0 ∧ y = c • x := by
  let j : Fin n := (galIndexEquiv k E).symm σ
  have hj : embeddingCharacter k E j = σ.toAlgHom := by
    apply AlgHom.ext
    intro a
    simp [embeddingCharacter, j]
  rw [← hj, embeddingEigenspace_eq_span k E j] at hxmem hymem
  obtain ⟨a, ha⟩ := Submodule.mem_span_singleton.mp hxmem
  obtain ⟨b, hb⟩ := Submodule.mem_span_singleton.mp hymem
  have ha0 : a ≠ 0 := by
    intro hzero
    apply hx
    rw [← ha, hzero, zero_smul]
  have hb0 : b ≠ 0 := by
    intro hzero
    apply hy
    rw [← hb, hzero, zero_smul]
  refine ⟨b / a, div_ne_zero hb0 ha0, ?_⟩
  calc
    y = b • canonicalEigenvector k E j := hb.symm
    _ = (b / a) • (a • canonicalEigenvector k E j) := by
      rw [smul_smul, div_mul_cancel₀ b ha0]
    _ = (b / a) • x := by rw [ha]

/-- Every canonical embedding eigenspace contains a nonzero vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
