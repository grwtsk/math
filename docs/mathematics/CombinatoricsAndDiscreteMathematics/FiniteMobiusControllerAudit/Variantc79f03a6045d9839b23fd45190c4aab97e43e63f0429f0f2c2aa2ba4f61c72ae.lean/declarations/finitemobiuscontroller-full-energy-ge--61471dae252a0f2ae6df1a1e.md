# finiteMobiusController_full_energy_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70d37967-ca17-c264-8b72-09979fd150d1",
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
  "slug": "finitemobiuscontroller-full-energy-ge--61471dae252a0f2ae6df1a1e",
  "source": {
    "blob": "63f480838012021523e05b765cc48c32151f0a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61471dae252a0f2ae6df1a1e2f7a612579b511094291296fdc8d668b62a948cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70d37967-ca17-c264-8b72-09979fd150d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–173.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteMobiusControllerAudit/Variantc79f03a6045d9839b23fd45190c4aab97e43e63f0429f0f2c2aa2ba4f61c72ae.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f480838012021523e05b765cc48c32151f0a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
