# actual_psi_on_negative_block

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9697ab6d-1841-2345-e297-87ba09451181",
  "kind": "theorem",
  "lexical_name": "actual_psi_on_negative_block",
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
  "slug": "actual-psi-on-negative-block--cc194c6b8ee49f665e6b4dee",
  "source": {
    "blob": "65b265f85dddff7104913cde1e9a775136827982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc194c6b8ee49f665e6b4dee7e53d42ba90b76d717b45f9c19e3c5d8dc115922",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9697ab6d-1841-2345-e297-87ba09451181`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_psi_on_negative_block (y : ℝ) (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    Chebyshev.psi y = Real.log (60 : ℝ) := by
  have hf : ⌊y⌋₊ = 6 := by
    apply Nat.floor_eq_iff (by linarith : 0 ≤ y) |>.mpr
    constructor <;> norm_num <;> linarith
  have hpsi : Chebyshev.psi y = Chebyshev.psi (6 : ℝ) := by
    unfold Chebyshev.psi
    rw [hf]
    norm_num
  rw [hpsi]
  have hlcm : Nat.lcmUpto 6 = 60 := by decide
  simpa only [hlcm, Nat.cast_ofNat] using Chebyshev.psi_eq_log_lcmUpto 6

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualPsiNegativeBlock/Variantc05d582be9b38035acc5c4a089e03ce6b90201006f5f327a910ea21a259a011e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b265f85dddff7104913cde1e9a775136827982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
