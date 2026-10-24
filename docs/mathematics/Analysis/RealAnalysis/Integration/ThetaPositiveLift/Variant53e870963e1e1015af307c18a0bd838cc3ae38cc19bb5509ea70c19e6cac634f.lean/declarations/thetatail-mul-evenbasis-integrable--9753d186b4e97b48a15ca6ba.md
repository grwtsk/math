# thetaTail_mul_evenBasis_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85acd9d7614dc4e41554850f09947393bc166351",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c1f6c70-d9b2-33d0-bd81-a643b930342b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:863960bc-4cfe-c48d-ef8b-47bc183ae8ea",
  "kind": "theorem",
  "lexical_name": "thetaTail_mul_evenBasis_integrable",
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
  "slug": "thetatail-mul-evenbasis-integrable--9753d186b4e97b48a15ca6ba",
  "source": {
    "blob": "85acd9d7614dc4e41554850f09947393bc166351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9753d186b4e97b48a15ca6ba413467ad3cb250fa98914ab90b1c5da1e2c1936c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:863960bc-4cfe-c48d-ef8b-47bc183ae8ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_mul_evenBasis_integrable (q n : ℕ) :
    IntegrableOn (fun t => thetaTail q t * evenBasis n t) (Ici (0 : ℝ)) := by
  have hmajor : IntegrableOn (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-t))
      (Ici 0) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
        (integrableOn_exp_neg_Ioi 0)).const_mul _
  apply hmajor.mono'
  · apply ((stronglyMeasurable_thetaTail q).mul ?_).aestronglyMeasurable
    exact (by unfold evenBasis; fun_prop : Continuous (evenBasis n)).stronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
    rw [Real.norm_of_nonneg (mul_nonneg (thetaTail_nonnegative q ht)
      (evenBasis_nonnegative n t))]
    exact thetaTail_mul_evenBasis_le q n ht

/-- Every even-basis boundary product vanishes at positive infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85acd9d7614dc4e41554850f09947393bc166351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
