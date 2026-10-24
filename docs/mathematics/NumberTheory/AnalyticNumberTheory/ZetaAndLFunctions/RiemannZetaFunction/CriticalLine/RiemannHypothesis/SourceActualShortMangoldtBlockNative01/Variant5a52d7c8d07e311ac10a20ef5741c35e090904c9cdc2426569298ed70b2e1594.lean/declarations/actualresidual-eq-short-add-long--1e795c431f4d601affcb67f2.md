# actualResidual_eq_short_add_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ad3ef25-6d34-43b8-ebb7-93f079d04e92",
  "kind": "theorem",
  "lexical_name": "actualResidual_eq_short_add_long",
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
  "slug": "actualresidual-eq-short-add-long--1e795c431f4d601affcb67f2",
  "source": {
    "blob": "387e89f58db44b4dc83e910e180ff0c35e837b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 158,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e795c431f4d601affcb67f228ac96def8643d843c29d087fa253a82ce753d38",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ad3ef25-6d34-43b8-ebb7-93f079d04e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_eq_short_add_long {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = actualShortMangoldtBlock A + actualLongMangoldtBlock A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment actualShortMangoldtBlock actualLongMangoldtBlock
  have hU := vaughanCutoff_pos A hA
  have hUN := cutoff_le_inventory hA
  change (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
    vonMangoldt n * closedPrimeWeight A n) = _
  have hI : Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊ =
      Finset.Icc 2 (vaughanCutoff A) ∪
        Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊ := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  rw [hI, Finset.sum_union]
  exact Finset.disjoint_left.mpr (by
    intro n hn hm
    have := (Finset.mem_Icc.mp hn).2
    have := (Finset.mem_Ioc.mp hm).1
    omega)

/-- Any actual residual upper bound must cancel the actual short linear mass in the long sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortMangoldtBlockNative01/Variant5a52d7c8d07e311ac10a20ef5741c35e090904c9cdc2426569298ed70b2e1594.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387e89f58db44b4dc83e910e180ff0c35e837b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
