# sum_evenPositiveEndpointShiftSet_eq_halfShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96ba833e-c95a-e710-4ffb-d64079a6e066",
  "kind": "theorem",
  "lexical_name": "sum_evenPositiveEndpointShiftSet_eq_halfShift",
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
  "slug": "sum-evenpositiveendpointshiftset-eq-halfshift--c14f9448d83d17f18ea2c76a",
  "source": {
    "blob": "ef8cbe12fc85e532e9c650074cb5d49d96bcbc32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 54,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c14f9448d83d17f18ea2c76a8f4c2549323c03045c330dd1ff5a6fb09acd3c80",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ba833e-c95a-e710-4ffb-d64079a6e066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_evenPositiveEndpointShiftSet_eq_halfShift
    {α : Type*} [AddCommMonoid α]
    (b : ℕ) (f : ℕ → α) :
    (∑ h ∈ evenPositiveEndpointShiftSet b, f h) =
      ∑ t ∈ positiveEvenHalfShiftSet b, f (2 * t) := by
  classical
  apply Finset.sum_bij'
    (fun h _hh => h / 2)
    (fun t _ht => 2 * t)
  · intro h hh
    rcases Finset.mem_filter.mp hh with ⟨hhRange, hEven⟩
    rcases hEven with ⟨q, hq⟩
    unfold positiveEvenHalfShiftSet
    apply Finset.mem_Icc.mpr
    have hhI := Finset.mem_Ico.mp hhRange
    omega
  · intro t ht
    have htI := Finset.mem_Icc.mp ht
    unfold evenPositiveEndpointShiftSet positiveEndpointShiftSet
    apply Finset.mem_filter.mpr
    constructor
    · apply Finset.mem_Ico.mpr
      omega
    · exact ⟨t, by omega⟩
  · intro h hh
    have hEven := (Finset.mem_filter.mp hh).2
    rcases hEven with ⟨q, hq⟩
    omega
  · intro t _ht
    omega
  · intro h hh
    have hEven := (Finset.mem_filter.mp hh).2
    rcases hEven with ⟨q, hq⟩
    congr 1
    omega

/-- Exact finite reindexing of the odd positive shifts by `h=2*t+1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8cbe12fc85e532e9c650074cb5d49d96bcbc32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
