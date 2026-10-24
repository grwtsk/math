# shellPrefixMatrix_eq_sum_code

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b905eafb-e848-77f0-2643-3dadf6a5f52b",
  "kind": "theorem",
  "lexical_name": "shellPrefixMatrix_eq_sum_code",
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
  "slug": "shellprefixmatrix-eq-sum-code--3ba2690fd6422846663dc6a6",
  "source": {
    "blob": "e8ca1b1143fb8c5e71226c2db770e9b721ee383f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 385,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba2690fd6422846663dc6a6c8b133a41700f72043dec77e45df710a51ec14ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b905eafb-e848-77f0-2643-3dadf6a5f52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shellPrefixMatrix_eq_sum_code
    {N q x : ℕ} (code : TypeIIShellPrefixCode N q x)
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) :
    typeIIProductShellPrefixMatrix leftIndex rightIndex q x =
      ∑ D ∈ code.intervals,
        typeIIProductIntervalMatrix leftIndex rightIndex D := by
  rw [typeIIProductShellPrefixMatrix_eq_sum_fibers]
  rw [← code.exact_cover]
  rw [Finset.sum_biUnion code.pairwise_disjoint]
  symm
  calc
    (∑ D ∈ code.intervals,
        typeIIProductIntervalMatrix leftIndex rightIndex D) =
      ∑ D ∈ code.intervals,
        ∑ n ∈ D.carrier,
          productFiberIncrementMatrix leftIndex rightIndex n := by
            apply Finset.sum_congr rfl
            intro D hD
            exact typeIIProductIntervalMatrix_eq_sum_fibers _ _ D
    _ = _ := rfl

end

end Surface.Core.TypeII

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ca1b1143fb8c5e71226c2db770e9b721ee383f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
