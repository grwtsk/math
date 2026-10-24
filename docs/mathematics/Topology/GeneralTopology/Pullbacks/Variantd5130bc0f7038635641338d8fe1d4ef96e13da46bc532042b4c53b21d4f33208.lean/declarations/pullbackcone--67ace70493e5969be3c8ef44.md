# pullbackCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76c9c48306ee26224314100f01da82f0fdfcbf8e26cfb7f74cc08f07a3b9cff8",
  "kind": "def",
  "lexical_name": "pullbackCone",
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
  "slug": "pullbackcone--67ace70493e5969be3c8ef44",
  "source": {
    "blob": "64fdbcb58c63fc72ed92220e855d28a941b91815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67ace70493e5969be3c8ef44d13033438cc191dd595818c138b20e5ce1ac040a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76c9c48306ee26224314100f01da82f0fdfcbf8e26cfb7f74cc08f07a3b9cff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackCone (f : X ⟶ Z) (g : Y ⟶ Z) : PullbackCone f g :=
  PullbackCone.mk (pullbackFst f g) (pullbackSnd f g)
    (by
      dsimp [pullbackFst, pullbackSnd, Function.comp]
      ext ⟨x, h⟩
      rw [comp_apply, ContinuousMap.coe_mk, comp_apply, ContinuousMap.coe_mk]
      exact h)
#align Top.pullback_cone TopCat.pullbackCone

/-- The constructed cone is a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantd5130bc0f7038635641338d8fe1d4ef96e13da46bc532042b4c53b21d4f33208.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fdbcb58c63fc72ed92220e855d28a941b91815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
