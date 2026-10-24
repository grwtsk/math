# omittedOnsetTail_le_B2_div_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfb6d17f-5605-f88c-3e83-48c93552b049",
  "kind": "theorem",
  "lexical_name": "omittedOnsetTail_le_B2_div_square",
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
  "slug": "omittedonsettail-le-b2-div-square--942c90e831b4cae67ddc9a4e",
  "source": {
    "blob": "3b707217c722b21314360f23a9bfa1e6e915395c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 226,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:942c90e831b4cae67ddc9a4ee52fb912a5ad3bb15eddc736c9f7c6db094601a2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb6d17f-5605-f88c-3e83-48c93552b049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedOnsetTail_le_B2_div_square (t : ℝ) (ht : 0<t) :
    omittedOnsetTail t ≤ properPowerB2/t^2 := by
  have hm := ((omittedOnsetTail_summable t).mul_left (t^2)).tsum_le_tsum
    (fun pk : Nat.Primes×ℕ => omittedOnsetAtom_secondMoment t ht pk.1 pk.2)
      (primeMomentAtom_summable 2)
  rw [tsum_mul_left, ←properPowerMoment_eq_joint_sum] at hm
  exact (le_div_iff₀ (sq_pos_of_pos ht)).mpr (by simpa [properPowerB2,mul_comm] using hm)

end ContinuousResearch.ProperPowerMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b707217c722b21314360f23a9bfa1e6e915395c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
