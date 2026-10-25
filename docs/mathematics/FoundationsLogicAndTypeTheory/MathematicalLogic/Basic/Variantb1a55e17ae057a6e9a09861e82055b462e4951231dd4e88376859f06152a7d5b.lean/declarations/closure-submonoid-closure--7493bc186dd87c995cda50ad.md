# closure_submonoid_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97919d3-8a76-0791-4069-cb27cbcf7d5e",
  "kind": "theorem",
  "lexical_name": "closure_submonoid_closure",
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
  "slug": "closure-submonoid-closure--7493bc186dd87c995cda50ad",
  "source": {
    "blob": "179f29708cd93fbd88017c33185f41dae100f143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 898,
    "line": 890,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7493bc186dd87c995cda50ad3c622380445b9cdaf8639b115fc036356c7a826d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97919d3-8a76-0791-4069-cb27cbcf7d5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_submonoid_closure (s : Set R) : closure ↑(Submonoid.closure s) = closure s :=
  le_antisymm
    (closure_le.mpr fun _ hy =>
      (Submonoid.mem_closure.mp hy) (closure s).toSubmonoid subset_closure)
    (closure_mono Submonoid.subset_closure)
#align subsemiring.closure_submonoid_closure Subsemiring.closure_submonoid_closure

/-- The elements of the subsemiring closure of `M` are exactly the elements of the additive closure
of a multiplicative submonoid `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb1a55e17ae057a6e9a09861e82055b462e4951231dd4e88376859f06152a7d5b.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179f29708cd93fbd88017c33185f41dae100f143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
