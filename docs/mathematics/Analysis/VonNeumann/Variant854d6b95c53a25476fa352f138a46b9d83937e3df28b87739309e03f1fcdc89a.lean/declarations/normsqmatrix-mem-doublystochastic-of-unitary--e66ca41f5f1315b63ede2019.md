# normSqMatrix_mem_doublyStochastic_of_unitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "193d1bb8afafe0e94b4372d9d941df70e7561d31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91545a0a-76ab-ee8e-5d46-fd8066f31ae4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2797ee5-ad31-6056-41f3-eb0c883515a9",
  "kind": "lemma",
  "lexical_name": "normSqMatrix_mem_doublyStochastic_of_unitary",
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
  "slug": "normsqmatrix-mem-doublystochastic-of-unitary--e66ca41f5f1315b63ede2019",
  "source": {
    "blob": "193d1bb8afafe0e94b4372d9d941df70e7561d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e66ca41f5f1315b63ede2019b43db7f5302030983cd25df13250501c24cff3d4",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2797ee5-ad31-6056-41f3-eb0c883515a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normSqMatrix_mem_doublyStochastic_of_unitary
    {W : Matrix n n 𝕜} (hW : W ∈ Matrix.unitaryGroup n 𝕜) :
    normSqMatrix W ∈ doublyStochastic ℝ n := by
  rw [mem_doublyStochastic_iff_sum]
  refine ⟨fun i j => sq_nonneg _, fun i => ?_, fun j => ?_⟩
  · -- row sum: `∑ⱼ ‖Wᵢⱼ‖² = re (W Wᴴ)ᵢᵢ = re 1 = 1`
    have h : (W * star W) i i = 1 := by rw [Unitary.mul_star_self_of_mem hW]; simp
    have h2 : RCLike.re ((W * star W) i i) = (1 : ℝ) := by rw [h]; simp
    simpa [normSqMatrix, Matrix.mul_apply, star_apply, RCLike.star_def,
      RCLike.mul_conj, map_sum] using h2
  · -- column sum: `∑ᵢ ‖Wᵢⱼ‖² = re (Wᴴ W)ⱼⱼ = re 1 = 1`
    have h : (star W * W) j j = 1 := by rw [Unitary.star_mul_self_of_mem hW]; simp
    have h2 : RCLike.re ((star W * W) j j) = (1 : ℝ) := by rw [h]; simp
    simpa [normSqMatrix, Matrix.mul_apply, star_apply, RCLike.star_def,
      RCLike.conj_mul, map_sum] using h2

/-- For Hermitian `A, B`, writing `W = Uₐᴴ Uᵦ` for the eigenvector unitaries,
`Re tr(AB) = ∑ₖₗ λₖ(A) · ‖Wₖₗ‖² · λₗ(B)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Variant854d6b95c53a25476fa352f138a46b9d83937e3df28b87739309e03f1fcdc89a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `193d1bb8afafe0e94b4372d9d941df70e7561d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
