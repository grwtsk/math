# minus_profile_envelope_ge_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00249a75-12a4-2b9f-66b3-aaffbcb7fc4f",
  "kind": "theorem",
  "lexical_name": "minus_profile_envelope_ge_linear",
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
  "slug": "minus-profile-envelope-ge-linear--0f1c0a6ad3116e3bedcf9ad2",
  "source": {
    "blob": "1b030cf46275514fb4fc59cb2847f3f18ca4ce09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMinusProfileBudgetObstruction/Variant07c55c7e5cb4499f9f69dc176345ab11c3640fa3ee7b982290f57f5f5d2e5045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f1c0a6ad3116e3bedcf9ad2de41e3a00e778c7219818cc21f290def3830baba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMinusProfileBudgetObstruction/Variant07c55c7e5cb4499f9f69dc176345ab11c3640fa3ee7b982290f57f5f5d2e5045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00249a75-12a4-2b9f-66b3-aaffbcb7fc4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minus_profile_envelope_ge_linear (A : ℝ) (hA : 40 ≤ A) :
    A / 256 ≤ minusProfileEnvelope A := by
  have hx : 0 ≤ A / 32 := by linarith
  have hz : 1 ≤ Real.exp (A / 32) := Real.one_le_exp hx
  have he := Real.add_one_le_exp (A / 32)
  have hs : Real.exp (A / 16) = (Real.exp (A / 32)) ^ 2 := by
    rw [show A / 16 = A / 32 + A / 32 by ring, Real.exp_add]
    ring
  have hprod := mul_nonneg (by linarith : 0 ≤ Real.exp (A / 32) - 1)
    (by linarith : 0 ≤ Real.exp (A / 32) - 1)
  have hlow := minus_profile_envelope_lower A hA
  rw [hs] at hlow
  nlinarith

/-- The probe interval lies strictly after seven for every sufficiently large real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceMinusProfileBudgetObstruction/Variant07c55c7e5cb4499f9f69dc176345ab11c3640fa3ee7b982290f57f5f5d2e5045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMinusProfileBudgetObstruction/Variant07c55c7e5cb4499f9f69dc176345ab11c3640fa3ee7b982290f57f5f5d2e5045.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b030cf46275514fb4fc59cb2847f3f18ca4ce09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
