# weight_deriv_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8aaf5abc89c94ff5279435a53940e39467d83ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f014246-cebd-c6ed-e0dc-e822fb8edc3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc95c387-8de8-7556-df77-bc286b8c3ffa",
  "kind": "theorem",
  "lexical_name": "weight_deriv_integrable",
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
  "slug": "weight-deriv-integrable--a31ed79cf16f25154bba9ccc",
  "source": {
    "blob": "a8aaf5abc89c94ff5279435a53940e39467d83ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a31ed79cf16f25154bba9ccc1f966947bceaa7818df3f758696a9de9a6308f9c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc95c387-8de8-7556-df77-bc286b8c3ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_deriv_integrable (X : ℕ) (z : ℂ) :
    IntegrableOn (deriv (powerWeight z)) (Set.Icc (1 : ℝ) X) := by
  have hl : ContinuousOn (fun x : ℝ => (Real.log x : ℂ)) (Set.Icc (1 : ℝ) X) :=
    Complex.continuous_ofReal.comp_continuousOn (Real.continuousOn_log.mono
      (fun x hx => ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  have hc : ContinuousOn (fun x : ℝ => (1 / 2 - z) * powerWeight z x / (x : ℂ))
      (Set.Icc (1 : ℝ) X) := by
    unfold powerWeight
    exact (continuousOn_const.mul (Complex.continuous_exp.comp_continuousOn
      (continuousOn_const.mul hl))).div Complex.continuous_ofReal.continuousOn
      (fun x hx => Complex.ofReal_ne_zero.mpr
        (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))
  apply hc.integrableOn_Icc.congr_fun
  · intro x hx
    exact (powerWeight_deriv z x (lt_of_lt_of_le zero_lt_one hx.1)).symm
  · exact measurableSet_Icc

/-- The actual reciprocal-prefix product is genuinely integrable on the full finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltAudit/Variant73f3e64ff49f495d9a66bc25fcc50b34e64bc6b5a6cafb591168de2d20efc1c6.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8aaf5abc89c94ff5279435a53940e39467d83ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
