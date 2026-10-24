# IsStoppingTime.piecewise_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec05614e-e228-cfa3-afa5-38151c478467",
  "kind": "theorem",
  "lexical_name": "IsStoppingTime.piecewise_of_le",
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
  "slug": "isstoppingtime-piecewise-of-le--517aaffab98b5c3c678865a8",
  "source": {
    "blob": "b25a083f6a1b210f988357fb835770c3f90b68da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1392,
    "line": 1377,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517aaffab98b5c3c678865a8672bde93d64a3dc5db6c38c6ffdc0cb94309b2fb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec05614e-e228-cfa3-afa5-38151c478467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1377–1392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsStoppingTime.piecewise_of_le (hτ_st : IsStoppingTime 𝒢 τ) (hη_st : IsStoppingTime 𝒢 η)
    (hτ : ∀ ω, i ≤ τ ω) (hη : ∀ ω, i ≤ η ω) (hs : MeasurableSet[𝒢 i] s) :
    IsStoppingTime 𝒢 (s.piecewise τ η) := by
  intro n
  have : {ω | s.piecewise τ η ω ≤ n} = s ∩ {ω | τ ω ≤ n} ∪ sᶜ ∩ {ω | η ω ≤ n} := by
    ext1 ω
    simp only [Set.piecewise, Set.mem_ofPred_eq]
    by_cases hx : ω ∈ s <;> simp [hx]
  rw [this]
  by_cases hin : i ≤ n
  · have hs_n : MeasurableSet[𝒢 n] s := 𝒢.mono hin _ hs
    exact (hs_n.inter (hτ_st n)).union (hs_n.compl.inter (hη_st n))
  · have hτn : ∀ ω, ¬τ ω ≤ n := fun ω hτn => hin (mod_cast (hτ ω).trans hτn)
    have hηn : ∀ ω, ¬η ω ≤ n := fun ω hηn => hin (mod_cast (hη ω).trans hηn)
    simp [hτn, hηn, @MeasurableSet.empty _ _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant38d608b4f30295c1fe84e336ecc0e5ee90c064a531bf7e142bbd73d5100a8c39.lean#L1377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b25a083f6a1b210f988357fb835770c3f90b68da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
