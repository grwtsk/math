# actualZeroHeightHead_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68121731-55e1-a550-f05b-a87854b5f553",
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
  "slug": "actualzeroheighthead-finite--c44393e022f7de82acfaebf4",
  "source": {
    "blob": "fd35596499e2c5daf84157628d8368540c2e0be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative05/Variant1f8bad7317a0b985ce580720b45c2a52283b675f3b5284064535a894747c807a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44393e022f7de82acfaebf4e601e54c33c9da0e9188f45c1efddd56b778a72b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative05/Variant1f8bad7317a0b985ce580720b45c2a52283b675f3b5284064535a894747c807a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68121731-55e1-a550-f05b-a87854b5f553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative05/Variant1f8bad7317a0b985ce580720b45c2a52283b675f3b5284064535a894747c807a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative05/Variant1f8bad7317a0b985ce580720b45c2a52283b675f3b5284064535a894747c807a.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd35596499e2c5daf84157628d8368540c2e0be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
