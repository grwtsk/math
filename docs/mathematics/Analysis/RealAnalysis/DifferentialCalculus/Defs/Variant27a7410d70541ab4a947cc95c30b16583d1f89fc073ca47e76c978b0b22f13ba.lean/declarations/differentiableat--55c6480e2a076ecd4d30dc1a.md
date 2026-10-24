# DifferentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a3796c60c869097608943ac7a35a7d515039662dbd09c8414de8717baa5a2d8",
  "kind": "def",
  "lexical_name": "DifferentiableAt",
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
  "slug": "differentiableat--55c6480e2a076ecd4d30dc1a",
  "source": {
    "blob": "c479bbd434b4a8c90b5a3ed4e7a451839a748625",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55c6480e2a076ecd4d30dc1a5036e8474ffb79c6196a24161bdea6599e294bcc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a3796c60c869097608943ac7a35a7d515039662dbd09c8414de8717baa5a2d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DifferentiableAt (f : E → F) (x : E) :=
  ∃ f' : E →L[𝕜] F, HasFDerivAt f f' x

open scoped Classical in
/-- If `f` has a derivative at `x` within `s`, then `fderivWithin 𝕜 f s x` is such a derivative.
Otherwise, it is set to `0`. We also set it to be zero, if zero is one of possible derivatives. -/
irreducible_def fderivWithin (f : E → F) (s : Set E) (x : E) : E →L[𝕜] F :=
  if HasFDerivWithinAt f (0 : E →L[𝕜] F) s x
    then 0
  else if h : DifferentiableWithinAt 𝕜 f s x
    then Classical.choose h
  else 0

/-- If `f` has a derivative at `x`, then `fderiv 𝕜 f x` is such a derivative. Otherwise, it is
set to `0`. -/
irreducible_def fderiv (f : E → F) (x : E) : E →L[𝕜] F :=
  fderivWithin 𝕜 f univ x

/-- `DifferentiableOn 𝕜 f s` means that `f` is differentiable within `s` at any point of `s`. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant27a7410d70541ab4a947cc95c30b16583d1f89fc073ca47e76c978b0b22f13ba.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c479bbd434b4a8c90b5a3ed4e7a451839a748625` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
