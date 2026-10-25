# extensional_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2599f386-741a-ac7e-e828-1f28f92a18b3",
  "kind": "theorem",
  "lexical_name": "extensional_formula",
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
  "slug": "extensional-formula--6e9cf31a789d6a7cd9ba5c7a",
  "source": {
    "blob": "bf3b987541ba266df9ef6b259f9b72b03cd16180",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1535,
    "line": 1527,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9cf31a789d6a7cd9ba5c7afd7155a1ea64eae2a907a05ab288ff70807b3d9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2599f386-741a-ac7e-e828-1f28f92a18b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1527–1535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensional_formula {i : Expr S}
    (hi : HasType P Γ i (R.channel.predicateType R.probe.carrier)) (mi : WellModed γ i .data) :
    L.Formula (R.extensional L.code KY.code KP.code i) := by
  obtain ⟨s,hs⟩ := KY.triple.domain.1
  exact L.all_formula_family KY (H.channel.logical_sorted H.probe.carrier_sorted)
    (H.channel.logical_mode H.probe.carrier_mode) (H.channel.logical_sorted
      H.probe.carrier_sorted s hs)
    (H.extBody_family KY KP hi mi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relational/Variant33c28ac9286714fb33fbd9fe0c74b2f35c49650b91ca385add6fcf6e885cb4e8.lean#L1527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf3b987541ba266df9ef6b259f9b72b03cd16180` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
