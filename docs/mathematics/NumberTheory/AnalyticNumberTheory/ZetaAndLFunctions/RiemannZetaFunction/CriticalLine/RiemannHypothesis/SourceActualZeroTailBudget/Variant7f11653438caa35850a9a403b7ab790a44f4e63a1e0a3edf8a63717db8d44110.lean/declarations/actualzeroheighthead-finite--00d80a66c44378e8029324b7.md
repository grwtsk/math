# actualZeroHeightHead_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:065a9e49-5769-363e-162e-e2a6492db0aa",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightHead_finite",
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
  "slug": "actualzeroheighthead-finite--00d80a66c44378e8029324b7",
  "source": {
    "blob": "08a815afb0598a0f9af9bacc3788babda2f5ab6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudget/Variant7f11653438caa35850a9a403b7ab790a44f4e63a1e0a3edf8a63717db8d44110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00d80a66c44378e8029324b7f40ac3fd7fb37cfb30e073c3a509448390ac3d43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudget/Variant7f11653438caa35850a9a403b7ab790a44f4e63a1e0a3edf8a63717db8d44110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:065a9e49-5769-363e-162e-e2a6492db0aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightHead_finite (R : ℝ) :
    {ρ : (zetaZeros zetaSeam).carrier | |(ρ : ℂ).im| < R}.Finite := by
  have hf := Set.Finite.preimage (f := fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ))
    (show Set.InjOn (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ))
      ((fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ)) ⁻¹'
        (zetaZeros zetaSeam).window (-R) R) from Subtype.val_injective.injOn)
    ((zetaZeros zetaSeam).finite_window (-R) R)
  apply hf.subset
  intro ρ hρ
  exact ⟨ρ.2, (abs_lt.mp hρ).1, (abs_lt.mp hρ).2.le⟩

/-- The literal finite actual zero head, with every source multiplicity and ordinary weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudget/Variant7f11653438caa35850a9a403b7ab790a44f4e63a1e0a3edf8a63717db8d44110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudget/Variant7f11653438caa35850a9a403b7ab790a44f4e63a1e0a3edf8a63717db8d44110.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a815afb0598a0f9af9bacc3788babda2f5ab6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
