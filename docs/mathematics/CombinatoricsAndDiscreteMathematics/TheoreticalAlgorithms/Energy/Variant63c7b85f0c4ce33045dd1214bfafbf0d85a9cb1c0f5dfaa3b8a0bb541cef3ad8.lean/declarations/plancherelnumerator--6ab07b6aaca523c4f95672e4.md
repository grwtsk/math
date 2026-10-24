# plancherelNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b96b768aa7424761935dc84c7316c961b9d4c60c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63c7b85f0c4ce33045dd1214bfafbf0d85a9cb1c0f5dfaa3b8a0bb541cef3ad8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68e49415-7d68-bbbb-25f1-aee0268f8017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19b5a3e9-63c7-d48a-23ce-a078649bd34a",
  "kind": "theorem",
  "lexical_name": "plancherelNumerator",
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
  "slug": "plancherelnumerator--6ab07b6aaca523c4f95672e4",
  "source": {
    "blob": "b96b768aa7424761935dc84c7316c961b9d4c60c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant63c7b85f0c4ce33045dd1214bfafbf0d85a9cb1c0f5dfaa3b8a0bb541cef3ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab07b6aaca523c4f95672e45cab28e924be30a163024da0da1bbd2273b11ad8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant63c7b85f0c4ce33045dd1214bfafbf0d85a9cb1c0f5dfaa3b8a0bb541cef3ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19b5a3e9-63c7-d48a-23ce-a078649bd34a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plancherelNumerator :
    ∀ {n : Nat}
      (f g : WalshFourier.Function n),
      PlancherelNumerator f g
  | 0, f, g => by
      unfold PlancherelNumerator spectralInnerProductNumerator
        projectionProductNumerator WalshFourier.projectionNumerator
        WalshFourier.innerProduct
      simp [Fourier.subsets, Hypercube.vertices,
        WalshFourier.characterFunction, WalshFourier.character,
        Fourier.character, ListTools.sumInt]
  | n + 1, f, g => by
      have ihSum := plancherelNumerator
        (sumSection f) (sumSection g)
      have ihDiff := plancherelNumerator
        (differenceSection f) (differenceSection g)
      unfold PlancherelNumerator spectralInnerProductNumerator at ihSum ihDiff ⊢
      unfold projectionProductNumerator
      simp only [Fourier.subsets, Hypercube.vertices, List.map_flatMap,
        List.map_cons, List.map_nil]
      rw [ListTools.sumInt_flatMap_pair]
      have hpair :
          ListTools.sumInt
            ((Hypercube.vertices n).map
              (fun S =>
                WalshFourier.projectionNumerator f (Hypercube.extend S false) *
                    WalshFourier.projectionNumerator g
                      (Hypercube.extend S false) +
                  WalshFourier.projectionNumerator f (Hypercube.extend S true) *
                    WalshFourier.projectionNumerator g
                      (Hypercube.extend S true))) =
            ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (sumSection f) S *
                      WalshFourier.projectionNumerator (sumSection g) S +
                    WalshFourier.projectionNumerator (differenceSection f) S *
                      WalshFourier.projectionNumerator (differenceSection g) S)) := by
        apply ListTools.sumInt_map_congr
        intro S
        simp
      rw [hpair, ListTools.sumInt_map_add]
      have hSum :
          ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (sumSection f) S *
                    WalshFourier.projectionNumerator (sumSection g) S)) =
            (2 ^ n : Nat) *
              WalshFourier.innerProduct (sumSection f) (sumSection g) := by
        simpa [projectionProductNumerator, Fourier.subsets] using ihSum
      have hDiff :
          ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (differenceSection f) S *
                    WalshFourier.projectionNumerator (differenceSection g) S)) =
            (2 ^ n : Nat) *
              WalshFourier.innerProduct
                (differenceSection f) (differenceSection g) := by
        simpa [projectionProductNumerator, Fourier.subsets] using ihDiff
      rw [hSum, hDiff]
      rw [← Int.mul_add]
      rw [innerProduct_sections]
      simp [Nat.pow_succ, Int.mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant63c7b85f0c4ce33045dd1214bfafbf0d85a9cb1c0f5dfaa3b8a0bb541cef3ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant63c7b85f0c4ce33045dd1214bfafbf0d85a9cb1c0f5dfaa3b8a0bb541cef3ad8.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b96b768aa7424761935dc84c7316c961b9d4c60c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
