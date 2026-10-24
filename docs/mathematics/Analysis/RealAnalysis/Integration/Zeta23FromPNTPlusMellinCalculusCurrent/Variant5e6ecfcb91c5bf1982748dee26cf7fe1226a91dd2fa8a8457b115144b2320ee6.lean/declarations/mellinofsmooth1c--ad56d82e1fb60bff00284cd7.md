# MellinOfSmooth1c

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9252d363-173d-c2b9-5f01-9ea4f1aa17be",
  "kind": "lemma",
  "lexical_name": "MellinOfSmooth1c",
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
  "slug": "mellinofsmooth1c--ad56d82e1fb60bff00284cd7",
  "source": {
    "blob": "fe0aad58186aa1be22aa6f6c63491354d123fa9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 926,
    "line": 914,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad56d82e1fb60bff00284cd7b620e71eeb8fa4da7779d15941d2c6436b49e995",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9252d363-173d-c2b9-5f01-9ea4f1aa17be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–926.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MellinOfSmooth1c {ν : ℝ → ℝ} (diffν : ContDiff ℝ 1 ν)
    (suppν : ν.support ⊆ Icc (1 / 2) 2)
    (mass_one : ∫ x in Ioi 0, ν x / x = 1) :
    (fun ε ↦ 𝓜 (fun x ↦ (Smooth1 ν ε x : ℂ)) 1 - 1) =O[𝓝[>]0] id := by
  have h := MellinOfDeltaSpikeAt1_asymp diffν suppν mass_one
  rw [Asymptotics.isBigO_iff] at h ⊢
  obtain ⟨c, hc⟩ := h
  use c
  filter_upwards [hc, Ioo_mem_nhdsGT (by linarith : (0 : ℝ) < 1)] with ε hε hε'
  rw [MellinOfSmooth1a diffν suppν hε'.1 (s := 1) (by norm_num)]
  simp only [inv_one, mul_one, one_mul, id_eq, Real.norm_eq_abs]
  exact hε

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Zeta23FromPNTPlusMellinCalculusCurrent/Variant5e6ecfcb91c5bf1982748dee26cf7fe1226a91dd2fa8a8457b115144b2320ee6.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0aad58186aa1be22aa6f6c63491354d123fa9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
