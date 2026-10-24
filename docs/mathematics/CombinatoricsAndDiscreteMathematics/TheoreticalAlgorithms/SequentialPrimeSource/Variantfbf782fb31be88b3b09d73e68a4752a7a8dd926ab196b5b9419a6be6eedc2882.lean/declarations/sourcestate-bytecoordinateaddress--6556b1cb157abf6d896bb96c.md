# sourceState_byteCoordinateAddress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8dec9c9836a1f0e958d3e5506d3d7ca2ca1ff35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efbf8db6-42b9-139f-f164-e92e2bcb8a57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebd52cf1-7eab-8da1-a64d-93ac843f2994",
  "kind": "theorem",
  "lexical_name": "sourceState_byteCoordinateAddress",
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
  "slug": "sourcestate-bytecoordinateaddress--6556b1cb157abf6d896bb96c",
  "source": {
    "blob": "b8dec9c9836a1f0e958d3e5506d3d7ca2ca1ff35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 348,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6556b1cb157abf6d896bb96c8c14cc3538075f3984f962038dde17b047a183eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd52cf1-7eab-8da1-a64d-93ac843f2994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceState_byteCoordinateAddress
    (source : CanonicalSource)
    (occurrence : Nat)
    (b₂ b₁ b₀ : Fin 2)
    (byteBound : occurrence < source.utf8.size) :
    sourceState source (byteCoordinateAddress occurrence b₂ b₁ b₀) =
      byteBitMSB source.utf8[occurrence]
        ⟨byteCoordinateIndex b₂ b₁ b₀,
          byteCoordinateIndex_lt b₂ b₁ b₀⟩ := by
  classical
  have coordinateBound :
      4 * b₂.val + 2 * b₁.val + b₀.val < 8 := by
    simpa [byteCoordinateIndex] using byteCoordinateIndex_lt b₂ b₁ b₀
  unfold sourceState byteCoordinateAddress
  dsimp only
  rw [dif_pos rfl]
  simp [byteCoordinate_mixedRadix, byteCoordinateIndex, coordinateBound, byteBound]

/-- Expanded bit-weight form of the documented byte-placement law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantfbf782fb31be88b3b09d73e68a4752a7a8dd926ab196b5b9419a6be6eedc2882.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8dec9c9836a1f0e958d3e5506d3d7ca2ca1ff35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
