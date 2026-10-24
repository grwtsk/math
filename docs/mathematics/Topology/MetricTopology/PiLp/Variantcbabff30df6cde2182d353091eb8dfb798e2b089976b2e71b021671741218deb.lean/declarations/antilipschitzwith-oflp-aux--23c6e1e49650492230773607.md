# antilipschitzWith_ofLp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7592849e10e9f274cce1fff345663ebcf9fe2125",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 486,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffab72ec-5cc8-be6b-1b2c-ce282ffb5e83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773a49f5-cd84-3205-7506-2e163f458712",
  "kind": "lemma",
  "lexical_name": "antilipschitzWith_ofLp_aux",
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
  "slug": "antilipschitzwith-oflp-aux--23c6e1e49650492230773607",
  "source": {
    "blob": "7592849e10e9f274cce1fff345663ebcf9fe2125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 486,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23c6e1e496504922307736076c57554f72388e1085813f38f8a22356a520bd78",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773a49f5-cd84-3205-7506-2e163f458712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma antilipschitzWith_ofLp_aux :
    AntilipschitzWith ((Fintype.card ι : ℝ≥0) ^ (1 / p).toReal) (@ofLp p (∀ i, β i)) := by
  intro x y
  rcases p.dichotomy with (rfl | h)
  · simp only [edist_eq_iSup, ENNReal.div_top, ENNReal.toReal_zero, NNReal.rpow_zero,
      ENNReal.coe_one, one_mul, iSup_le_iff]
    -- Porting note: `Finset.le_sup` needed some help
    exact fun i => Finset.le_sup (f := fun i => edist (x i) (y i)) (Finset.mem_univ i)
  · have pos : 0 < p.toReal := zero_lt_one.trans_le h
    have nonneg : 0 ≤ 1 / p.toReal := one_div_nonneg.2 (le_of_lt pos)
    have cancel : p.toReal * (1 / p.toReal) = 1 := mul_div_cancel₀ 1 (ne_of_gt pos)
    rw [edist_eq_sum pos, ENNReal.toReal_div 1 p]
    simp only [edist, ENNReal.toReal_one]
    calc
      (∑ i, edist (x i) (y i) ^ p.toReal) ^ (1 / p.toReal) ≤
          (∑ _i, edist (ofLp x) (ofLp y) ^ p.toReal) ^ (1 / p.toReal) := by
        gcongr with i
        exact Finset.le_sup (f := fun i => edist (x i) (y i)) (Finset.mem_univ i)
      _ =
          ((Fintype.card ι : ℝ≥0) ^ (1 / p.toReal) : ℝ≥0) *
            edist (ofLp x) (ofLp y) := by
        simp only [nsmul_eq_mul, Finset.card_univ, ENNReal.rpow_one, Finset.sum_const,
          ENNReal.mul_rpow_of_nonneg _ _ nonneg, ← ENNReal.rpow_mul, cancel]
        have : (Fintype.card ι : ℝ≥0∞) = (Fintype.card ι : ℝ≥0) :=
          (ENNReal.coe_natCast (Fintype.card ι)).symm
        rw [this, ENNReal.coe_rpow_of_nonneg _ nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7592849e10e9f274cce1fff345663ebcf9fe2125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
