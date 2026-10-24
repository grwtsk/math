# all_zero_without_close_is_nulliant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2236e0ff-ca80-662b-bc50-48fe4944c4c4",
  "kind": "theorem",
  "lexical_name": "all_zero_without_close_is_nulliant",
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
  "slug": "all-zero-without-close-is-nulliant--c880da868c230ed0d5907692",
  "source": {
    "blob": "4e9ab30619171f615c16819c7ce58c3bc16159a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c880da868c230ed0d590769261ccb8dc569c6695691ac260edf57f5ad1b84b2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2236e0ff-ca80-662b-bc50-48fe4944c4c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_zero_without_close_is_nulliant (frame : ProjectionFrame) :
    AllZero frame -> ¬ ExplicitNullification frame -> Nulliant frame := by
  intro hZero hNoClose
  unfold ExplicitNullification at hNoClose
  unfold Nulliant
  cases hExplicit : frame.explicitNullification
  · exact ⟨hZero.2, rfl, hZero.1⟩
  · exfalso
    exact hNoClose hExplicit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e9ab30619171f615c16819c7ce58c3bc16159a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
