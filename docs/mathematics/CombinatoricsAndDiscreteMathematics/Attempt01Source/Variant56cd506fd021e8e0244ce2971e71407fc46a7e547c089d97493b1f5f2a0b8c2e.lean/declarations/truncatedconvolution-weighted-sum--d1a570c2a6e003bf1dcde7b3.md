# truncatedConvolution_weighted_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f13f0840-82b6-687c-c417-c25309b8d9f1",
  "kind": "theorem",
  "lexical_name": "truncatedConvolution_weighted_sum",
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
  "slug": "truncatedconvolution-weighted-sum--d1a570c2a6e003bf1dcde7b3",
  "source": {
    "blob": "edc11fd629ac805d5575b37447869ccb17a26435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant56cd506fd021e8e0244ce2971e71407fc46a7e547c089d97493b1f5f2a0b8c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1a570c2a6e003bf1dcde7b344958f0329bf48a81861e12498e5c4a95fc3a8d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant56cd506fd021e8e0244ce2971e71407fc46a7e547c089d97493b1f5f2a0b8c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f13f0840-82b6-687c-c417-c25309b8d9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncatedConvolution_weighted_sum (N U V : ℕ) (hUV : U * V ≤ N)
    (F : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, truncatedConvolution U V n * F n) =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * F (d * m)) := by
  classical
  unfold truncatedConvolution
  simp_rw [Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro d hd
  rw [Finset.sum_comm, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  have hp : d * m ∈ Finset.Icc 1 N := by
    have hd1 := (Finset.mem_Icc.mp hd).1
    have hm1 := (Finset.mem_Icc.mp hm).1
    have hdm := Nat.mul_le_mul (Finset.mem_Icc.mp hd).2 (Finset.mem_Icc.mp hm).2
    exact Finset.mem_Icc.mpr ⟨by nlinarith, hdm.trans hUV⟩
  simp only [ite_mul, zero_mul]
  simp [hp, mul_assoc]

/-- Closed cutoff masks include both boundary atoms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant56cd506fd021e8e0244ce2971e71407fc46a7e547c089d97493b1f5f2a0b8c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01Source/Variant56cd506fd021e8e0244ce2971e71407fc46a7e547c089d97493b1f5f2a0b8c2e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc11fd629ac805d5575b37447869ccb17a26435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
