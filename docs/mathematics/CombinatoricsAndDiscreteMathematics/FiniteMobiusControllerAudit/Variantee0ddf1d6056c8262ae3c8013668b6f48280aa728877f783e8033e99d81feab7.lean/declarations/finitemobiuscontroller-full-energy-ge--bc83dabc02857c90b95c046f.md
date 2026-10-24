# finiteMobiusController_full_energy_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "369295883a9dbfe08d70cdf6a3dcc54e3f73712f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6afc05b-3c29-7299-2e49-862323ef3f0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63ae880f-4bf8-320b-66aa-c73d530a160b",
  "kind": "theorem",
  "lexical_name": "finiteMobiusController_full_energy_ge",
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
  "slug": "finitemobiuscontroller-full-energy-ge--bc83dabc02857c90b95c046f",
  "source": {
    "blob": "369295883a9dbfe08d70cdf6a3dcc54e3f73712f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 122,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc83dabc02857c90b95c046f1217914d7b39a0651cf17932b6831cb4be96e5a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63ae880f-4bf8-320b-66aa-c73d530a160b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMobiusController_full_energy_ge (X : ℕ) (hX : 2 ≤ X) (p : H)
    (α : ℝ) (hα : 0 ≤ α) :
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator (finiteMobiusController X p)‖ ^ 2 +
      α * ‖finiteMobiusController X p‖ ^ 2 :=
  source_full_energy_ge_of_input_half_zero α hα _ (finiteMobiusController_half_inner X hX p)

end
end FiniteMobiusControllerScratch


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FiniteMobiusControllerScratch.causalShift
#print FiniteMobiusControllerScratch.causalShift
#print axioms FiniteMobiusControllerScratch.causalShift
#check @FiniteMobiusControllerScratch.causalShift_ae
#print FiniteMobiusControllerScratch.causalShift_ae
#print axioms FiniteMobiusControllerScratch.causalShift_ae
#check @FiniteMobiusControllerScratch.causalShift_norm_le
#print FiniteMobiusControllerScratch.causalShift_norm_le
#print axioms FiniteMobiusControllerScratch.causalShift_norm_le
#check @FiniteMobiusControllerScratch.causalShift_exponential_inner
#print FiniteMobiusControllerScratch.causalShift_exponential_inner
#print axioms FiniteMobiusControllerScratch.causalShift_exponential_inner
#check @FiniteMobiusControllerScratch.mobiusReciprocalSum
#print FiniteMobiusControllerScratch.mobiusReciprocalSum
#print axioms FiniteMobiusControllerScratch.mobiusReciprocalSum
#check @FiniteMobiusControllerScratch.finiteMobiusController
#print FiniteMobiusControllerScratch.finiteMobiusController
#print axioms FiniteMobiusControllerScratch.finiteMobiusController
#check @FiniteMobiusControllerScratch.causalShift_half_inner
#print FiniteMobiusControllerScratch.causalShift_half_inner
#print axioms FiniteMobiusControllerScratch.causalShift_half_inner
#check @FiniteMobiusControllerScratch.finiteMobiusController_half_inner
#print FiniteMobiusControllerScratch.finiteMobiusController_half_inner
#print axioms FiniteMobiusControllerScratch.finiteMobiusController_half_inner
#check @FiniteMobiusControllerScratch.finiteMobiusController_residual_sq_ge
#print FiniteMobiusControllerScratch.finiteMobiusController_residual_sq_ge
#print axioms FiniteMobiusControllerScratch.finiteMobiusController_residual_sq_ge
#check @FiniteMobiusControllerScratch.finiteMobiusController_full_energy_ge
#print FiniteMobiusControllerScratch.finiteMobiusController_full_energy_ge
#print axioms FiniteMobiusControllerScratch.finiteMobiusController_full_energy_ge
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantee0ddf1d6056c8262ae3c8013668b6f48280aa728877f783e8033e99d81feab7.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `369295883a9dbfe08d70cdf6a3dcc54e3f73712f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
