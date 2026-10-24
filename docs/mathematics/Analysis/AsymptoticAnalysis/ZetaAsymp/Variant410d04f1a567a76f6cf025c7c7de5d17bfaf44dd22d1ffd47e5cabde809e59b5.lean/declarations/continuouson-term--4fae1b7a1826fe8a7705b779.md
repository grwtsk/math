# continuousOn_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68e6285f-3cb1-7951-2d8b-52e746fdb515",
  "kind": "lemma",
  "lexical_name": "continuousOn_term",
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
  "slug": "continuouson-term--4fae1b7a1826fe8a7705b779",
  "source": {
    "blob": "3b456c48485cd8f735dcbcc8ff1141530d916945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 256,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fae1b7a1826fe8a7705b779bafac368a6f3bdf2771580b523dd88a2bffce55a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68e6285f-3cb1-7951-2d8b-52e746fdb515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_term (n : ℕ) :
    ContinuousOn (fun x ↦ term (n + 1) x) (Ici 1) := by
  -- TODO: can this be shortened using the lemma
  -- `continuous_parametric_intervalIntegral_of_continuous'` from https://github.com/leanprover-community/mathlib4/pull/11185?
  simp only [term, intervalIntegral.integral_of_le (by linarith : (↑(n + 1) : ℝ) ≤ ↑(n + 1) + 1)]
  apply continuousOn_of_dominated (bound := fun x ↦ (x - ↑(n + 1)) / x ^ (2 : ℝ))
  · exact fun s hs ↦ (term_welldef (by simp) (zero_lt_one.trans_le hs)).1.1
  · intro s (hs : 1 ≤ s)
    rw [ae_restrict_iff' measurableSet_Ioc]
    filter_upwards with x hx
    have : 0 < x := lt_trans (by positivity) hx.1
    rw [norm_of_nonneg (div_nonneg (sub_nonneg.mpr hx.1.le) (by positivity)), Nat.cast_add_one]
    apply div_le_div_of_nonneg_left
    · exact_mod_cast sub_nonneg.mpr hx.1.le
    · positivity
    · exact rpow_le_rpow_of_exponent_le (le_trans (by simp) hx.1.le) (by linarith)
  · rw [← IntegrableOn, ← intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith)]
    exact_mod_cast term_welldef (by omega : 0 < (n + 1)) zero_lt_one
  · rw [ae_restrict_iff' measurableSet_Ioc]
    filter_upwards with x hx
    refine continuousOn_of_forall_continuousAt (fun s (hs : 1 ≤ s) ↦ continuousAt_const.div ?_ ?_)
    · exact continuousAt_const.rpow (continuousAt_id.add continuousAt_const) (Or.inr (by linarith))
    · exact (rpow_pos_of_pos ((Nat.cast_pos.mpr (by simp)).trans hx.1) _).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b456c48485cd8f735dcbcc8ff1141530d916945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
