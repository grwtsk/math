# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NNNorm.Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cdaaaf1048bfb8c2e2342b1e0164b3ad5bf201e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cdaaaf1048bfb8c2e2342b1e0164b3ad5bf201e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/nnnorm-def--7467e27465acae9630dd8b22.md) | 49 | `result-track:7467e27465acae9630dd8b22988894ee7f8dbd253cdba9835db008fe58d36e3b` |
| 2 | `theorem` | [opNNNorm_le_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-le-bound--3ef916d7803bf95ad088b7f0.md) | 56 | `result-track:3ef916d7803bf95ad088b7f067a1af1e4a87941e5c7313b899948d55894d5e9b` |
| 3 | `theorem` | [opNNNorm_le_bound'](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-le-bound--ba758b471e9cb62f80152a7c.md) | 61 | `result-track:ba758b471e9cb62f80152a7c6be484506bb9a2680faf1a51d3dd157230e1de07` |
| 4 | `theorem` | [opNNNorm_le_of_unit_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-le-of-unit-nnnorm--d1dd37dbe23e34b285c59205.md) | 68 | `result-track:d1dd37dbe23e34b285c59205bd481dd804197dea24e09a466f638452c116f76b` |
| 5 | `theorem` | [opNNNorm_le_of_lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-le-of-lipschitz--9633a93e5fe5b615d61c26f4.md) | 72 | `result-track:9633a93e5fe5b615d61c26f491f59ebf782aee66490c2476360f18b60b63d260` |
| 6 | `theorem` | [opNNNorm_eq_of_bounds](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-eq-of-bounds--cae3a1c7bbacb18d1ddfb591.md) | 77 | `result-track:cae3a1c7bbacb18d1ddfb59142a50f3ba2414203fd24b3bbca5cbfc05791a381` |
| 7 | `theorem` | [opNNNorm_le_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-le-iff--9456c819b7b0f00586249ea3.md) | 82 | `result-track:9456c819b7b0f00586249ea383309371eb077e48887f3d890f65fb582d2dedb1` |
| 8 | `theorem` | [isLeast_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/isleast-opnnnorm--4d680858ed531d4020556e09.md) | 86 | `result-track:4d680858ed531d4020556e09b25d7022fbc63048f54aab81c080221bc57ff384` |
| 9 | `theorem` | [opNNNorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/opnnnorm-comp-le--5a3c4b88be303999b0af70f2.md) | 89 | `result-track:5a3c4b88be303999b0af70f22655ea5e6a4b4351d255db68b530dad53256eba4` |
| 10 | `lemma` | [opENorm_comp_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/openorm-comp-le--0953d4b38b6f71ddae3e3e07.md) | 92 | `result-track:0953d4b38b6f71ddae3e3e07bcb8a1dd3947c462d081c67b804ab73e24ff8e10` |
| 11 | `theorem` | [le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/le-opnnnorm--fd91ebbd7dfb06c0ebe2be01.md) | 95 | `result-track:fd91ebbd7dfb06c0ebe2be01f39314f7ddd5cf95b5091d944eb6f1179c2e51ce` |
| 12 | `lemma` | [le_opENorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/le-openorm--79d4d299307a957ec9801176.md) | 98 | `result-track:79d4d299307a957ec98011768eef4418faf7095c1a748c35d646cf3ce58ab91d` |
| 13 | `theorem` | [nndist_le_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/nndist-le-opnnnorm--e0b1f1865a12e4b42f979ccc.md) | 100 | `result-track:e0b1f1865a12e4b42f979ccc50fcbfb3f5fc749080ebf44c10a0160da24a5b47` |
| 14 | `theorem` | [lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/lipschitz--298a03ac80a3ce552c3ec274.md) | 105 | `result-track:298a03ac80a3ce552c3ec27436da99ea7d4f9d7e6ebe225f8aac7eb2adcf4569` |
| 15 | `theorem` | [lipschitz_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/lipschitz-apply--72348f4b24f7e4759519adfc.md) | 109 | `result-track:72348f4b24f7e4759519adfc04e4180b94c496b75c6840ca6a44cad0ff7327c4` |
| 16 | `theorem` | [exists_mul_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/exists-mul-lt-apply-of-lt-opnnnorm--61c27878d350c6b9819922f1.md) | 118 | `result-track:61c27878d350c6b9819922f1c7755a1eb1e20a5b455b609cf407c5751466acd7` |
| 17 | `theorem` | [exists_mul_lt_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/exists-mul-lt-of-lt-opnorm--04511121073845a38aa9c647.md) | 124 | `result-track:04511121073845a38aa9c647b31b3ef21f2447afc83b575e684cd230fdc6d262` |
| 18 | `theorem` | [exists_lt_apply_of_lt_opNNNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/exists-lt-apply-of-lt-opnnnorm--57b57599d70181a925d5291c.md) | 129 | `result-track:57b57599d70181a925d5291c76ebac108a1f95192c64412da314f179dd535a47` |
| 19 | `theorem` | [exists_lt_apply_of_lt_opNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/exists-lt-apply-of-lt-opnorm--6acde7324751fca6d431fcfe.md) | 145 | `result-track:6acde7324751fca6d431fcfe6e059e22f7726b493702fa595e0c662b2608337f` |
| 20 | `theorem` | [sSup_unit_ball_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/ssup-unit-ball-eq-nnnorm--02125b905ea06aece00addb9.md) | 154 | `result-track:02125b905ea06aece00addb9eb4f5de230769e293e8a41b1d68f57ddb92c849b` |
| 21 | `theorem` | [sSup_unit_ball_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/ssup-unit-ball-eq-norm--6248a97727f5735810791232.md) | 165 | `result-track:6248a97727f5735810791232602d0adc22b66f1502a5b8e3b666b2363115baf1` |
| 22 | `theorem` | [sSup_unitClosedBall_eq_nnnorm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/ssup-unitclosedball-eq-nnnorm--af5de275a1c95807af967f68.md) | 171 | `result-track:af5de275a1c95807af967f684c58c1ef816633c118e80d6d5df58784d2aa03c1` |
| 23 | `theorem` | [sSup_unitClosedBall_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/ssup-unitclosedball-eq-norm--111e31010ee77459b8a26e18.md) | 186 | `result-track:111e31010ee77459b8a26e18c836659b245fe98f70aaedf7f28eb2a8ade880ec` |
| 24 | `theorem` | [lipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NNNorm/Variant49a3b966ceda59a2b4ec53b1a41500a3b77e799b3193d2a5adb92ce9ee862017.lean/declarations/lipschitz--5b280717148565c54a257ad4.md) | 207 | `result-track:5b280717148565c54a257ad4b7c63b6e889d04927604575b8dbfd3914ce29f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
