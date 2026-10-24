# gcdRatio_le_commonDivisorRatioSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ec271cc-c814-9104-8342-4bf3af4196b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a9d682d-f2ea-74d4-94b4-0d36084ca7cd",
  "kind": "theorem",
  "lexical_name": "gcdRatio_le_commonDivisorRatioSum",
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
  "slug": "gcdratio-le-commondivisorratiosum--c1d3b7583b583efb08752625",
  "source": {
    "blob": "2555ee4232fc512e8ded72e74fedf561bc53a98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1d3b7583b583efb087526259f760ead7f9720a490c9faaf002ed205138e3a49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a9d682d-f2ea-74d4-94b4-0d36084ca7cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gcdRatio_le_commonDivisorRatioSum
    (V d e : ℕ) (hd : d ∈ Finset.Ioc 0 V) :
    (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ ≤
      commonDivisorRatioSum V d e := by
  have hfactor : 0 ≤ (d : ℝ)⁻¹ * (e : ℝ)⁻¹ := by positivity
  calc
    (Nat.gcd d e : ℝ) * (d : ℝ)⁻¹ * (e : ℝ)⁻¹ =
        (Nat.gcd d e : ℝ) * ((d : ℝ)⁻¹ * (e : ℝ)⁻¹) := by ring
    _ ≤ (∑ r ∈ Finset.Ioc 0 V,
          if r ∣ d ∧ r ∣ e then (r : ℝ) else 0) *
        ((d : ℝ)⁻¹ * (e : ℝ)⁻¹) :=
      mul_le_mul_of_nonneg_right (gcd_le_commonDivisorSum V d e hd) hfactor
    _ = commonDivisorRatioSum V d e := by
      rw [commonDivisorRatioSum, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro r hr
      by_cases hcommon : r ∣ d ∧ r ∣ e
      · rw [if_pos hcommon, if_pos hcommon]
        ring
      · simp [hcommon]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanRightHarmonicCube/Variantd4e8c34c16185bbd37377a8dd691722b66d3e3f3b1b1ef3938c3783af37a43ca.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2555ee4232fc512e8ded72e74fedf561bc53a98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
