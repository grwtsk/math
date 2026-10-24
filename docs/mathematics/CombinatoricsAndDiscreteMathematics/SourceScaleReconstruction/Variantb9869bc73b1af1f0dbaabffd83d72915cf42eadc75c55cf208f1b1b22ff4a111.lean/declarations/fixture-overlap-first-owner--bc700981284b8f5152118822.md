# fixture_overlap_first_owner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:433e2026-1975-9f2f-ff0e-5eb35d3ff5e5",
  "kind": "theorem",
  "lexical_name": "fixture_overlap_first_owner",
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
  "slug": "fixture-overlap-first-owner--bc700981284b8f5152118822",
  "source": {
    "blob": "b3065042fccabc35fe0126cea2d54bfe6420d098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variantb9869bc73b1af1f0dbaabffd83d72915cf42eadc75c55cf208f1b1b22ff4a111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc700981284b8f5152118822aa6255c071735e4d9d357fc9bd5474bbf8cfe588",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variantb9869bc73b1af1f0dbaabffd83d72915cf42eadc75c55cf208f1b1b22ff4a111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:433e2026-1975-9f2f-ff0e-5eb35d3ff5e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_overlap_first_owner :
    smallScaleEquiv scaleTwo ∈
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 0 ∧
    smallScaleEquiv scaleTwo ∉
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 1 := by
  have hx : scaleTwo ∈ ownedPiece fixtureInventory fixtureBlocks 0 := by
    simp [mem_ownedPiece, fixtureInventory, fixtureBlocks]
  have ht : smallScaleEquiv scaleTwo ∈
      ownedPiece (chartInventory fixtureInventory) (chartBlocks fixtureBlocks) 0 := by
    rw [← chart_owned]
    exact Finset.mem_image.mpr ⟨scaleTwo, hx, rfl⟩
  refine ⟨ht, ?_⟩
  intro h1
  exact (Finset.disjoint_left.mp (chart_owned_disjoint fixtureInventory fixtureBlocks 0 1
    (by decide))) ht h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variantb9869bc73b1af1f0dbaabffd83d72915cf42eadc75c55cf208f1b1b22ff4a111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceScaleReconstruction/Variantb9869bc73b1af1f0dbaabffd83d72915cf42eadc75c55cf208f1b1b22ff4a111.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3065042fccabc35fe0126cea2d54bfe6420d098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
