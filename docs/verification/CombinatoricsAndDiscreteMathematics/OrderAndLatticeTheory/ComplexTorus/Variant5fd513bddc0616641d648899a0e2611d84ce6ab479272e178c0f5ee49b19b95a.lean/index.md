# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ComplexTorus.Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d53b041a97e1fe026e2a05ba6541026899fec045",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d53b041a97e1fe026e2a05ba6541026899fec045`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Torsion.Symbolic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexTorusTau](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/complextorustau--0e25a874cc0767ed5a3e94db.md) | 21 | `declaration-track:0e25a874cc0767ed5a3e94db8729809977ec0a95f86b7271695a7053c0b60e3a` |
| 2 | `structure` | [TorusPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/toruspoint--54d0882c21d73dc5b33da3ce.md) | 27 | `declaration-track:54d0882c21d73dc5b33da3ce72dca3ad6ca53f4e637c42a7c3fe33afdeb3cd7d` |
| 3 | `def` | [torusZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/toruszero--334449533bc2369fb66a5ca5.md) | 32 | `declaration-track:334449533bc2369fb66a5ca5a8be38da0769a206834e0208e6fc71936c83c006` |
| 4 | `def` | [torusAdd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torusadd--45a7bec09a45f59146f55e3e.md) | 35 | `declaration-track:45a7bec09a45f59146f55e3e648ac00b22d79ed25e08aa3c5f3d7b22e8c701dd` |
| 5 | `def` | [torusNeg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torusneg--bf3680d3fb95ec4a424ba3fb.md) | 38 | `declaration-track:bf3680d3fb95ec4a424ba3fb22abc7a0f781d1349c5c5ef99ed5e5b403c261fb` |
| 6 | `def` | [torusScalarMul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torusscalarmul--07dc05a23f940729e65581fe.md) | 41 | `declaration-track:07dc05a23f940729e65581fe26bb99885b6e1bf3f5329b82e1b371edb0642fff` |
| 7 | `def` | [torsionRepresentative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torsionrepresentative--06fcaf80add6ea0929ae1ff7.md) | 45 | `declaration-track:06fcaf80add6ea0929ae1ff7ef0d288b5c2f4fbcbe58d8a375b7035277da62c1` |
| 8 | `theorem` | [torus_identity_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torus-identity-add--84c44217716d99a0e3d9dfbb.md) | 48 | `result-track:84c44217716d99a0e3d9dfbbaf8624db6c150d38df23c0f88169916280e6f30d` |
| 9 | `theorem` | [torus_add_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torus-add-comm--6517d30c1dbd8688fb4a5313.md) | 54 | `result-track:6517d30c1dbd8688fb4a5313afc9592a5e32d6ab51657eb74f6135af2abdceb4` |
| 10 | `theorem` | [torus_n_torsion_representative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ComplexTorus/Variant5fd513bddc0616641d648899a0e2611d84ce6ab479272e178c0f5ee49b19b95a.lean/declarations/torus-n-torsion-representative--40627214fa1c1528ad013fcf.md) | 61 | `result-track:40627214fa1c1528ad013fcfb948d7c11d61794f115ca92e5398e7acc3051a7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
