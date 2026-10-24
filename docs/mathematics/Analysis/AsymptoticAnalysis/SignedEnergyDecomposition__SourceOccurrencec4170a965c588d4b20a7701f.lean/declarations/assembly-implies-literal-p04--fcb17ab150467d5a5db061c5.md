# assembly_implies_literal_P04

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7908f626-a31a-b85f-7bf6-2138950b4695",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e4c7e2f-d3dc-871a-2de1-dfd39267ff02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82382d32-d098-01f1-7b81-92b143fc51eb",
  "kind": "theorem",
  "lexical_name": "assembly_implies_literal_P04",
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
  "slug": "assembly-implies-literal-p04--fcb17ab150467d5a5db061c5",
  "source": {
    "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 40,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcb17ab150467d5a5db061c54d402af47df7c8072a5663c1c4eb1d2d8b647bc9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82382d32-d098-01f1-7b81-92b143fc51eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assembly_implies_literal_P04 (D : ExactDecomposition) (height : ℝ → ℝ)
    (height_valid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tail_bound : RightLineTailBound D height)
    (settlement_bound : SignedSettlementBound D height) : PPNCP04.P04 := by
  obtain ⟨C_T,r_T,hCT,hrT,hTail⟩ := tail_bound
  obtain ⟨C_S,r_S,hCS,hrS,hSigned⟩ := settlement_bound
  refine ⟨C_T+C_S,max r_T r_S,add_nonneg hCT hCS,
    le_trans hrT (le_max_left _ _),?_⟩
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have ht := (le_abs_self (D.tail (height T) T)).trans (hTail T hT)
  have hs := hSigned T hT
  have htp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r_T r_S)
  have hsp := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r_T r_S)
  have hi := D.sourceIdentity T (height T) hT (height_valid T hT)
  dsimp [signedSettlement] at hs
  calc
    PPNCP04.crossEnergy T ≤ C_T*(1+T)^r_T+C_S*(1+T)^r_S := by linarith
    _ ≤ C_T*(1+T)^(max r_T r_S)+C_S*(1+T)^(max r_T r_S) :=
      add_le_add (mul_le_mul_of_nonneg_left htp hCT)
        (mul_le_mul_of_nonneg_left hsp hCS)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrencec4170a965c588d4b20a7701f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c7901370857dc6f95e1f3e81fa7416ab56c1cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
