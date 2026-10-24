# mFourierBasis_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06cdaf65acf696340d7f8c72eee642210e0f54db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:441bf64a-4da1-5fd6-4bc0-51aa42339a87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23350e53-285e-4ee7-3c13-6349cfe09ea7",
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
  "slug": "mfourierbasis-repr--027b0fd6df597613418dc0f4",
  "source": {
    "blob": "06cdaf65acf696340d7f8c72eee642210e0f54db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027b0fd6df597613418dc0f46229cbc59b6b9d7e68905e42166ae8392c46a327",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23350e53-285e-4ee7-3c13-6349cfe09ea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddCircleMulti/Variantc85dae595f34b888f17a33d606e4362589d39c7d9ccfe87a15d2d53d711a6809.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06cdaf65acf696340d7f8c72eee642210e0f54db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
