# UniqueMDiffOn.uniqueDiffOn_inter_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9795e92d-6ad9-055a-96a3-3409a8cecedf",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffOn.uniqueDiffOn_inter_preimage",
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
  "slug": "uniquemdiffon-uniquediffon-inter-preimage--27c27bbb4a1dd3eebf14bacf",
  "source": {
    "blob": "827c93a542c591624a46091f5995e475810fb6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant4fdbcc5ee187971db5c37ba7268d1aae9264dcdb1203fcab1a262211598180d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c27bbb4a1dd3eebf14bacfd85416870f1363fdcaab5ebdd3365f26e1607630",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant4fdbcc5ee187971db5c37ba7268d1aae9264dcdb1203fcab1a262211598180d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9795e92d-6ad9-055a-96a3-3409a8cecedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UniqueMDiffOn.uniqueDiffOn_inter_preimage (hs : UniqueMDiff[s]) (x : M) (y : M'')
    {f : M → M''} (hf : ContinuousOn f s) :
    UniqueDiffOn 𝕜
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' (s ∩ f ⁻¹' (extChartAt I' y).source)) :=
  haveI : UniqueMDiff[s ∩ f ⁻¹' (extChartAt I' y).source] := by
    intro z hz
    apply (hs z hz.1).inter'
    apply (hf z hz.1).preimage_mem_nhdsWithin
    exact (isOpen_extChartAt_source y).mem_nhds hz.2
  this.uniqueDiffOn_target_inter _

end

open Bundle

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F] {Z : M → Type*}
  [TopologicalSpace (TotalSpace F Z)] [∀ b, TopologicalSpace (Z b)] [FiberBundle F Z]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant4fdbcc5ee187971db5c37ba7268d1aae9264dcdb1203fcab1a262211598180d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant4fdbcc5ee187971db5c37ba7268d1aae9264dcdb1203fcab1a262211598180d0.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827c93a542c591624a46091f5995e475810fb6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
