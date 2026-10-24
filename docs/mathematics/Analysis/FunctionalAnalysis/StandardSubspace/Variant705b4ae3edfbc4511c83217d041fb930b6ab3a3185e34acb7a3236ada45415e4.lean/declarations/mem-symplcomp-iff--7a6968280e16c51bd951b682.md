# mem_symplComp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd83e4a7-5e84-cb98-74bd-d78fb1a4be88",
  "kind": "lemma",
  "lexical_name": "mem_symplComp_iff",
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
  "slug": "mem-symplcomp-iff--7a6968280e16c51bd951b682",
  "source": {
    "blob": "823fac27ad31bef7331029de472c3529f5a88b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant705b4ae3edfbc4511c83217d041fb930b6ab3a3185e34acb7a3236ada45415e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a6968280e16c51bd951b6825419cc0b2fd8e02298632967c29847e1a8d63a83",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant705b4ae3edfbc4511c83217d041fb930b6ab3a3185e34acb7a3236ada45415e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd83e4a7-5e84-cb98-74bd-d78fb1a4be88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_symplComp_iff {x : H} {S : ClosedSubmodule ℝ H} :
    x ∈ S.symplComp ↔ ∀ y ∈ S, ⟪y, x⟫.im = 0 := by
  simp only [mem_orthogonal, mem_mapEquiv_iff, scalarSMulCLE_symm_apply, Units.smul_def,
    Units.val_inv_eq_inv_val, val_UnitI, inv_I, neg_smul]
  constructor
  · intro h y hy
    have hiy := h (I • y)
    simp only [← smul_assoc, smul_eq_mul, I_mul_I, neg_smul, one_smul, neg_neg] at hiy
    simpa [inner_real_eq_re_inner] using! hiy hy
  · intro h _ hy
    have hiy := h _ hy
    simpa [inner_smul_left] using! hiy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/StandardSubspace/Variant705b4ae3edfbc4511c83217d041fb930b6ab3a3185e34acb7a3236ada45415e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant705b4ae3edfbc4511c83217d041fb930b6ab3a3185e34acb7a3236ada45415e4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `823fac27ad31bef7331029de472c3529f5a88b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
