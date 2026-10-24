# Verification target: GRWTSK.Algebra.FunctionField.Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9456a551736955d6cda659d747e49f656037396",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/index.md) · [Full source](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9456a551736955d6cda659d747e49f656037396`.

Source path: `GRWTSK/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.Degree` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.ValuedField` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunctionField](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/functionfield--1d9512c0c72f7761afea2579.md) | 54 | `declaration-track:1d9512c0c72f7761afea25799e75a6d2a37d9f50976473e4b30fd50081da4b68` |
| 2 | `theorem` | [functionField_iff](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/functionfield-iff--bc66d36b5ca2598b0218cfeb.md) | 58 | `result-track:bc66d36b5ca2598b0218cfeb0a28532b54353d4421eef9ca5918760e1c8e635c` |
| 3 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/algebramap-injective--aa96ec291a54f2210187d50e.md) | 79 | `result-track:aa96ec291a54f2210187d50e113e3e13223ad33824f2bd7232e9449917c98430` |
| 4 | `def` | [ringOfIntegers](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/ringofintegers--c779c4f8e029a126648f068f.md) | 93 | `declaration-track:c779c4f8e029a126648f068f192e8e73f7c98cec2cdd11cda232a3c0b071e3b8` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--9197490013252769c4a36bc9.md) | 100 | `declaration-track:9197490013252769c4a36bc971102df858add503bd447567a8d4dfe9b7262bf7` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--a7bee5b60c8baaf123943bbb.md) | 103 | `declaration-track:a7bee5b60c8baaf123943bbb008b91a07f102605b3318ad1781b5f0d41e12be2` |
| 7 | `theorem` | [algebraMap_injective](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/algebramap-injective--85bd7c2228060f74bbc48c67.md) | 108 | `result-track:85bd7c2228060f74bbc48c6784edc869183321420bfd215071cef09416990e85` |
| 8 | `theorem` | [not_isField](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/not-isfield--93201115f34f6f9cbc1b4663.md) | 118 | `result-track:93201115f34f6f9cbc1b46630e5629413a9f3751272e594f6cfa38a10277d174` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--0cb057f5335c529939233504.md) | 125 | `declaration-track:0cb057f5335c5299392335049043a893823c33a803e15a3eb8cae61912a8d69d` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--b8c92c063a325a306c593d33.md) | 128 | `declaration-track:b8c92c063a325a306c593d336c0d19544dd8aacbd42afc72ff74aac2078af0e4` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--011dc33fb322675256bae64d.md) | 131 | `declaration-track:011dc33fb322675256bae64d7072ac63828b330418a1061894b3b9c4e53ed535` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--777e952310a85d00c8bda218.md) | 134 | `declaration-track:777e952310a85d00c8bda218149a35589decc8da56905de223f6d1c56efc0372` |
| 13 | `def` | [inftyValuationDef](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluationdef--eba8d0c511f175ab1339a635.md) | 149 | `declaration-track:eba8d0c511f175ab1339a635908bd9c771d6dab1876960b8bd12f4a846f1f5af` |
| 14 | `theorem` | [InftyValuation.map_zero'](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-map-zero--df9c82261fdbf76a3a59360f.md) | 152 | `result-track:df9c82261fdbf76a3a59360f503c89662773deb7100ada6ad64f9996ffc5126c` |
| 15 | `theorem` | [InftyValuation.map_one'](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-map-one--91ead6c5922d5dd8ec3da434.md) | 155 | `result-track:91ead6c5922d5dd8ec3da434274a04888c819896e3d57a67673aa2b9c137878c` |
| 16 | `theorem` | [InftyValuation.map_mul'](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-map-mul--3d536926976b9a651b462f89.md) | 158 | `result-track:3d536926976b9a651b462f89c9f436e1bcbdf6b94f2a1eb72f438b80f7917ba3` |
| 17 | `theorem` | [InftyValuation.map_add_le_max'](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-map-add-le-max--8d579a1c84a2b669a499351b.md) | 168 | `result-track:8d579a1c84a2b669a499351b22331ef01348e368034e8ad6e31c5c39f5c17a85` |
| 18 | `theorem` | [inftyValuation_of_nonzero](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-of-nonzero--2eceb86000609eb207d5ab1b.md) | 187 | `result-track:2eceb86000609eb207d5ab1b4cbcf238d3643e68921900c8e7b12f8f209f0ec2` |
| 19 | `def` | [inftyValuation](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation--ce6c377eb97c3c849ec5d540.md) | 192 | `declaration-track:ce6c377eb97c3c849ec5d5405056549f3f4f402d0737cd185095745a022e9a2f` |
| 20 | `theorem` | [inftyValuation_apply](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-apply--1395f74d4e43803db94a322b.md) | 200 | `result-track:1395f74d4e43803db94a322b7140d6fed9558341b4f3cb7e2c1f968b89f935d1` |
| 21 | `theorem` | [inftyValuation.C](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-c--0617bcaea419dcf792724886.md) | 203 | `result-track:0617bcaea419dcf7927248864c58450089356e553321253c17d4076b4b9b3845` |
| 22 | `theorem` | [inftyValuation.X](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-x--520be4323e6a5927f4916333.md) | 208 | `result-track:520be4323e6a5927f4916333b92e8ddba2295c02589b0de09f9a135f506bc72a` |
| 23 | `theorem` | [inftyValuation.polynomial](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluation-polynomial--da291a76dd7160a95a792650.md) | 213 | `result-track:da291a76dd7160a95a7926509bf583b5f5b86589c3e54949dc5dc72622d361a6` |
| 24 | `def` | [inftyValuedFqt](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluedfqt--a96c4d64adc0e09b24eb2a4c.md) | 220 | `declaration-track:a96c4d64adc0e09b24eb2a4c05b347abdc61d60fbcf74e7f6967071f69e0b584` |
| 25 | `theorem` | [inftyValuedFqt.def](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/inftyvaluedfqt-def--494b7f3c1a12528dea794533.md) | 223 | `result-track:494b7f3c1a12528dea794533ea66787ad8b20818f684699fd1fb35e496d24ce5` |
| 26 | `def` | [FqtInfty](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/fqtinfty--db3783eafef2d44ac7f57f38.md) | 228 | `declaration-track:db3783eafef2d44ac7f57f38da3435630a22f03b4b43d83be73615464c016707` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--771b62b73daf31d5aa052bbb.md) | 231 | `declaration-track:771b62b73daf31d5aa052bbbea200ab22dd6ff2463474b9a792bdef7e4cebb0d` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/instance--785603587e94e4d43de9b8c4.md) | 235 | `declaration-track:785603587e94e4d43de9b8c4ce2487b51755e060c1061a20d0b2985a183fb46d` |
| 29 | `instance` | [valuedFqtInfty](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/valuedfqtinfty--bba97e9d77796f3c3c1158c3.md) | 239 | `declaration-track:bba97e9d77796f3c3c1158c343a2b8334268389ee5d86dcb7fc2ab504e0b8f93` |
| 30 | `theorem` | [valuedFqtInfty.def](../../../../mathematics/Algebra/FunctionField/Variant27ead917e2a5878c3791289b8249089cc14d5275e1bf54814ac744617e10cbd6.lean/declarations/valuedfqtinfty-def--1ad5440e6347c4335693c383.md) | 242 | `result-track:1ad5440e6347c4335693c383c13d570d15984514fab57c3330f5ae21a1e5e87d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
