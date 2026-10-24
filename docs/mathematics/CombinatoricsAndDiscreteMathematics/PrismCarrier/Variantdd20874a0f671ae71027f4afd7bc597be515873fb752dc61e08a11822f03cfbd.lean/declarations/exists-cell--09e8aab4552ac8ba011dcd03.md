# exists_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52aa749c-9e54-274a-ea79-8a95266ffaee",
  "kind": "theorem",
  "lexical_name": "exists_cell",
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
  "slug": "exists-cell--09e8aab4552ac8ba011dcd03",
  "source": {
    "blob": "14691a283f95e33b7dc03acf3d0a99fc62996f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09e8aab4552ac8ba011dcd0314929aeff0ddc405d5a520aef1b08b2a6345bb39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52aa749c-9e54-274a-ea79-8a95266ffaee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_cell
    (M : GeometricPrismCarrier V)
    (p : M.CarrierPoint) :
    ∃ c ∈ M.cells, p.1 ∈ M.cellCarrier c := by
  have hp : p.1 ∈ M.carrier := p.2
  rw [M.carrier_covered] at hp
  simp only [Set.mem_iUnion] at hp
  rcases hp with ⟨c, hc, hp⟩
  exact ⟨c, hc, hp⟩

end GeometricPrismCarrier

end DAF.Geometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14691a283f95e33b7dc03acf3d0a99fc62996f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
