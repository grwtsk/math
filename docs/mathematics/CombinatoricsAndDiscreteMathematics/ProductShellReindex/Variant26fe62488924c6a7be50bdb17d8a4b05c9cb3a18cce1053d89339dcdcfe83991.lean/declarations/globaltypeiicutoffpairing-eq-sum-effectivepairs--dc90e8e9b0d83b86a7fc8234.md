# globalTypeIICutoffPairing_eq_sum_effectivePairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d4012f3-ee47-9e18-abfe-c4d5c91594a0",
  "kind": "theorem",
  "lexical_name": "globalTypeIICutoffPairing_eq_sum_effectivePairs",
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
  "slug": "globaltypeiicutoffpairing-eq-sum-effectivepairs--dc90e8e9b0d83b86a7fc8234",
  "source": {
    "blob": "d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 466,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc90e8e9b0d83b86a7fc82343b9a98ff98745f0ed15aa871218ebbea90031ed0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d4012f3-ee47-9e18-abfe-c4d5c91594a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem globalTypeIICutoffPairing_eq_sum_effectivePairs (N x : ℕ) :
    bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) =
      ∑ pair ∈ effectiveTypeIIPrefixPairs N x,
        conductorThreeTypeIIPairTerm pair := by
  classical
  calc
    bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) =
      ∑ pair : VaughanScaleIndex N × VaughanScaleIndex N,
        conductorThreeVaughanLeft N pair.1 *
          typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
            (fun k : VaughanScaleIndex N ↦ k.1) x pair.1 pair.2 *
          conductorThreeVaughanRight N pair.2 := by
            unfold bilinearMatrixPairing
            symm
            exact Fintype.sum_prod_type _
    _ = ∑ pair ∈ effectiveTypeIIPrefixPairs N x,
        conductorThreeTypeIIPairTerm pair := by
      unfold effectiveTypeIIPrefixPairs
      rw [Finset.sum_filter]
      apply Fintype.sum_congr
      intro pair
      by_cases hm : vaughanFourthRootCutoff N < pair.1.1
      · by_cases hk : vaughanFourthRootCutoff N < pair.2.1
        · by_cases hp : pair.1.1 * pair.2.1 ≤ x
          · simp [typeIICutoffMatrix, conductorThreeVaughanLeft,
              conductorThreeVaughanRight, conductorThreeTypeIIPairTerm,
              hm, hk, hp]
          · simp [typeIICutoffMatrix, conductorThreeVaughanLeft,
              conductorThreeVaughanRight, hm, hk, hp]
        · simp [typeIICutoffMatrix, conductorThreeVaughanRight,
            hk]
      · simp [typeIICutoffMatrix, conductorThreeVaughanLeft, hm]

/-- Exact shell reindexing of the actual conductor-three Vaughan Type II
prefix.  The minus sign is the fixed Type II sign in Vaughan's identity. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ProductShellReindex/Variant26fe62488924c6a7be50bdb17d8a4b05c9cb3a18cce1053d89339dcdcfe83991.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d744c991ffed0c19e11ad9bbd2eb8343c1ba2ffd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
