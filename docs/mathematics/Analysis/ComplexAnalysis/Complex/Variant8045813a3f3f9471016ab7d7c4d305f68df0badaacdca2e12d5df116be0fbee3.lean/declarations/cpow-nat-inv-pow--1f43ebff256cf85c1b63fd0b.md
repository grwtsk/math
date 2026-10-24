# cpow_nat_inv_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "145f6aeaa6e2bbca2d5bf51e1503b241a61eadb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20a70685-3784-fa68-d163-96d70c932f54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e223e8c8-ae63-3f4b-036a-26fbc7141049",
  "kind": "theorem",
  "lexical_name": "cpow_nat_inv_pow",
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
  "slug": "cpow-nat-inv-pow--1f43ebff256cf85c1b63fd0b",
  "source": {
    "blob": "145f6aeaa6e2bbca2d5bf51e1503b241a61eadb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 141,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f43ebff256cf85c1b63fd0b98f7dabb77c751e857868bc5d04e645b54777cb9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e223e8c8-ae63-3f4b-036a-26fbc7141049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cpow_nat_inv_pow (x : ℂ) {n : ℕ} (hn : n ≠ 0) : (x ^ (n⁻¹ : ℂ)) ^ n = x := by
  suffices im (log x * (n⁻¹ : ℂ)) ∈ Ioc (-π) π by
    rw [← cpow_nat_cast, ← cpow_mul _ this.1 this.2, inv_mul_cancel, cpow_one]
    exact_mod_cast hn
  rw [mul_comm, ← ofReal_nat_cast, ← ofReal_inv, ofReal_mul_im, ← div_eq_inv_mul]
  rw [← pos_iff_ne_zero] at hn
  have hn' : 0 < (n : ℝ) := by assumption_mod_cast
  have hn1 : 1 ≤ (n : ℝ) := by exact_mod_cast Nat.succ_le_iff.2 hn
  constructor
  · rw [lt_div_iff hn']
    calc
      -π * n ≤ -π * 1 := mul_le_mul_of_nonpos_left hn1 (neg_nonpos.2 Real.pi_pos.le)
      _ = -π := (mul_one _)
      _ < im (log x) := neg_pi_lt_log_im _

  · rw [div_le_iff hn']
    calc
      im (log x) ≤ π := log_im_le_pi _
      _ = π * 1 := (mul_one π).symm
      _ ≤ π * n := mul_le_mul_of_nonneg_left hn1 Real.pi_pos.le

#align complex.cpow_nat_inv_pow Complex.cpow_nat_inv_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Complex/Variant8045813a3f3f9471016ab7d7c4d305f68df0badaacdca2e12d5df116be0fbee3.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `145f6aeaa6e2bbca2d5bf51e1503b241a61eadb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
