# dnsq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:348e1a4d3a1f614b33445b7daceaf064c4e75b293afd07441d274c6b0360fd60",
  "kind": "instance",
  "lexical_name": "dnsq",
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
  "slug": "dnsq--1fc49b2df9484d955cbda88a",
  "source": {
    "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 249,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fc49b2df9484d955cbda88ad04267ac6cff75a9247b7d0fc0f7364ec2d0c945",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:348e1a4d3a1f614b33445b7daceaf064c4e75b293afd07441d274c6b0360fd60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance dnsq : Zsqrtd.Nonsquare (d a1) :=
  ⟨fun n h =>
    have : n * n + 1 = a * a := by rw [← h]; exact Nat.succ_pred_eq_of_pos (asq_pos a1)
    have na : n < a := Nat.mul_self_lt_mul_self_iff.2 (by rw [← this]; exact Nat.lt_succ_self _)
    have : (n + 1) * (n + 1) ≤ n * n + 1 := by rw [this]; exact Nat.mul_self_le_mul_self na
    have : n + n ≤ 0 :=
      @Nat.le_of_add_le_add_right _ (n * n + 1) _ (by ring_nf at this ⊢; assumption)
    Nat.ne_of_gt (d_pos a1) <| by
      rwa [Nat.eq_zero_of_le_zero ((Nat.le_add_left _ _).trans this)] at h⟩
#align pell.dnsq Pell.dnsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4135462a62ee33f2f225f440265f0bcc9f261b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
