# rounded_edge_change_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd78af05-056a-57b9-fd6f-253686673404",
  "kind": "theorem",
  "lexical_name": "rounded_edge_change_tendsto",
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
  "slug": "rounded-edge-change-tendsto--154cb3fa6548ecfbfa84415f",
  "source": {
    "blob": "c871d0bf760c11275659115b2f2fe62d068ca7c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 213,
    "path": "GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154cb3fa6548ecfbfa84415fa405e713700138822bc688d70750494c5691f28c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd78af05-056a-57b9-fd6f-253686673404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rounded_edge_change_tendsto (n : ℕ) (hn : 2 ≤ n) (L : ℕ → ℕ) (H : ℕ → ℝ)
    (herr : ∀ J, |H J - separatedHeight J| ≤ heightClearance J / 2) :
    Tendsto (fun J : ℕ =>
      edgeRemainder (squareCenter n) (squareRadius n) (L J) (H J) -
        edgeRemainder (squareCenter n) (squareRadius n) (L J) (separatedHeight J))
      atTop (𝓝 0) := by
  have hd := (rounded_right_tendsto_squareSource n hn H herr).sub
    (GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours.separated_right_tendsto_squareSource n hn)
  have hd0 := hd.congr' (Eventually.of_forall (fun J =>
    rounded_right_change (squareCenter n) (squareRadius n) (squareRadius_pos n)
      (square_tent_domain n hn) (L J) J (H J) (herr J)))
  simpa only [sub_self] using hd0

end
end GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HeightIndexedTentResidues.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c871d0bf760c11275659115b2f2fe62d068ca7c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
