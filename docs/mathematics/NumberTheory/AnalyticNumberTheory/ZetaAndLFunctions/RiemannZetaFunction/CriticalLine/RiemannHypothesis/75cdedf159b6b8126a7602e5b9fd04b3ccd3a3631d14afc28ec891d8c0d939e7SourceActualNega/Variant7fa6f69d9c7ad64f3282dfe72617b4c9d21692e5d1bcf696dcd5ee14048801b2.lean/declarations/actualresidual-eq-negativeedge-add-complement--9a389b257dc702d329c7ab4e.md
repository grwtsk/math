# actualResidual_eq_negativeEdge_add_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b05a4dc0-753a-78af-b01c-87d0771f896e",
  "kind": "theorem",
  "lexical_name": "actualResidual_eq_negativeEdge_add_complement",
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
  "slug": "actualresidual-eq-negativeedge-add-complement--9a389b257dc702d329c7ab4e",
  "source": {
    "blob": "dafbecaf969cdc7c342ec7a416425d512965f273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant7fa6f69d9c7ad64f3282dfe72617b4c9d21692e5d1bcf696dcd5ee14048801b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a389b257dc702d329c7ab4eb44d0c7fb067ae4c44089df3b932daf975c1bcca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant7fa6f69d9c7ad64f3282dfe72617b4c9d21692e5d1bcf696dcd5ee14048801b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b05a4dc0-753a-78af-b01c-87d0771f896e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_eq_negativeEdge_add_complement {A : ℝ}
    (hA : 20000000000000 ≤ A) :
    mertensResidual A = actualNegativeEdgeMangoldtBlock A + actualNegativeEdgeComplement A := by
  have hs : actualNegativeEdgeWindow A ⊆ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ := by
    intro n hn
    have hm := Finset.mem_Ioc.mp (edgeWindow_long hA hn)
    have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
    exact Finset.mem_Icc.mpr ⟨by omega, hm.2⟩
  rw [mertensResidual_eq_closedPrimeMoment A (by linarith : 1 ≤ A)]
  unfold closedPrimeMoment actualNegativeEdgeMangoldtBlock actualNegativeEdgeComplement
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  have h := Finset.sum_sdiff hs (f := fun n => vonMangoldt n * closedPrimeWeight A n)
  linarith

/-- This negative block forces an opposite complementary contribution, not a full-residual cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant7fa6f69d9c7ad64f3282dfe72617b4c9d21692e5d1bcf696dcd5ee14048801b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant7fa6f69d9c7ad64f3282dfe72617b4c9d21692e5d1bcf696dcd5ee14048801b2.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dafbecaf969cdc7c342ec7a416425d512965f273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
