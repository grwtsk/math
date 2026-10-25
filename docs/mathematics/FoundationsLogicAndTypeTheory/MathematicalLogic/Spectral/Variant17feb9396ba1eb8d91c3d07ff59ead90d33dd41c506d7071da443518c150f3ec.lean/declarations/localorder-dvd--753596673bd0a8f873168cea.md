# localOrder_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bd48510-1427-2237-1367-b65e3fb81229",
  "kind": "theorem",
  "lexical_name": "localOrder_dvd",
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
  "slug": "localorder-dvd--753596673bd0a8f873168cea",
  "source": {
    "blob": "e12037e892f97df49e90097bdceb03f6d869eeda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753596673bd0a8f873168cea4de9ceaec732f2f75fe94c3e9deea5ba741c598c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bd48510-1427-2237-1367-b65e3fb81229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localOrder_dvd
    (F : LocalPermutationFactor Fine Coarse) :
    Coarse.localOrder ∣ Fine.localOrder := by
  apply orderOf_dvd_iff_pow_eq_one.mpr
  ext coarse
  obtain ⟨fine, rfl⟩ := F.project_surjective coarse
  rw [← F.project_pow]
  simp [localOrder]

/-- The canonical reduction of a fine phase to a coarser phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectral/Variant17feb9396ba1eb8d91c3d07ff59ead90d33dd41c506d7071da443518c150f3ec.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e12037e892f97df49e90097bdceb03f6d869eeda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
