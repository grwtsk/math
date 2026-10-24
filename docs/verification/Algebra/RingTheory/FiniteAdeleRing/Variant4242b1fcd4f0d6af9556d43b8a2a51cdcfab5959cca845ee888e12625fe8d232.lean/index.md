# Verification target: GRWTSK.Algebra.RingTheory.FiniteAdeleRing.Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07585d9d173ea5d94be67a196bf0aec42f294b2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07585d9d173ea5d94be67a196bf0aec42f294b2`.

Source path: `GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteIntegralAdeles](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/finiteintegraladeles--432c2925944fe3c497a010fe.md) | 52 | `declaration-track:432c2925944fe3c497a010fe5a5912f283db32a80f90c2e6bb5a6db5de964432` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--7022bdda52f00e1ab2e9f9a4.md) | 60 | `declaration-track:7022bdda52f00e1ab2e9f9a43df0326774ff72a956a685cf542d3c4500602ed3` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--237aafe61830ced1250b0e44.md) | 63 | `declaration-track:237aafe61830ced1250b0e4407fa0956a89ebe989550962537bbb482ca5e591a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--7670b130e307354bf09105b1.md) | 66 | `declaration-track:7670b130e307354bf09105b1a968542a279fafdc9fc4524ce2c83125a4506225` |
| 5 | `def` | [ProdAdicCompletions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/prodadiccompletions--5a1e4ac13041460d53e378fa.md) | 74 | `declaration-track:5a1e4ac13041460d53e378fafb3e732bf0b55cf2063884268a8cbeb392e1bcc5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--ae5a35a76b0e125254f1973a.md) | 81 | `declaration-track:ae5a35a76b0e125254f1973af088f12d6abaaae605e289879cf5b3007bd4190e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--1ca9d6c6a18d4a7e088a2580.md) | 84 | `declaration-track:1ca9d6c6a18d4a7e088a25805ccfe583ea07cd522e0244a157e6b1d2ac4092d8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--d9532ff41c738895c16e2690.md) | 87 | `declaration-track:d9532ff41c738895c16e26909e3cd6265b31f67fa1375e93e0ea7ba800514ecc` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--ba5f156f1c551bc15db077f4.md) | 90 | `declaration-track:ba5f156f1c551bc15db077f475fba6f3cdd6a9b985d9fcf3d1e989b294454223` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--377b37d128221d4922750214.md) | 93 | `declaration-track:377b37d128221d4922750214bba33f2f256f1fb7b4ea3dd61f1015c84ab34806` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--3bfeaa4d519c4e2d051ee50f.md) | 102 | `declaration-track:3bfeaa4d519c4e2d051ee50f0c79ed6512a5eb6c01e180099712d49711e7b1d6` |
| 12 | `theorem` | [coe_apply](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/coe-apply--73658527b59d13249cc0f821.md) | 104 | `result-track:73658527b59d13249cc0f8219729ac0e1243a99abb660adfa0e941db32150304` |
| 13 | `def` | [Coe.addMonoidHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/coe-addmonoidhom--1ace9ae890fa92a9e801d2c9.md) | 110 | `declaration-track:1ace9ae890fa92a9e801d2c9c09cdcbc6c5ccb112b08df0faaafcaddc2c486c8` |
| 14 | `def` | [Coe.ringHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/coe-ringhom--bb18eefdbb9001d6d143e846.md) | 123 | `declaration-track:bb18eefdbb9001d6d143e846667d0d24965e3635ff5bd37474aa1e1b6da14a7d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--d4b610e98409c27273f34e3b.md) | 139 | `declaration-track:d4b610e98409c27273f34e3b0bf3b7d3e4e444a0e122a91acaddb87b8fec1e9a` |
| 16 | `instance` | [ProdAdicCompletions.algebra'](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/prodadiccompletions-algebra--a0c7e3a24e1da89cfcf5c6f8.md) | 142 | `declaration-track:a0c7e3a24e1da89cfcf5c6f86a131c1450231af1c13f1ec2113843931e122b1f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--db1385a4e2e4111ce8a6aaba.md) | 146 | `declaration-track:db1385a4e2e4111ce8a6aaba9079e1b7f96fe4f11315c8ab5e868853e89015dd` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/instance--ec0ad8dd65bedcf008e0dfed.md) | 149 | `declaration-track:ec0ad8dd65bedcf008e0dfed7d13c1a1aeb325eb81b656f776b7b5fff043d492` |
| 19 | `instance` | [ProdAdicCompletions.algebraCompletions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/prodadiccompletions-algebracompletions--6a82ec9e36bffbefb2bc5877.md) | 152 | `declaration-track:6a82ec9e36bffbefb2bc58776a6bfb91af24ede2db8c10fec8cbbb10fd9e2071` |
| 20 | `instance` | [ProdAdicCompletions.isScalarTower_completions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/prodadiccompletions-isscalartower-completions--95344384c8a1e1639e6ed5f0.md) | 156 | `declaration-track:95344384c8a1e1639e6ed5f045179747d6e4a634fcaf0f84819f177619904943` |
| 21 | `def` | [Coe.algHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/coe-alghom--b777f6ca5522a47b456a1fd1.md) | 167 | `declaration-track:b777f6ca5522a47b456a1fd14e5a2a41cf822581d2e310a09d9c2387fbee0816` |
| 22 | `theorem` | [Coe.algHom_apply](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/coe-alghom-apply--e0b12f191c44c3a90c2c9a4b.md) | 173 | `result-track:e0b12f191c44c3a90c2c9a4b83bedf4444ed1340e3eaefa41c7fc0c395aefa8e` |
| 23 | `def` | [IsFiniteAdele](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/isfiniteadele--ba289b2c9679a2c8d8511ef7.md) | 191 | `declaration-track:ba289b2c9679a2c8d8511ef7150157529afc7da23574f62dbc881961db91f389` |
| 24 | `theorem` | [add](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/add--b8539d181fbdd79bfad2576c.md) | 198 | `result-track:b8539d181fbdd79bfad2576c63839b2035c50ecb14e170cf752c1e41b87189fd` |
| 25 | `theorem` | [zero](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/zero--5951cfadc0db23f2b1de8793.md) | 216 | `result-track:5951cfadc0db23f2b1de87930df15c5c71966fdb857962b57bce17118f2e6ffd` |
| 26 | `theorem` | [neg](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/neg--465f22442cd3f1abc302814b.md) | 230 | `result-track:465f22442cd3f1abc302814bc954837e6e71b2f8ed7c02bb15d702b2858350f8` |
| 27 | `theorem` | [mul](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/mul--bdd857c51bb9ab498049a3d7.md) | 243 | `result-track:bdd857c51bb9ab498049a3d728e273c37d929d7bee355bd4664f45d423a259c9` |
| 28 | `theorem` | [one](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/one--cbc042a59d6616a7d6a4707a.md) | 265 | `result-track:cbc042a59d6616a7d6a4707ac783ba20f588be2c78bde920f2a5bee6121ff1c7` |
| 29 | `def` | [finiteAdeleRing](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/finiteadelering--5edc23055593c2983562510b.md) | 284 | `declaration-track:5edc23055593c2983562510b3b925ccadd5f3bf0ddd9bc49fbd30459009342b1` |
| 30 | `theorem` | [mem_finiteAdeleRing_iff](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/declarations/mem-finiteadelering-iff--4479874d7a9b13f17897ed3b.md) | 296 | `result-track:4479874d7a9b13f17897ed3b9a4b3957aebf5146eda182f7604513c85b3b0096` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
