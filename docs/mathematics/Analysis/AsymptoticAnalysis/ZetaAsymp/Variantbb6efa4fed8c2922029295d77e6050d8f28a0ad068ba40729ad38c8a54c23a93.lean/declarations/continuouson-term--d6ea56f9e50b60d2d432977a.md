# continuousOn_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ff24a8a04888a98f63f34e0acca92e27e8843b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c99ccba4-8483-781e-3b0b-a02956c5fea5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1a1a080-0b92-7d1b-724d-98ad2b03d17a",
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
  "slug": "continuouson-term--d6ea56f9e50b60d2d432977a",
  "source": {
    "blob": "7ff24a8a04888a98f63f34e0acca92e27e8843b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 274,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6ea56f9e50b60d2d432977a55d17589f980b0bd052737b93dc5909a203e140b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1a1a080-0b92-7d1b-724d-98ad2b03d17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–297.

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
    have : 1 < x := lt_of_le_of_lt (by simp) hx.1
    rw [norm_of_nonneg (div_nonneg (sub_nonneg.mpr hx.1.le) (by positivity)), Nat.cast_add_one]
    gcongr
    · exact_mod_cast sub_nonneg.mpr hx.1.le
    · exact this.le
    · linarith
  · rw [← IntegrableOn, ← intervalIntegrable_iff_integrableOn_Ioc_of_le (by linarith)]
    exact_mod_cast term_welldef (by lia : 0 < (n + 1)) zero_lt_one
  · rw [ae_restrict_iff' measurableSet_Ioc]
    filter_upwards with x hx
    refine continuousOn_of_forall_continuousAt (fun s (hs : 1 ≤ s) ↦ continuousAt_const.div ?_ ?_)
    · exact continuousAt_const.rpow (continuousAt_id.add continuousAt_const) (Or.inr (by linarith))
    · exact (rpow_pos_of_pos ((Nat.cast_pos.mpr (by simp)).trans hx.1) _).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantbb6efa4fed8c2922029295d77e6050d8f28a0ad068ba40729ad38c8a54c23a93.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ff24a8a04888a98f63f34e0acca92e27e8843b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
