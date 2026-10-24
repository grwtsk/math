# walsh_projection_permutation_equivariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcb4d0a2-9dec-c3a2-be8b-43bd40bac4fe",
  "kind": "theorem",
  "lexical_name": "walsh_projection_permutation_equivariant",
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
  "slug": "walsh-projection-permutation-equivariant--e9585f6d96215de2daf5734c",
  "source": {
    "blob": "29f5e1505c6a0370c32d09d5404f8985e19f3f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 586,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9585f6d96215de2daf5734c334a757d24bb039a601c9c38b66fb82daf3f4009",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcb4d0a2-9dec-c3a2-be8b-43bd40bac4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem walsh_projection_permutation_equivariant {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator (permuteFunction π f) S =
      WalshFourier.projectionNumerator f
        (permuteFrequency (CoordinatePermutation.symm π) S) := by
  show
    Cube.ListTools.sumInt
      ((Hypercube.vertices n).map
        (fun x =>
          f (permutePoint (CoordinatePermutation.symm π) x) *
            WalshFourier.character S x)) =
      Cube.ListTools.sumInt
        ((Hypercube.vertices n).map
          (fun y =>
            f y *
              WalshFourier.character
                (permuteFrequency (CoordinatePermutation.symm π) S) y))
  rw [← sumInt_map_vertices_reindex
    (permutePoint π) (permutePoint (CoordinatePermutation.symm π))
    (permutePoint_symm_permutePoint π)
    (permutePoint_permutePoint_symm π)
    (fun x =>
      f (permutePoint (CoordinatePermutation.symm π) x) *
        WalshFourier.character S x)]
  apply Cube.ListTools.sumInt_map_congr
  intro y
  rw [permutePoint_symm_permutePoint π y, character_permutePoint π S y]

/-! ## A3. Finite coordinate groups and orbits -/

/-- A finite list of coordinate permutations with closure certificates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant6738fcd0e5e58cd1a3d7065cbbf4f64875cf7afa70ba87b2d4805b8ff14956a3.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f5e1505c6a0370c32d09d5404f8985e19f3f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
