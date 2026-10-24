# mFourierBasis_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a232977-29a7-2157-496d-ec7763e60abc",
  "kind": "theorem",
  "lexical_name": "mFourierBasis_repr",
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
  "slug": "mfourierbasis-repr--5f3cf038c96bdaa77e04cbaa",
  "source": {
    "blob": "f26bb6b01b442b4af05c5cd67d3de86eff514f00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f3cf038c96bdaa77e04cbaa2f6453e19629225757067a0ceceea0e7cd134c87",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a232977-29a7-2157-496d-ec7763e60abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mFourierBasis_repr (f : L²(UnitAddTorus d)) (i : d → ℤ) :
    mFourierBasis.repr f i = mFourierCoeff f i := by
  trans ∫ t, conj (mFourierLp 2 i t) * f t
  · rw [mFourierBasis.repr_apply_apply f i, MeasureTheory.L2.inner_def, coe_mFourierBasis]
    simp only [RCLike.inner_apply, mul_comm]
  · apply integral_congr_ae
    filter_upwards [coeFn_mFourierLp 2 i] with _ ht
    rw [ht, ← mFourier_neg, smul_eq_mul]

/-- The Fourier series of an `L2` function `f` sums to `f` in the `L²` norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variant887f988ea12a2038c0d48d257e64b47d00c70b1a52498dfc205cee047f82724e.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26bb6b01b442b4af05c5cd67d3de86eff514f00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
