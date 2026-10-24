# Verification target: GRWTSK.Algebra.GroupTheory.InvSubmonoid.Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20712c5b83e31245e375a96dba4423f71acda9d0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20712c5b83e31245e375a96dba4423f71acda9d0`.

Source path: `GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Inverses` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/invsubmonoid--3b8e9d190d97e73963f5f609.md) | 38 | `declaration-track:3b8e9d190d97e73963f5f60905fd459bc2612dc4d92f0e8ed9e5153a12ab05e8` |
| 2 | `theorem` | [submonoid_map_le_is_unit](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/submonoid-map-le-is-unit--e30d187bdd0d6feb08887e7a.md) | 43 | `result-track:e30d187bdd0d6feb08887e7a55c49de4c90c120c82ff7c58d33f1f62679a8fb4` |
| 3 | `abbrev` | [equivInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/equivinvsubmonoid--8f8c1a3396b12685ceac21ce.md) | 48 | `declaration-track:8f8c1a3396b12685ceac21ce6e111efd33ac1c1a8f03ac68fa71f894abc925d4` |
| 4 | `def` | [toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/toinvsubmonoid--069ec26153d679ba893c4af3.md) | 52 | `declaration-track:069ec26153d679ba893c4af334736274c903dbde5ea6d3edac3216bc9baf7a1b` |
| 5 | `theorem` | [toInvSubmonoid_surjective](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/toinvsubmonoid-surjective--b7773a0db009d5d6e3f8d534.md) | 55 | `result-track:b7773a0db009d5d6e3f8d534508e863fce65a9e4c5ab5728cc5bf57bc1795673` |
| 6 | `theorem` | [toInvSubmonoid_mul](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/toinvsubmonoid-mul--a2dc43ab5560e94f18b12494.md) | 60 | `result-track:a2dc43ab5560e94f18b12494c77ab53bb56b0df60dca4fb63a80178f8b3d2e54` |
| 7 | `theorem` | [mul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/mul-toinvsubmonoid--6ed2a88a5fd79baca7ab462c.md) | 64 | `result-track:6ed2a88a5fd79baca7ab462c83517c6c6da820900800fc3b399afe8103fef584` |
| 8 | `theorem` | [smul_toInvSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/smul-toinvsubmonoid--9bbf8c2ed49ade880066b948.md) | 68 | `result-track:9bbf8c2ed49ade880066b948949798035ae65c8dbf6a0b1a0c873dd22c84d19c` |
| 9 | `theorem` | [surj''](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/surj--9cba5feb8fab13e1679582fa.md) | 77 | `result-track:9cba5feb8fab13e1679582faa88a57f62a1684847386a378b9b72ba37240a3e7` |
| 10 | `theorem` | [toInvSubmonoid_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/toinvsubmonoid-eq-mk--13ae93939e446f75f2b03cf6.md) | 83 | `result-track:13ae93939e446f75f2b03cf683a2e04db3d2c3b5671d3cccbc30afd3545ba835` |
| 11 | `theorem` | [mem_invSubmonoid_iff_exists_mk'](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/mem-invsubmonoid-iff-exists-mk--acdc6b121eba9201206fefc6.md) | 87 | `result-track:acdc6b121eba9201206fefc65a4a4acddc7cb803d996816c68ec5dfbacfb8d99` |
| 12 | `theorem` | [span_invSubmonoid](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/span-invsubmonoid--853597872144d35df75c15a2.md) | 95 | `result-track:853597872144d35df75c15a2a47a61c15f18975561e4474b7f48e48145e12dac` |
| 13 | `theorem` | [finiteType_of_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/declarations/finitetype-of-monoid-fg--7f215ccbf36602f8897f2db4.md) | 101 | `result-track:7f215ccbf36602f8897f2db49b0e3a9590dd45ab65418eb2ac4963ef8e2def88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
