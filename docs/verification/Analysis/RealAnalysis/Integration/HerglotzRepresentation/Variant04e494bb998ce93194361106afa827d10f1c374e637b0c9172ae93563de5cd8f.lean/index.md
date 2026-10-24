# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HerglotzRepresentation.Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c8325af6a651f514e6de285231ba58dd9232bb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c8325af6a651f514e6de285231ba58dd9232bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/herglotzintegrand--f35572ede818f8d71d658cc7.md) | 34 | `declaration-track:f35572ede818f8d71d658cc7e8d2b2d50837ce80989dd0ee1e6c1f0d0421c39d` |
| 2 | `structure` | [Representation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/representation--4613209a4a477c99205754d8.md) | 39 | `declaration-track:4613209a4a477c99205754d82b94a59c0dcf300c5ed37e212d18f2feaa3b3ec6` |
| 3 | `constant` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/constant--78c5ea572745e819d632ea3a.md) | 40 | `declaration-track:78c5ea572745e819d632ea3a88d0b8481b28799a45ef6f51fa66eaff205f8fd9` |
| 4 | `def` | [HerglotzRepresentationTheorem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/herglotzrepresentationtheorem--d55207323554f8b27ec52d75.md) | 55 | `declaration-track:d55207323554f8b27ec52d75c5f39f586cb6d4ed42a150b287ae7c2f3b391190` |
| 5 | `def` | [IsPurelyAtomic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/ispurelyatomic--8ad693ef1277be314eac1827.md) | 60 | `declaration-track:8ad693ef1277be314eac182723d7ce99a8df8238438e1ba536780f93861b9231` |
| 6 | `def` | [ConductorThreeAtomsMatchXiDivisor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/conductorthreeatomsmatchxidivisor--ff3914b6230da660875e05f8.md) | 70 | `declaration-track:ff3914b6230da660875e05f8757f776adf8021996a60ed35b145293291cc59c2` |
| 7 | `def` | [ConductorThreeHerglotzAtomTheorem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HerglotzRepresentation/Variant04e494bb998ce93194361106afa827d10f1c374e637b0c9172ae93563de5cd8f.lean/declarations/conductorthreeherglotzatomtheorem--716d40be9f010cb2dc629bc5.md) | 82 | `declaration-track:716d40be9f010cb2dc629bc5c24729f8526d9e3eeb6ba51216b64eb3907c39a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
