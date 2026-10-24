# one_add_mul_self_lt_rpow_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:145dff99-31f7-e744-1464-55d547850f8a",
  "kind": "theorem",
  "lexical_name": "one_add_mul_self_lt_rpow_one_add",
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
  "slug": "one-add-mul-self-lt-rpow-one-add--f2740ff8cc5a7f815b092354",
  "source": {
    "blob": "a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 196,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2740ff8cc5a7f815b0923540eb2353e3e2d22e0493e3adea861c522f70911bb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:145dff99-31f7-e744-1464-55d547850f8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_add_mul_self_lt_rpow_one_add {s : ℝ} (hs : -1 ≤ s) (hs' : s ≠ 0) {p : ℝ} (hp : 1 < p) :
    1 + p * s < (1 + s) ^ p := by
  rcases eq_or_lt_of_le hs with (rfl | hs)
  · have : p ≠ 0 := by positivity
    simpa [zero_rpow this]
  have hs1 : 0 < 1 + s := by linarith
  cases' le_or_lt (1 + p * s) 0 with hs2 hs2
  · exact hs2.trans_lt (rpow_pos_of_pos hs1 _)
  rw [rpow_def_of_pos hs1, ← exp_log hs2]
  apply exp_strictMono
  have hp : 0 < p := by positivity
  have hs3 : 1 + s ≠ 1 := by contrapose! hs'; linarith
  have hs4 : 1 + p * s ≠ 1 := by contrapose! hs'; nlinarith
  cases' lt_or_gt_of_ne hs' with hs' hs'
  · rw [← div_lt_iff hp, ← div_lt_div_right_of_neg hs']
    -- Porting note: previously we could write `zero_lt_one` inline,
    -- but now Lean doesn't guess we are talking about `1` fast enough.
    haveI : (1 : ℝ) ∈ Ioi 0 := zero_lt_one
    convert strictConcaveOn_log_Ioi.secant_strict_mono this hs2 hs1 hs4 hs3 _ using 1
    · field_simp
    · field_simp
    · nlinarith
  · rw [← div_lt_iff hp, ← div_lt_div_right hs']
    -- Porting note: previously we could write `zero_lt_one` inline,
    -- but now Lean doesn't guess we are talking about `1` fast enough.
    haveI : (1 : ℝ) ∈ Ioi 0 := zero_lt_one
    convert strictConcaveOn_log_Ioi.secant_strict_mono this hs1 hs2 hs3 hs4 _ using 1
    · field_simp
    · field_simp
    · nlinarith
#align one_add_mul_self_lt_rpow_one_add one_add_mul_self_lt_rpow_one_add

/-- **Bernoulli's inequality** for real exponents, non-strict version: for `1 ≤ p` and `-1 ≤ s`
we have `1 + p * s ≤ (1 + s) ^ p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant498b726f3a759490cc9f79f95642f3c65afb2320083c4569c85c71508f324972.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a05d1e2cb1dbdcaad7e9bd8b8865db4e4782c211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
