# actual_finite_bounds_of_verified_height_and_sixth_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1201ce3-a27c-c9f8-f66a-841a52455281",
  "kind": "theorem",
  "lexical_name": "actual_finite_bounds_of_verified_height_and_sixth_tail",
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
  "slug": "actual-finite-bounds-of-verified-height-and-sixth-tail--1a9362525e3a1d06961dc5d4",
  "source": {
    "blob": "94123c9fb73ca2b1bb7b64af7696133886a5a1af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiveModeFiniteExternal/Variant7cdd7fa3c416a74d4dff0857d0a51a5e3b07578271a4f4a17c043b32d27139ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a9362525e3a1d06961dc5d49bc151944ff86c634d7890f9f4f1f7f34a5745c2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiveModeFiniteExternal/Variant7cdd7fa3c416a74d4dff0857d0a51a5e3b07578271a4f4a17c043b32d27139ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1201ce3-a27c-c9f8-f66a-841a52455281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_bounds_of_verified_height_and_sixth_tail
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hs : Summable (positiveSixthPowerWeight 3000000000000))
    (hcount : actualPositiveSixthPowerTail 3000000000000 ≤
      positiveSixthPowerCountEnvelope 3000000000000) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply actual_finite_bounds_of_complete_height_and_strict_tail hverified
  exact actual_strict_tail_certificate_of_source_and_count
    (fun A hA _ => actual_source_absolute_tail_majorant A _ hA (by norm_num)) hs
    (hcount.trans count_envelope_cutoff_le_rational_cap)

/-- Named external inputs and the remaining analytic count adapter. In
particular, `hcountBudget` is not asserted as a proved paper identity: it is
the exact next Lean obligation. `hstieltjes` retains -N(T)/T^6 and integral
convergence, with closed N(T) and a strict omitted tail even at a zero ordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiveModeFiniteExternal/Variant7cdd7fa3c416a74d4dff0857d0a51a5e3b07578271a4f4a17c043b32d27139ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiveModeFiniteExternal/Variant7cdd7fa3c416a74d4dff0857d0a51a5e3b07578271a4f4a17c043b32d27139ba.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94123c9fb73ca2b1bb7b64af7696133886a5a1af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
