# properLargePowerUpperBudget_eq_filtered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0430c685-65fc-da40-16af-fa40b63a3516",
  "kind": "theorem",
  "lexical_name": "properLargePowerUpperBudget_eq_filtered",
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
  "slug": "properlargepowerupperbudget-eq-filtered--35839963aacae66deff8c44a",
  "source": {
    "blob": "a201d44951281ef830805878071efe45d86528f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantff75c8f0ff943bdb4ad33d69d8f34b9d10c090632617fa2b336bb2b9c2aabec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35839963aacae66deff8c44aa5982289322b651965980e88a6ff2260daf2540d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantff75c8f0ff943bdb4ad33d69d8f34b9d10c090632617fa2b336bb2b9c2aabec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0430c685-65fc-da40-16af-fa40b63a3516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properLargePowerUpperBudget_eq_filtered (A : ℝ) (U N : ℕ) :
    properLargePowerUpperBudget A U N =
      ∑ n ∈ (properLargePowerInventory U N).filter
        (fun n : ℕ => 3 * A / 10 < Real.log (n : ℝ)),
          ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  classical
  unfold properLargePowerUpperBudget
  rw [Finset.sum_filter]

end RH16OneSidedPowerDiagonal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantff75c8f0ff943bdb4ad33d69d8f34b9d10c090632617fa2b336bb2b9c2aabec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variantff75c8f0ff943bdb4ad33d69d8f34b9d10c090632617fa2b336bb2b9c2aabec6.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a201d44951281ef830805878071efe45d86528f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
