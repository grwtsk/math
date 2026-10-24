# gap_width_le_abs_coupling_of_count_limits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67644ebf-a2c9-3335-e336-e65a80cdd837",
  "kind": "theorem",
  "lexical_name": "gap_width_le_abs_coupling_of_count_limits",
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
  "slug": "gap-width-le-abs-coupling-of-count-limits--baf7da75034938cef531fad7",
  "source": {
    "blob": "ba2acf4237b1f2c5cf7146a727d841a42dcdb030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 150,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf7da75034938cef531fad7de8288a5619452700f429dd33ae4c0191f4d5257",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67644ebf-a2c9-3335-e336-e65a80cdd837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gap_width_le_abs_coupling_of_count_limits
    (α V ξ : ℝ) (origin : ℤ) {S : Set ℝ} {free ids : ℝ → ℝ}
    {label freeEnergy a b : ℝ}
    (hfree : ∀ E, Tendsto (fun N => freeNormalizedCount N E) atTop (nhds (free E)))
    (hids : ∀ E, Tendsto (fun N => sturmianNormalizedCount N α V ξ origin E)
      atTop (nhds (ids E)))
    (hleft : ∀ x, free x ≤ label → x ≤ freeEnergy)
    (hright : ∀ x, label ≤ free x → freeEnergy ≤ x)
    (hgap : GRWTSK.Spectral.GapTransport.OpenLabelGap S ids label a b) :
    0 < b-a ∧ b-a ≤ |V| := by
  have h := GRWTSK.Spectral.GapTransport.gap_width_le_of_ids_comparison
    (ids_comparison_of_count_limits α V ξ origin free ids hfree hids) hleft hright hgap
  simpa only [comparison_offset_width] using h

end GRWTSK.Spectral.SturmianFiniteVolume
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2acf4237b1f2c5cf7146a727d841a42dcdb030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
