# thetaTailGap_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90f4c2d9-fe3f-9eb6-f673-fefc5079c308",
  "kind": "theorem",
  "lexical_name": "thetaTailGap_nonnegative",
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
  "slug": "thetatailgap-nonnegative--d3919331aec87fcee37f785a",
  "source": {
    "blob": "bb5e6bc5b0f292762699482a9b88e32e218c9362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3919331aec87fcee37f785ab6ffaf7e02055929fa5110948b78c95164b8de06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f4c2d9-fe3f-9eb6-f673-fefc5079c308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailGap_nonnegative {r s : ℕ} (hrs : r ≤ s) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaTailGap r s t := by
  rcases hrs.eq_or_lt with rfl | hrs
  · simp [thetaTailGap, mul_comm]
  have h := (thetaTail_div_antitone hrs).derivWithin_nonpos (x := t)
  rw [(hasDerivAt_thetaTail_normalized r s ht).hasDerivWithinAt.derivWithin
    (uniqueDiffOn_Ici 0 t ht)] at h
  have hn := (div_le_iff₀ (sq_pos_of_pos (thetaTail_positive r ht))).mp h
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5e6bc5b0f292762699482a9b88e32e218c9362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
