# coshInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beaca4db8c7121613cfd1d1c74bb3fede82b37e45398c1527fd84346d75c42b5",
  "kind": "def",
  "lexical_name": "coshInterval",
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
  "slug": "coshinterval--dea3c02bc780b6080db0f151",
  "source": {
    "blob": "28b572b0cc4a3448c2243660b9aca79c59b34ff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 331,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dea3c02bc780b6080db0f151195ff85d16b19b7682db08a835fc322e18a91862",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beaca4db8c7121613cfd1d1c74bb3fede82b37e45398c1527fd84346d75c42b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coshInterval (I : IntervalReal) : IntervalReal :=
  if h1 : 0 ≤ I.lo then
    -- Interval is [a,b] with 0 ≤ a: cosh increasing, so [cosh(a), cosh(b)]
    -- Since 0 ≤ a ≤ b, we have |a| ≤ |b|, so cosh(a) ≤ cosh(b)
    ⟨Real.cosh I.lo, Real.cosh I.hi, by
      rw [Real.cosh_le_cosh]
      rw [abs_of_nonneg h1, abs_of_nonneg (le_trans h1 I.le)]
      exact I.le⟩
  else if h2 : I.hi ≤ 0 then
    -- Interval is [a,b] with b ≤ 0: cosh decreasing, so [cosh(b), cosh(a)]
    -- Since a ≤ b ≤ 0, we have |b| ≤ |a|, so cosh(b) ≤ cosh(a)
    ⟨Real.cosh I.hi, Real.cosh I.lo, by
      rw [Real.cosh_le_cosh]
      have hlo_neg : I.lo < 0 := not_le.mp h1
      rw [abs_of_nonpos h2, abs_of_nonpos (le_of_lt hlo_neg)]
      linarith [I.le]⟩
  else
    -- Interval contains 0: min is 1, max is max(cosh(lo), cosh(hi))
    ⟨1, max (Real.cosh I.lo) (Real.cosh I.hi), by
      have h := Real.one_le_cosh I.lo
      exact le_trans h (le_max_left _ _)⟩

/-- FTIA for cosh: if x ∈ [a,b], then cosh(x) ∈ coshInterval([a,b]).
    This is FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28b572b0cc4a3448c2243660b9aca79c59b34ff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
