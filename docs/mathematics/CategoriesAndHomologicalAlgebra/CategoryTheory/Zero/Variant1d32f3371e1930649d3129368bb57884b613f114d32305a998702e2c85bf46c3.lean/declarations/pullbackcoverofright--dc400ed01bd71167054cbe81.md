# pullbackCoverOfRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56c15cdd7c8ad8bcb92228d9858ae3b6c706de7ebeddf72b8dc6ae0bb169defe",
  "kind": "def",
  "lexical_name": "pullbackCoverOfRight",
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
  "slug": "pullbackcoverofright--dc400ed01bd71167054cbe81",
  "source": {
    "blob": "cd9c26e21a5063af78a6c3abe6ee69a13dd2444b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 998,
    "line": 987,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc400ed01bd71167054cbe811436acaca3bfb38625362413abb0b1d4fcdc468f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56c15cdd7c8ad8bcb92228d9858ae3b6c706de7ebeddf72b8dc6ae0bb169defe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pullbackCoverOfRight {Y : C} (E : J.ZeroHypercover Y) {X Z : C}
    (f : X ⟶ Z) (g : Y ⟶ Z) [HasPullback f g] [∀ i, HasPullback (E.f i) (pullback.snd f g)] :
    J.ZeroHypercover (pullback f g) where
  __ := E.toPreZeroHypercover.pullbackCoverOfRight f g
  mem₀ := (E.pullback₂ (pullback.snd f g)).presieve₀_mem_of_iso
    (E.pullbackCoverOfRightIsoPullback₂ _ _).symm

end ZeroHypercover

end Precoverage

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant1d32f3371e1930649d3129368bb57884b613f114d32305a998702e2c85bf46c3.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c26e21a5063af78a6c3abe6ee69a13dd2444b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
