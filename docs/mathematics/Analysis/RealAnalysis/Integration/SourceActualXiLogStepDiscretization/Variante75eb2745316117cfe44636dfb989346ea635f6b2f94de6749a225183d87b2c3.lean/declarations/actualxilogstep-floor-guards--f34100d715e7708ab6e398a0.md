# actualXiLogStep_floor_guards

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4abb7515-5724-1924-f80c-2014bb2f61de",
  "kind": "theorem",
  "lexical_name": "actualXiLogStep_floor_guards",
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
  "slug": "actualxilogstep-floor-guards--f34100d715e7708ab6e398a0",
  "source": {
    "blob": "4aa1a0e101f7bf17f81118246578c83b2e8a491d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variante75eb2745316117cfe44636dfb989346ea635f6b2f94de6749a225183d87b2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f34100d715e7708ab6e398a050afe4e2fbda49eef2c18fb2274db0c7bdf63760",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variante75eb2745316117cfe44636dfb989346ea635f6b2f94de6749a225183d87b2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4abb7515-5724-1924-f80c-2014bb2f61de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLogStep_floor_guards {t : ℝ} (ht : Real.log 7 ≤ t) :
    7 ≤ Nat.floor (Real.exp t) ∧
      Real.exp t / 2 ≤ (Nat.floor (Real.exp t) : ℝ) := by
  have he : (7 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using Real.exp_le_exp.mpr ht
  have hn : 7 ≤ Nat.floor (Real.exp t) := Nat.le_floor he
  have hnr : (1 : ℝ) ≤ Nat.floor (Real.exp t) := by exact_mod_cast (show 1 ≤ Nat.floor (Real.exp t) by omega)
  have hh := Nat.lt_floor_add_one (Real.exp t)
  refine ⟨hn, ?_⟩
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variante75eb2745316117cfe44636dfb989346ea635f6b2f94de6749a225183d87b2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiLogStepDiscretization/Variante75eb2745316117cfe44636dfb989346ea635f6b2f94de6749a225183d87b2c3.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa1a0e101f7bf17f81118246578c83b2e8a491d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
