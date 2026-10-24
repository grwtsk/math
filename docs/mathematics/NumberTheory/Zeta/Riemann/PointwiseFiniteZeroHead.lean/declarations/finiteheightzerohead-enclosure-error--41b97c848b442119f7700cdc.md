# finiteHeightZeroHead_enclosure_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71049dd2-95f5-1b0e-11aa-8d6df9154131",
  "kind": "theorem",
  "lexical_name": "finiteHeightZeroHead_enclosure_error",
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
  "slug": "finiteheightzerohead-enclosure-error--41b97c848b442119f7700cdc",
  "source": {
    "blob": "ab0b6d128604780f158a3093dce6d67085d46c55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b97c848b442119f7700cdcd7c21de229e4b04bc7b05d9b29d91c4d6ff5e93a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71049dd2-95f5-1b0e-11aa-8d6df9154131`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHeightZeroHead_enclosure_error (x T : ℝ)
    (evaluation : ZeroPoint → ℂ) (ε : ZeroPoint → ℝ)
    (hε : ∀ z ∈ heightHead T, ‖pointwiseZeroTerm x z.1 - evaluation z‖ ≤ ε z) :
    ‖finiteHeightZeroHead x T - evaluatedFiniteHeightZeroHead T evaluation‖ ≤
      ∑ z ∈ heightHead T, (multiplicity z : ℝ) * ε z := by
  apply (finiteHeightZeroHead_evaluation_error x T evaluation).trans
  apply Finset.sum_le_sum
  intro z hz
  exact mul_le_mul_of_nonneg_left (hε z hz) (Nat.cast_nonneg _)

/-- Conditional transfer only: the omitted-height estimate is supplied
separately and is never inferred from the finite list or its enclosures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab0b6d128604780f158a3093dce6d67085d46c55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
