# thetaTail_integrable

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
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bcc1bc6-7f7d-60ec-84b4-4e57ddcb1f92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0229eb3d-2ea5-b1dc-50f4-803fa50c8c00",
  "kind": "theorem",
  "lexical_name": "thetaTail_integrable",
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
  "slug": "thetatail-integrable--8c22859bdecf3e585d4b591b",
  "source": {
    "blob": "85acd9d7614dc4e41554850f09947393bc166351",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c22859bdecf3e585d4b591b14adaa754b30ea9a61d6ec37fbbc6b91e88887c4",
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

Occurrence: `result:0229eb3d-2ea5-b1dc-50f4-803fa50c8c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_integrable (q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) (Ici t) := by
  have hmajor : IntegrableOn (fun u : ℝ => thetaPhiDecayConstant * Real.exp (-3 * u))
      (Ici t) :=
    ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
      (integrableOn_exp_mul_Ioi (a := -3) (by norm_num) t)).const_mul _
  apply hmajor.mono'
  · exact ((continuous_thetaPhi.mul ((continuous_id.sub continuous_const).pow q)).div_const
      (q.factorial : ℝ)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rw [Real.norm_of_nonneg (thetaTail_integrand_nonnegative q ht hu)]
    exact thetaTail_integrand_le q ht hu

/-- Strict positivity uses actual integrability and a positive-measure interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85acd9d7614dc4e41554850f09947393bc166351` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
