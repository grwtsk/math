# Real.coe_fib_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68db1b14-6725-c6d6-0c03-607c6250aeef",
  "kind": "theorem",
  "lexical_name": "Real.coe_fib_eq'",
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
  "slug": "real-coe-fib-eq--c2e58a3f5a0c70d3b4e11657",
  "source": {
    "blob": "83c45af59f998f4f901b17d8b311c1a6a92f8596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e58a3f5a0c70d3b4e11657d9aa73b55ec701790e62886aa16d438f3ad40307",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68db1b14-6725-c6d6-0c03-607c6250aeef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.coe_fib_eq' :
    (fun n => Nat.fib n : ℕ → ℝ) = fun n => (φ ^ n - ψ ^ n) / Real.sqrt 5 := by
  rw [fibRec.sol_eq_of_eq_init]
  · intro i hi
    norm_cast at hi
    fin_cases hi
    · simp
    · simp only [goldenRatio, goldenConj]
      ring_nf
      rw [mul_inv_cancel]; norm_num
  · exact fib_isSol_fibRec
  · -- Porting note: Rewrote this proof
    suffices LinearRecurrence.IsSolution fibRec
        ((fun n ↦ (sqrt 5)⁻¹ * φ ^ n) - (fun n ↦ (sqrt 5)⁻¹ * ψ ^ n)) by
      convert this
      rw [Pi.sub_apply]
      ring
    apply (@fibRec ℝ _).solSpace.sub_mem
    · exact Submodule.smul_mem fibRec.solSpace (Real.sqrt 5)⁻¹ geom_gold_isSol_fibRec
    · exact Submodule.smul_mem fibRec.solSpace (Real.sqrt 5)⁻¹ geom_goldConj_isSol_fibRec
#align real.coe_fib_eq' Real.coe_fib_eq'

/-- Binet's formula as a dependent equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/GoldenRatio/Variantdf9c6e6691f19cd1f74804462789379388512dab4752e7558aeda0f5e62c430b.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c45af59f998f4f901b17d8b311c1a6a92f8596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
