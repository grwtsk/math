# psiRelativeError_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ecd1b3-2c68-568e-c141-da964f5e5035",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_bound",
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
  "slug": "psirelativeerror-bound--615381ae30d8d0b670d62569",
  "source": {
    "blob": "31f0ed5945685340d1a185e60b5ce2666f65e2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615381ae30d8d0b670d62569dc1ae06ed95f4ace8637a59cd357c12ab81f87c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ecd1b3-2c68-568e-c141-da964f5e5035`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_bound (t : ℝ) :
    |psiRelativeError t| ≤ Real.log 4 + 5 := by
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hn : 0 ≤ Real.exp (-t) * Chebyshev.psi (Real.exp t) :=
    mul_nonneg (Real.exp_pos _).le (Chebyshev.psi_nonneg _)
  have hu := mul_le_mul_of_nonneg_left hp (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * ((Real.log 4 + 4) * Real.exp t) = Real.log 4 + 4 := by
    calc
      _ = (Real.log 4 + 4) * (Real.exp (-t) * Real.exp t) := by ring
      _ = _ := by rw [← Real.exp_add]; simp
  rw [he] at hu
  have hl : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  unfold psiRelativeError
  apply abs_le.mpr
  constructor <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMoment/Variant736302e02a2596f1236ac38282c9e96a570a5b81713a6613d4e82282316adf47.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f0ed5945685340d1a185e60b5ce2666f65e2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
