# actualFirstPrimeMoment_eq_short_add_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fc89209-e843-4940-ad49-adeae33a542e",
  "kind": "theorem",
  "lexical_name": "actualFirstPrimeMoment_eq_short_add_long",
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
  "slug": "actualfirstprimemoment-eq-short-add-long--b2437cdd2047fcb6af292be9",
  "source": {
    "blob": "b7340cd1a7c82081ca6a9c26c2cd65d437ab9088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative01/Variant6efbd42f93a4b0d4780522852f8bdc1c1c6bc10b5b736595f4c0b7cd190de42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2437cdd2047fcb6af292be97073512dd7ed03a5634086ef04f9baed1f89a146",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative01/Variant6efbd42f93a4b0d4780522852f8bdc1c1c6bc10b5b736595f4c0b7cd190de42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fc89209-e843-4940-ad49-adeae33a542e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFirstPrimeMoment_eq_short_add_long {A : ℝ} (hA : 1 ≤ A) :
    firstPrimeMoment A = actualShortFirstPrimeBlock A + actualLongFirstPrimeBlock A := by
  have hU := vaughanCutoff_pos A hA
  have hUN := cutoff_le_inventory hA
  have hI : primeLogInventory (2 * A) =
      (Finset.Icc 2 (vaughanCutoff A)).filter Nat.Prime ∪
        (Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime := by
    ext n
    simp only [primeLogInventory, Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_Icc, Finset.mem_union]
    constructor
    · rintro ⟨⟨hn0, hnN⟩, hp⟩
      by_cases hnU : n ≤ vaughanCutoff A
      · exact Or.inl ⟨⟨hp.two_le, hnU⟩, hp⟩
      · exact Or.inr ⟨⟨by omega, hnN⟩, hp⟩
    · rintro (⟨⟨hn2, hnU⟩, hp⟩ | ⟨⟨hUn, hnN⟩, hp⟩)
      · exact ⟨⟨by omega, hnU.trans hUN⟩, hp⟩
      · exact ⟨⟨by omega, hnN⟩, hp⟩
  unfold firstPrimeMoment actualShortFirstPrimeBlock actualLongFirstPrimeBlock
  rw [hI, Finset.sum_union]
  exact Finset.disjoint_left.mpr (by
    intro n hn hm
    have := (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).2
    have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1
    omega)

/-- The allocated square main term stays beside the complete signed first-prime complement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative01/Variant6efbd42f93a4b0d4780522852f8bdc1c1c6bc10b5b736595f4c0b7cd190de42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative01/Variant6efbd42f93a4b0d4780522852f8bdc1c1c6bc10b5b736595f4c0b7cd190de42f.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7340cd1a7c82081ca6a9c26c2cd65d437ab9088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
