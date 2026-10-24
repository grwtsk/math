# ab_add_one_dvd_a_pow_large_n_add_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ab0ca81-4dd7-9e1a-7ccb-dc0c8a33da60",
  "kind": "lemma",
  "lexical_name": "ab_add_one_dvd_a_pow_large_n_add_b",
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
  "slug": "ab-add-one-dvd-a-pow-large-n-add-b--58279a5b8cff7dfb02e565f0",
  "source": {
    "blob": "228ff3c70e8e252c951e0162d1e62becc3cfe20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 143,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58279a5b8cff7dfb02e565f03fff3d28a0606b3cc8ddb78f4b89a584fe009b69",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab0ca81-4dd7-9e1a-7ccb-dc0c8a33da60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ab_add_one_dvd_a_pow_large_n_add_b : a * b + 1 ∣ a ^ h.large_n + b := by
  rw [dvd_pow_iff_of_dvd_sub a_coprime_ab_add_one h.dvd_large_n_sub_neg_one, zpow_neg, zpow_one]
  suffices ((ZMod.unitOfCoprime _ a_coprime_ab_add_one : (ZMod (a * b + 1))ˣ) : ZMod (a * b + 1)) *
    ((((ZMod.unitOfCoprime _ a_coprime_ab_add_one)⁻¹ : (ZMod (a * b + 1))ˣ) :
      ZMod (a * b + 1)) + (b : ZMod (a * b + 1))) = 0 from
      (IsUnit.mul_right_eq_zero (ZMod.unitOfCoprime _ a_coprime_ab_add_one).isUnit).1 this
  rw [mul_add]
  norm_cast
  simp only [mul_inv_cancel, Units.val_one, ZMod.coe_unitOfCoprime]
  norm_cast
  convert! ZMod.natCast_self (a * b + 1) using 2
  exact add_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant7b84a07010ae26f45526511852dc40cc7f8b04f5b2c77f0a2257d64128ede019.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228ff3c70e8e252c951e0162d1e62becc3cfe20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
