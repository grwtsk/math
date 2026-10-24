# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveAtlas.Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e00fade377068d00e7d2d7ba4dac884ef4dc0c0",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e00fade377068d00e7d2d7ba4dac884ef4dc0c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFibreWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/finitefibreweights--00ebf2bf13bd41069692684f.md) | 28 | `declaration-track:00ebf2bf13bd41069692684f546b43f59af99121048cf662e9d6a9540901af00` |
| 2 | `def` | [mass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mass--360260f152273e012134e6ed.md) | 41 | `declaration-track:360260f152273e012134e6ed6f4b63773ace74a14899c369c9f19c193a411b21` |
| 3 | `theorem` | [mass_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mass-pos--17c3eed5b0a4067ffeb53706.md) | 43 | `result-track:17c3eed5b0a4067ffeb5370606a18854d55d7ddfdd4103d338674b9d7d18c972` |
| 4 | `theorem` | [mass_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mass-ne-zero--659549cd2190e7828737a904.md) | 46 | `result-track:659549cd2190e7828737a904cd13e22fc04dc136be2504434ecc1dd95a01999e` |
| 5 | `def` | [mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mean--bf2f060430138ff608068575.md) | 50 | `declaration-track:bf2f060430138ff6080685756989b2c69f23614159a34d2dd5f43e0a0cdad137` |
| 6 | `def` | [FibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/fibreconstant--2a13d781605806c18cd2efe6.md) | 54 | `declaration-track:2a13d781605806c18cd2efe69f988014179dfc2b20803f8a36d8aa0694d1579b` |
| 7 | `theorem` | [mass_mul_mean](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mass-mul-mean--6871143227d9a5b6b16b676d.md) | 56 | `result-track:6871143227d9a5b6b16b676d254c18e5c585427f05e9ada9c844bcbd509268ca` |
| 8 | `theorem` | [mean_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mean-constant--f6ecdedeeaf985f97a71148f.md) | 60 | `result-track:f6ecdedeeaf985f97a71148fed8eaac0b0be137d534c364d8335f08e78c2243e` |
| 9 | `theorem` | [mean_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mean-add--6ca03ef35a116e19e0724b8f.md) | 66 | `result-track:6ca03ef35a116e19e0724b8f0efcf1e2969a4c2d992a20e82c35fea5aed1b1f2` |
| 10 | `theorem` | [mean_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/mean-smul--e26a623979146fcbc7cb52d0.md) | 71 | `result-track:e26a623979146fcbc7cb52d0b0d747891a079a71ab7e1b0a6f25441fac6fcbc8` |
| 11 | `def` | [averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging--d30eaf4a28aea3fbaeaaa2bd.md) | 80 | `declaration-track:d30eaf4a28aea3fbaeaaa2bd8d269f01e36fbdcf2773e304e542d30d6f40e0bd` |
| 12 | `theorem` | [averaging_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-apply--f41925ebffc2edf7e85912c6.md) | 88 | `result-track:f41925ebffc2edf7e85912c6fc116d8325cffce69bc9091c6e74250cd18ce673` |
| 13 | `theorem` | [averaging_fibreConstant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-fibreconstant--94bf172b4557d2247c0d8427.md) | 92 | `result-track:94bf172b4557d2247c0d84278bdf6613873ba08a2766151914e364268e055f54` |
| 14 | `theorem` | [averaging_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-eq-self--6a6b41d680590788fa795c3b.md) | 95 | `result-track:6a6b41d680590788fa795c3b19212dfcedd11f618e6e04de8cd6d081050108ff` |
| 15 | `theorem` | [averaging_eq_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-eq-self-iff--d9b45aa1c8018efe672ca72e.md) | 103 | `result-track:d9b45aa1c8018efe672ca72e74961e6602d315e9e5a4317070b6f57045f6781b` |
| 16 | `theorem` | [averaging_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-idempotent--c9827eee1c8063baf303afc0.md) | 109 | `result-track:c9827eee1c8063baf303afc09bf820ba24cf9e02fc7f24ef27631d12fdacf4eb` |
| 17 | `theorem` | [weighted_residual_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/weighted-residual-sum--f9d35762a7fec71dcf12e3b9.md) | 113 | `result-track:f9d35762a7fec71dcf12e3b96ccd06c089ba1bd69644c72cdb8609c1a136c90a` |
| 18 | `def` | [positiveForm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/positiveform--1241c7e667c227482195d31f.md) | 124 | `declaration-track:1241c7e667c227482195d31fa75235f971eeedc611df6ac4cbb68c154500aa86` |
| 19 | `theorem` | [fibreConstant_orthogonal_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/fibreconstant-orthogonal-residual--901bc7307d925be139a5cea1.md) | 144 | `result-track:901bc7307d925be139a5cea1031592608cf38bb5feeb8686337cf12af975e795` |
| 20 | `def` | [projector](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/projector--03d9cf49a4ad9698ae1c55a9.md) | 156 | `declaration-track:03d9cf49a4ad9698ae1c55a9b0b9b6216bb4ba7c874308f7c962c83e16effb09` |
| 21 | `theorem` | [form_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/form-eq-zero-iff--2d2d939998d0ccd92cbfbd96.md) | 162 | `result-track:2d2d939998d0ccd92cbfbd96019b188cdf0540c44a0296d79e0f8cb191df65a2` |
| 22 | `theorem` | [quadratic_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/quadratic-decomposition--5cfc8a093b43292c13e29e65.md) | 177 | `result-track:5cfc8a093b43292c13e29e6598559337c57704f1e392d580bc0c39609bbcfc2d` |
| 23 | `theorem` | [averaging_contraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-contraction--cc9676bc6f29b2c213b75b4b.md) | 183 | `result-track:cc9676bc6f29b2c213b75b4b5fce2b7ff7fdfd95bdd7097842d5b1e07324fbca` |
| 24 | `theorem` | [residual_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/residual-zero-iff--f2c323f3621a80713308a4fe.md) | 189 | `result-track:f2c323f3621a80713308a4fe214cfa0522e92e100f36239395bd0d38bfa3a13e` |
| 25 | `theorem` | [averaging_self_adjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-self-adjoint--b8b6192c58bcc186b3f2f2c6.md) | 195 | `result-track:b8b6192c58bcc186b3f2f2c626aaacd967b088da7fdc8f867612c60cc73e063e` |
| 26 | `theorem` | [approximation_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/approximation-decomposition--915916fe06154e3eccbfd34d.md) | 211 | `result-track:915916fe06154e3eccbfd34d981f23c2b2b108d79359fc2f4a57d2bd42b66af1` |
| 27 | `theorem` | [averaging_minimizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-minimizes--1f86a11a4b4440de2b87be99.md) | 222 | `result-track:1f86a11a4b4440de2b87be999d46906313d6ea521c17c335d1839d3ebc693187` |
| 28 | `theorem` | [minimal_error_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/minimal-error-iff--8c4a9495e17f1c03c3dfebf8.md) | 231 | `result-track:8c4a9495e17f1c03c3dfebf886b09646c7222dc31eb3a590348084249b6492a7` |
| 29 | `theorem` | [fibreConstant_iff_factors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/fibreconstant-iff-factors--00a18e5ae552980396eddf38.md) | 246 | `result-track:00a18e5ae552980396eddf38f2f119925660fb80235ce6ba142ee87b2a0f3860` |
| 30 | `theorem` | [averaging_coarser](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/averaging-coarser--e7b3293168209af3e6bd33a0.md) | 255 | `result-track:e7b3293168209af3e6bd33a0bab37c427da8404de4e368c35bdd0c0eb2c2d963` |
| 31 | `theorem` | [coarser_averaging](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/coarser-averaging--5bb8a2ebd05c6695a560c77d.md) | 262 | `result-track:5bb8a2ebd05c6695a560c77d6c4c12446a95406ed1787a9612e965261058cbac` |
| 32 | `theorem` | [coarser_error_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/coarser-error-monotone--9ed4b2230697187fcb91ce64.md) | 278 | `result-track:9ed4b2230697187fcb91ce64d0b9fded2fb3a5824d9d485ae5ca2174346d4893` |
| 33 | `def` | [unequalWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/unequalweights--66b19f282918f8967a89d78a.md) | 294 | `declaration-track:66b19f282918f8967a89d78a4b745b957aa86eaceb913ab5d38bd4823faf8da3` |
| 34 | `def` | [varying](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/varying--2e25e03d637955e2f70bbe03.md) | 299 | `declaration-track:2e25e03d637955e2f70bbe03145da85bb8e76dc956a799ca6097a11625e426e4` |
| 35 | `theorem` | [unequal_average](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/unequal-average--cdb6b07a3d8ae8dc7705feeb.md) | 302 | `result-track:cdb6b07a3d8ae8dc7705feebc9246f7bbd224694c57ce0ac11de50b272c43d6b` |
| 36 | `theorem` | [unequal_residual_energy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/unequal-residual-energy--8272d15f8a80b857a8e79572.md) | 308 | `result-track:8272d15f8a80b857a8e79572de79df70482cf3d0e72f98fbd0e76825e40148d2` |
| 37 | `theorem` | [varying_not_fixed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/varying-not-fixed--d415605c99ee91dac92b1ada.md) | 316 | `result-track:d415605c99ee91dac92b1adac180ac25ffc844b2b45cf51b85c417c17a1537ce` |
| 38 | `theorem` | [singleton_fibres_retain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/declarations/singleton-fibres-retain--964da31fd34177bf2643ff23.md) | 323 | `result-track:964da31fd34177bf2643ff233d172ebff60808b3fdd761b0199b2a4ba053e892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
