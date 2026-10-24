# wellFounded_characterisations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2463d287-f2ea-0c56-2342-2bc69df2b876",
  "kind": "theorem",
  "lexical_name": "wellFounded_characterisations",
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
  "slug": "wellfounded-characterisations--0ac143adece0f8d141e5299b",
  "source": {
    "blob": "ef3b23833eaa1112fddcbe349c48444a3eeeb76d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac143adece0f8d141e5299b67618c3a811883308b58276b0e1740265bcc7099",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2463d287-f2ea-0c56-2342-2bc69df2b876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wellFounded_characterisations : List.TFAE
    [WellFounded (( · > · ) : α → α → Prop),
      IsSupFiniteCompact α, IsSupClosedCompact α, ∀ k : α, IsCompactElement k] := by
  tfae_have 1 → 2
  · exact WellFounded.isSupFiniteCompact α
  tfae_have 2 → 3
  · exact IsSupFiniteCompact.isSupClosedCompact α
  tfae_have 3 → 1
  · exact IsSupClosedCompact.wellFounded α
  tfae_have 2 ↔ 4
  · exact isSupFiniteCompact_iff_all_elements_compact α
  tfae_finish
#align complete_lattice.well_founded_characterisations CompleteLattice.wellFounded_characterisations

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompactlyGenerated/Variant040d9cd67cf1e67b60b454ae24c66f39d894352c50ceebedeb19bb471d8153d3.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3b23833eaa1112fddcbe349c48444a3eeeb76d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
