# hasSum_qExpansion_E2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3d72acf-076d-7974-7150-058ca50f330b",
  "kind": "theorem",
  "lexical_name": "hasSum_qExpansion_E2",
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
  "slug": "hassum-qexpansion-e2--5cec0ce85f1844b5feb636c2",
  "source": {
    "blob": "9bb830fcbf9f3bb0d2783810427812e64068a064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cec0ce85f1844b5feb636c2734c6903327f15e745fbddf1937802e85ff7e01e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d72acf-076d-7974-7150-058ca50f330b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_qExpansion_E2 :
    HasSum (fun m : ℕ ↦ (if m = 0 then 1 else -24 * σ 1 m : ℂ) • 𝕢 z ^ m) (E2 z) := by
  have hS : Summable fun n : ℕ ↦ σ 1 (n + 1) * 𝕢 z ^ (n + 1) :=
    (summable_nat_add_iff 1).mpr (summable_sigma_mul_cexp_pow (k := 2) (one_le_two) z)
  rw [← hasSum_nat_add_iff' 1]
  convert! (hS.mul_left (-24)).hasSum using 1
  · ext : 1
    simp [mul_assoc]
  · rw [E2_eq_tsum_cexp, tsum_pnat_eq_tsum_succ (f := fun n ↦ σ 1 n * 𝕢 z ^ n), tsum_mul_left]
    simp

/-- `E2` tends to `1` at `i∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant5e3214493e8f81c42bb2867266d17538bd2a0b8556c23f066ab5b95633ae877a.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bb830fcbf9f3bb0d2783810427812e64068a064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
