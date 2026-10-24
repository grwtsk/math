# countOnes_add_countZeros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba3ea826-fb1e-f376-a271-919934be3db7",
  "kind": "theorem",
  "lexical_name": "countOnes_add_countZeros",
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
  "slug": "countones-add-countzeros--fdafe928b9312cb139253aca",
  "source": {
    "blob": "e54c79be2de43d117e1bee5481d39a38e156b4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdafe928b9312cb139253acac758b3b6cddc34833dfa15e819bfa97a79e34bfb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba3ea826-fb1e-f376-a271-919934be3db7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countOnes_add_countZeros (M : BinaryMatrix) :
    countOnes M + countZeros M = cellCount M := by
  classical
  unfold countOnes countZeros actualCount cellCount
  let cells : Finset (Fin M.m × Fin M.n) := Finset.univ
  have hnot :
      (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)) =
        (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 0)) := by
    apply Finset.filter_congr
    intro c hc
    exact (bit_eq_zero_iff_not_eq_one (M.get c.1 c.2)).symm
  have hsum :
      (cells.filter (fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)).card +
        (cells.filter (fun c : Fin M.m × Fin M.n => ¬ M.get c.1 c.2 = 1)).card =
          cells.card := by
    simpa [cells] using Finset.card_filter_add_card_filter_not
      (s := cells) (p := fun c : Fin M.m × Fin M.n => M.get c.1 c.2 = 1)
  rw [← hnot]
  simpa [cells, Fintype.card_prod, Fintype.card_fin] using hsum

end BinaryMatrix
end Carrier
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant6a8c4d7c421f9c98/BinaryMatrixFiniteCounts.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54c79be2de43d117e1bee5481d39a38e156b4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
