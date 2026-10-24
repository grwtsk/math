# ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05554e25-564f-4fa7-0000-1a1e1202143f",
  "kind": "theorem",
  "lexical_name": "ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin",
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
  "slug": "contdiffwithinat-differentiablewithinat-iteratedderivwithin--14f0988d9c2c57682ba4e166",
  "source": {
    "blob": "b49cb2f6eace3a21f0236f53bbe57cdf91c60b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f0988d9c2c57682ba4e1667b00771534003a87f96bf0b4d6d5a5b43ead4396",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05554e25-564f-4fa7-0000-1a1e1202143f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin {n : ℕ∞} {m : ℕ}
    (h : ContDiffWithinAt 𝕜 n f s x) (hmn : (m : ℕ∞) < n) (hs : UniqueDiffOn 𝕜 (insert x s)) :
    DifferentiableWithinAt 𝕜 (iteratedDerivWithin m f s) s x := by
  simpa only [iteratedDerivWithin_eq_equiv_comp,
    LinearIsometryEquiv.comp_differentiableWithinAt_iff] using
    h.differentiableWithinAt_iteratedFDerivWithin hmn hs
#align cont_diff_within_at.differentiable_within_at_iterated_deriv_within ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin

/-- On a set with unique derivatives, a `C^n` function has derivatives less than `n` which are
differentiable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49cb2f6eace3a21f0236f53bbe57cdf91c60b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
