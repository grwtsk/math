# sum_zmod_initial_zeroExtension₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6011c6ba-07c0-924d-09aa-89f75063b5cf",
  "kind": "theorem",
  "lexical_name": "sum_zmod_initial_zeroExtension₂",
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
  "slug": "sum-zmod-initial-zeroextension--0cb9683126945ecea5983dbc",
  "source": {
    "blob": "69c56354b8379fe9854dffc2ecfe92dddcb46f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cb9683126945ecea5983dbc23871a39c0ce72b93b44a56a8e44e984d491e18c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6011c6ba-07c0-924d-09aa-89f75063b5cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_zmod_initial_zeroExtension₂
    {Y Q : ℕ} [NeZero Y] [NeZero Q]
    (hYQ : Y ≤ Q)
    (F : ZMod Y → ZMod Y → ℂ) :
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      if x.val < Y then
        if y.val < Y then
          F (x.val : ZMod Y) (y.val : ZMod Y)
        else 0
      else 0) =
      ∑ x : ZMod Y, ∑ y : ZMod Y, F x y := by
  classical
  calc
    (∑ x : ZMod Q, ∑ y : ZMod Q,
      if x.val < Y then
        if y.val < Y then
          F (x.val : ZMod Y) (y.val : ZMod Y)
        else 0
      else 0) =
      ∑ x : ZMod Q,
        if x.val < Y then
          (∑ y : ZMod Q,
            if y.val < Y then
              F (x.val : ZMod Y) (y.val : ZMod Y)
            else 0)
        else 0 := by
          apply Fintype.sum_congr
          intro x
          by_cases hx : x.val < Y <;> simp [hx]
    _ = ∑ x : ZMod Y, ∑ y : ZMod Q,
          if y.val < Y then F x (y.val : ZMod Y) else 0 := by
      exact sum_zmod_initial_zeroExtension hYQ
        (fun x : ZMod Y =>
          ∑ y : ZMod Q,
            if y.val < Y then F x (y.val : ZMod Y) else 0)
    _ = ∑ x : ZMod Y, ∑ y : ZMod Y, F x y := by
      apply Fintype.sum_congr
      intro x
      exact sum_zmod_initial_zeroExtension hYQ (F x)

/-- Exact zero extension of the parent endpoint Möbius sequence to the doubled
cyclic group.  The arithmetic window, not the convolution kernel, carries the
finite endpoint cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDoubledConvolutionFourier.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c56354b8379fe9854dffc2ecfe92dddcb46f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
