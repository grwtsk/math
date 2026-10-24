# ContDiffOn.differentiableOn_iteratedDerivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1c1c2d1-bb1c-808a-d91d-254be4faa6cf",
  "kind": "theorem",
  "lexical_name": "ContDiffOn.differentiableOn_iteratedDerivWithin",
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
  "slug": "contdiffon-differentiableon-iteratedderivwithin--5e2842f04aa704551c10a40a",
  "source": {
    "blob": "b49cb2f6eace3a21f0236f53bbe57cdf91c60b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2842f04aa704551c10a40a60e64bbf86ee966af841c2b4490e9c910e0ddd54",
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

Occurrence: `result:d1c1c2d1-bb1c-808a-d91d-254be4faa6cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffOn.differentiableOn_iteratedDerivWithin {n : ℕ∞} {m : ℕ} (h : ContDiffOn 𝕜 n f s)
    (hmn : (m : ℕ∞) < n) (hs : UniqueDiffOn 𝕜 s) :
    DifferentiableOn 𝕜 (iteratedDerivWithin m f s) s := fun x hx =>
  (h x hx).differentiableWithinAt_iteratedDerivWithin hmn <| by rwa [insert_eq_of_mem hx]
#align cont_diff_on.differentiable_on_iterated_deriv_within ContDiffOn.differentiableOn_iteratedDerivWithin

/-- The property of being `C^n`, initially defined in terms of the Fréchet derivative, can be
reformulated in terms of the one-dimensional derivative on sets with unique derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b49cb2f6eace3a21f0236f53bbe57cdf91c60b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
