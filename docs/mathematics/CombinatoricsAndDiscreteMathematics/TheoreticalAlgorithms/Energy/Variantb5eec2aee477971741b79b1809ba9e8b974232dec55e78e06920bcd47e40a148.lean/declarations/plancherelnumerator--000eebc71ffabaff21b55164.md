# plancherelNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c541bc6-e8fc-834c-83a7-e330cfdaad6c",
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
  "slug": "plancherelnumerator--000eebc71ffabaff21b55164",
  "source": {
    "blob": "02acc31bfcf9bf020226f73019cde79e51a61121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000eebc71ffabaff21b551648132e084bca36abea2a6fd66d87749d8e487af0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c541bc6-e8fc-834c-83a7-e330cfdaad6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–234.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variantb5eec2aee477971741b79b1809ba9e8b974232dec55e78e06920bcd47e40a148.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02acc31bfcf9bf020226f73019cde79e51a61121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
