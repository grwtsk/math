# norm_exp_mul_exp_add_exp_neg_le_of_abs_im_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd4702c549afe0c09a445e17c1b67b5d167ea557",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/4702c45bea97e986a3e444251e8b4656889eeccda31555063c63991464b0425c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28a84302-5960-5d16-4be8-efdd8646b5a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a75e27cb-d17c-6b96-65cd-55c21f4ffe74",
  "kind": "theorem",
  "lexical_name": "norm_exp_mul_exp_add_exp_neg_le_of_abs_im_le",
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
  "slug": "norm-exp-mul-exp-add-exp-neg-le-of-abs-im-le--3ee9507c52961670ab76c073",
  "source": {
    "blob": "fd4702c549afe0c09a445e17c1b67b5d167ea557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1269,
    "line": 1256,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4702c45bea97e986a3e444251e8b4656889eeccda31555063c63991464b0425c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ee9507c52961670ab76c07380a09384193a8ba4ff2809a6b73adf8d5ad4af1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4702c45bea97e986a3e444251e8b4656889eeccda31555063c63991464b0425c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a75e27cb-d17c-6b96-65cd-55c21f4ffe74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1256–1269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_mul_exp_add_exp_neg_le_of_abs_im_le {a b : ℝ} (ha : a ≤ 0) {z : ℂ}
    (hz : |z.im| ≤ b) (hb : b ≤ π / 2) :
    ‖exp (a * (exp z + exp (-z)))‖ ≤ Real.exp (a * Real.cos b * Real.exp |z.re|) := by
  simp only [norm_exp, Real.exp_le_exp, re_ofReal_mul, add_re, exp_re, neg_im, Real.cos_neg, ←
    add_mul, mul_assoc, mul_comm (Real.cos b), neg_re, ← Real.cos_abs z.im]
  have : Real.exp |z.re| ≤ Real.exp z.re + Real.exp (-z.re) :=
    apply_abs_le_add_of_nonneg (fun x => (Real.exp_pos x).le) z.re
  refine mul_le_mul_of_nonpos_left (mul_le_mul this ?_ ?_ ((Real.exp_pos _).le.trans this)) ha
  · exact
      Real.cos_le_cos_of_nonneg_of_le_pi (_root_.abs_nonneg _)
        (hb.trans <| half_le_self <| Real.pi_pos.le) hz
  · refine Real.cos_nonneg_of_mem_Icc ⟨?_, hb⟩
    exact (neg_nonpos.2 <| Real.pi_div_two_pos.le).trans ((_root_.abs_nonneg _).trans hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4702c45bea97e986a3e444251e8b4656889eeccda31555063c63991464b0425c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4702c45bea97e986a3e444251e8b4656889eeccda31555063c63991464b0425c.lean#L1256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd4702c549afe0c09a445e17c1b67b5d167ea557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
