# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticBernsteinMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c01746f4eb4fca2341f3f7c5996bf7371e606d4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c01746f4eb4fca2341f3f7c5996bf7371e606d4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTailDefect`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticTailDefect.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerCoefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/powercoefficients--0bae5fbe153428da26fbc0fb.md) | 23 | `declaration-track:0bae5fbe153428da26fbc0fb23e7c9158f0ea7e000972b244439da4cba6aea38` |
| 2 | `lemma` | [basis_polynomial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/basis-polynomial--bdae80b1ec270107dcb8eb54.md) | 28 | `result-track:bdae80b1ec270107dcb8eb54dae39ad0cfd41c9b1170313954aa6473d7f5385f` |
| 3 | `lemma` | [basis_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/basis-continuous--d8045661af2a7bf32f5f28f8.md) | 32 | `result-track:d8045661af2a7bf32f5f28f8bc89cc4176add8b5c7191ec9892b3e082ef9e3aa` |
| 4 | `def` | [moment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/moment--ab0c0d935d25a22542681567.md) | 37 | `declaration-track:ab0c0d935d25a22542681567190ef7272f4b18c5350d09008a70457153c6237c` |
| 5 | `lemma` | [moment_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/moment-integral--063c4363bfeafe245dee1479.md) | 40 | `result-track:063c4363bfeafe245dee14798ae6ac512a451006d6462c955c52bfe6ad710732` |
| 6 | `lemma` | [linear_moment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/linear-moment--0e797f2a595f6ef17cb3a252.md) | 59 | `result-track:0e797f2a595f6ef17cb3a252c8290ab23d25cef647e26ed5e051f900a9e3e5e4` |
| 7 | `lemma` | [quadratic_moment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/quadratic-moment--e6eb5c9229ddb36fcb2cd2c6.md) | 71 | `result-track:e6eb5c9229ddb36fcb2cd2c64176c4c07ac1a959ce71b87546a150ba62cf5d87` |
| 8 | `def` | [deficitCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/deficitcoefficient--82c00e37ac071e01459ea24f.md) | 83 | `declaration-track:82c00e37ac071e01459ea24f86368c165f6fc8e3e275836fab6826f2159f41ad` |
| 9 | `lemma` | [deficitCoefficient_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/deficitcoefficient-nonneg--fd22abc3bd787a237bcaf2d1.md) | 86 | `result-track:fd22abc3bd787a237bcaf2d134428198374117ab200f939e396539bc032232a3` |
| 10 | `def` | [density](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/density--89d0a46191b5eb2a71040ad1.md) | 96 | `declaration-track:89d0a46191b5eb2a71040ad1667f70f68aa49d32983289dba92ec24373ce9c12` |
| 11 | `lemma` | [density_continuous](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/density-continuous--36083c2900debabfb392e4eb.md) | 99 | `result-track:36083c2900debabfb392e4eb7c2ea9a3015b8199aeb885093985d3eb0d129c5d` |
| 12 | `lemma` | [density_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/density-nonneg--959e1dd6c2d39cce4e5346ab.md) | 103 | `result-track:959e1dd6c2d39cce4e5346ab07ae2c57bfa7cbcf38c72b921a60aa3d9b10238a` |
| 13 | `lemma` | [density_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/density-eq--be35e6c90f05bf8333a4fe17.md) | 110 | `result-track:be35e6c90f05bf8333a4fe170782aa336fdc93b12e00bd99bdc1888fd8106882` |
| 14 | `lemma` | [density_le_deficit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/density-le-deficit--4cb2de1c5d71caceb7320c47.md) | 116 | `result-track:4cb2de1c5d71caceb7320c47aa53b3b3bd24d991b1a489f1e43a1492978f83de` |
| 15 | `lemma` | [kernel_density_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/kernel-density-bound--c483761c278f09a0bdda6967.md) | 132 | `result-track:c483761c278f09a0bdda6967958b64779013f42a9975e280749f78d71383c96e` |
| 16 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/center--db5348d796125a6eb50bb974.md) | 149 | `declaration-track:db5348d796125a6eb50bb9742a7b2b5ace8db5b0518e2e18d771dbc76ce2781a` |
| 17 | `def` | [tangent7](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/tangent7--a4f5232ff344e89cfafa12a8.md) | 151 | `declaration-track:a4f5232ff344e89cfafa12a8ba4c3fb2e72fbc3eccafa36c26ef6da86350fc2f` |
| 18 | `def` | [tangent8](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/tangent8--dbc661641fc1bf5507ede010.md) | 152 | `declaration-track:dbc661641fc1bf5507ede010d93d2c34bb544a549501974c23840daaf8d2fc11` |
| 19 | `def` | [lower0](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/lower0--88946d2ce07f7c2ed5423e35.md) | 154 | `declaration-track:88946d2ce07f7c2ed5423e3507030506badfa848a6952c7fc4efde9c59559310` |
| 20 | `def` | [lower1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/lower1--69e43e30d14592e82360e2d8.md) | 157 | `declaration-track:69e43e30d14592e82360e2d82297ffcc0a5c05cb6616e8e74c0801622c46869f` |
| 21 | `def` | [mass0](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/mass0--9c5c57e23bac9b58d4592b40.md) | 161 | `declaration-track:9c5c57e23bac9b58d4592b402778be4c73131794de7579bc12d3a2f44d279c23` |
| 22 | `def` | [mass1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/mass1--67af5c94cbcd4f9afec57242.md) | 166 | `declaration-track:67af5c94cbcd4f9afec57242085c9b3c2b69b3790055ec1e108df7d6742dc195` |
| 23 | `lemma` | [lower0_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/lower0-integral--4b149dc8a08b6c47c5798a87.md) | 172 | `result-track:4b149dc8a08b6c47c5798a8798ec5d85e7e342772d90f95c3111e973308ea6f3` |
| 24 | `lemma` | [lower1_integral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/lower1-integral--88117da9a02c1d62d1036b91.md) | 199 | `result-track:88117da9a02c1d62d1036b9178dbf936847fe8304bf806e2f68eafca00e020dd` |
| 25 | `theorem` | [total_mass0](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/total-mass0--7d13047968dc6ee31b2da371.md) | 229 | `result-track:7d13047968dc6ee31b2da371abdba43034e4070efeb776947f1497486960a22e` |
| 26 | `theorem` | [total_mass1](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticBernsteinMass.lean/declarations/total-mass1--5530a8391422cdd434402474.md) | 233 | `result-track:5530a8391422cdd434402474d7d9d6131e92640513dc6f38df8a4f54f6197ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
