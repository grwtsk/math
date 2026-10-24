# triangle_removal_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52c50e0879a40565b5fa404feace47e3130d7104",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e72d6164-215a-61d3-23b1-f83bcd940dc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15f9e7de-0c0a-178b-75b1-d1a5b09fbf90",
  "kind": "lemma",
  "lexical_name": "triangle_removal_aux",
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
  "slug": "triangle-removal-aux--dfa7defc7f8261c39b2731b2",
  "source": {
    "blob": "52c50e0879a40565b5fa404feace47e3130d7104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 68,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa7defc7f8261c39b2731b214e99164fc6e9738682ee3e74fcc4aa927581f3f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15f9e7de-0c0a-178b-75b1-d1a5b09fbf90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma triangle_removal_aux (hε : 0 < ε) (hP₁ : P.IsEquipartition)
    (hP₃ : #P.parts ≤ bound (ε / 8) ⌈4/ε⌉₊)
    (ht : t ∈ (G.regularityReduced P (ε/8) (ε/4)).cliqueFinset 3) :
    triangleRemovalBound ε * card α ^ 3 ≤ #(G.cliqueFinset 3) := by
  rw [mem_cliqueFinset_iff, is3Clique_iff] at ht
  obtain ⟨x, y, z, ⟨-, s, hX, Y, hY, xX, yY, nXY, uXY, dXY⟩,
                   ⟨-, X', hX', Z, hZ, xX', zZ, nXZ, uXZ, dXZ⟩,
                   ⟨-, Y', hY', Z', hZ', yY', zZ', nYZ, uYZ, dYZ⟩, rfl⟩ := ht
  cases P.disjoint.elim hX hX' (not_disjoint_iff.2 ⟨x, xX, xX'⟩)
  cases P.disjoint.elim hY hY' (not_disjoint_iff.2 ⟨y, yY, yY'⟩)
  cases P.disjoint.elim hZ hZ' (not_disjoint_iff.2 ⟨z, zZ, zZ'⟩)
  have dXY := P.disjoint hX hY nXY
  have dXZ := P.disjoint hX hZ nXZ
  have dYZ := P.disjoint hY hZ nYZ
  have that : 2 * (ε/8) = ε/4 := by ring
  have : 0 ≤ 1 - 2 * (ε / 8) := by
    have : ε / 4 ≤ 1 := ‹ε / 4 ≤ _›.trans (by exact mod_cast G.edgeDensity_le_one _ _); linarith
  calc
    _ ≤ (1 - ε/4) * (ε/(16 * bound (ε/8) ⌈4/ε⌉₊))^3 * card α ^ 3 := by
      gcongr; exact min_le_right _ _
    _ = (1 - 2 * (ε / 8)) * (ε / 8) ^ 3 * (card α / (2 * bound (ε / 8) ⌈4 / ε⌉₊)) *
          (card α / (2 * bound (ε / 8) ⌈4 / ε⌉₊)) * (card α / (2 * bound (ε / 8) ⌈4 / ε⌉₊)) := by
      ring
    _ ≤ (1 - 2 * (ε / 8)) * (ε / 8) ^ 3 * #s * #Y * #Z := by
      gcongr <;> exact card_bound hP₁ hP₃ ‹_›
    _ ≤ _ :=
      triangle_counting G (by rwa [that]) uXY dXY (by rwa [that]) uXZ dXZ (by rwa [that]) uYZ dYZ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant3207006bb28cbb3dd6b3c390f6c4b1c1ead207d574c03092b341f3fa943e1836.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c50e0879a40565b5fa404feace47e3130d7104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
