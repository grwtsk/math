# projected_mangoldt_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afc81364-e659-029a-8832-383e17d61c33",
  "kind": "theorem",
  "lexical_name": "projected_mangoldt_readout",
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
  "slug": "projected-mangoldt-readout--2380589e13d2d95af5727393",
  "source": {
    "blob": "5a7ff5667908523af03a628b6ba7be17f329b0fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variant3337da25d4e4cb3e3cca4ffea182533c4fadb42e0db8290954994d57a60ade14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2380589e13d2d95af572739347c64ae26ef17f10f2e3d244d689e6c660200385",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variant3337da25d4e4cb3e3cca4ffea182533c4fadb42e0db8290954994d57a60ade14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afc81364-e659-029a-8832-383e17d61c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem projected_mangoldt_readout (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) =
      2 * ∑ n ∈ primePowerInventory (2 * A),
        if closedPrimeWeight A n < 0 then vonMangoldt n * closedPrimeWeight A n else 0 := by
  rw [projected_atom_readout]
  congr 1
  simp only [SourceAtom, Fintype.sum_sigma]
  have inner (n : {n : ℕ // n ∈ primePowerInventory (2 * A)}) :
      (∑ dk : {dk : ℕ × ℕ // dk ∈ n.val.divisorsAntidiagonal},
        if closedPrimeWeight A n.val < 0 then
          sourceMobiusRow A ⟨n,dk⟩ * sourceLogRow A ⟨n,dk⟩ *
            sourceAtomWeight A ⟨n,dk⟩ else 0) =
        if closedPrimeWeight A n.val < 0 then
          vonMangoldt n.val * closedPrimeWeight A n.val else 0 := by
    by_cases h : closedPrimeWeight A n.val < 0
    · simp only [h, if_true, sourceMobiusRow, sourceLogRow, sourceAtomWeight]
      rw [Finset.sum_coe_sort]
      rw [← Finset.sum_mul, ← vonMangoldt_eq_mobius_log_convolution]
    · simp [h]
  simp_rw [inner]
  exact Finset.sum_coe_sort _ _

/-- Complete Möbius/log inversion gives the literal full negative variation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variant3337da25d4e4cb3e3cca4ffea182533c4fadb42e0db8290954994d57a60ade14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variant3337da25d4e4cb3e3cca4ffea182533c4fadb42e0db8290954994d57a60ade14.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a7ff5667908523af03a628b6ba7be17f329b0fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
