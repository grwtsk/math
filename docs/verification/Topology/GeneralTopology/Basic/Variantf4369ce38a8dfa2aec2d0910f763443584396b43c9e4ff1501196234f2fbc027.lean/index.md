# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a17491df6ec4d815c0d84a1ecf0df8b52902b03b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a17491df6ec4d815c0d84a1ecf0df8b52902b03b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-empty--5a37d331b364b2a870352334.md) | 47 | `result-track:5a37d331b364b2a870352334296f43c1b921127387e3062d38802810b8745074` |
| 2 | `theorem` | [measure_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-mono--bf913fc3ad768880815ced8e.md) | 50 | `result-track:bf913fc3ad768880815ced8e7f756de1cd5eb4212fd900c349d3b9458f3e3460` |
| 3 | `theorem` | [measure_mono_null](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-mono-null--969fc734a80c2f9751c795f4.md) | 53 | `result-track:969fc734a80c2f9751c795f4206a9436c8a644e439ab07667e9cc5fdddd37e44` |
| 4 | `lemma` | [measure_eq_top_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-eq-top-mono--c78cc1f6468d96c31814acf0.md) | 56 | `result-track:c78cc1f6468d96c31814acf02abbddcd06fb97fff03c5098d036342981810f19` |
| 5 | `lemma` | [measure_lt_top_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-lt-top-mono--60a57685829091f34a10bff0.md) | 57 | `result-track:60a57685829091f34a10bff060e43bc66f0d5dd989200a6caff2ce1f0b0ed7b6` |
| 6 | `theorem` | [measure_pos_of_superset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-pos-of-superset--81046893f183881dd0e719c8.md) | 59 | `result-track:81046893f183881dd0e719c8e6a2063f84db71c1e7ed30ad2ff04580db1cbb5f` |
| 7 | `theorem` | [measure_iUnion_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-iunion-le--e628038eda015145fcfc0da9.md) | 62 | `result-track:e628038eda015145fcfc0da9ad50a644310750f964de4d9535081a86f5d485df` |
| 8 | `theorem` | [measure_biUnion_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-biunion-le--8df9f336c25df169b9573103.md) | 70 | `result-track:8df9f336c25df169b95731037ee213367a67bd205d60956aa02cef7985cc8e14` |
| 9 | `theorem` | [measure_biUnion_finset_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-biunion-finset-le--e2572885dd2c51acdd6903f6.md) | 76 | `result-track:e2572885dd2c51acdd6903f60b2ca0ada860fa3a9090d465c2580fd22e782617` |
| 10 | `theorem` | [measure_iUnion_fintype_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-iunion-fintype-le--28c15c6092586885ca705b7c.md) | 80 | `result-track:28c15c6092586885ca705b7c8a6d976e558e99b808eeb47604e01e5226b8eda9` |
| 11 | `theorem` | [measure_union_le](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-union-le--c9f631a5f510af09d68f7ba2.md) | 84 | `result-track:c9f631a5f510af09d68f7ba242bd17e950ed88f77f572b9b133a9866a802216e` |
| 12 | `lemma` | [measure_univ_le_add_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-univ-le-add-compl--fdfcfbcad80163e558164c2f.md) | 87 | `result-track:fdfcfbcad80163e558164c2ff9449c00c5b803537b4817438db115b0cf75a963` |
| 13 | `theorem` | [measure_le_inter_add_diff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-le-inter-add-diff--6dbd7f588b9660d41745a680.md) | 90 | `result-track:6dbd7f588b9660d41745a6804a68b20b76a503214a7f0c70789373295a54f5b2` |
| 14 | `theorem` | [measure_diff_null](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-diff-null--69cade7558841f25690815c2.md) | 93 | `result-track:69cade7558841f25690815c263f33f6f118ec99bbe6211fdc1ee7c19a73ed65a` |
| 15 | `theorem` | [measure_biUnion_null_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-biunion-null-iff--0e1bbc79cc35446a89f5100e.md) | 99 | `result-track:0e1bbc79cc35446a89f5100eb50f509ea5d27958bd5fac8811d432152347742d` |
| 16 | `theorem` | [measure_sUnion_null_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-sunion-null-iff--314e098d92776c01413fe202.md) | 105 | `result-track:314e098d92776c01413fe2024f44d40c7c4ee08e63548031067489c1533e3cb2` |
| 17 | `theorem` | [measure_iUnion_null_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-iunion-null-iff--075931cf278811ec8bdd6893.md) | 110 | `result-track:075931cf278811ec8bdd6893aff18b4f8e18140b44ba3cc03db559f79f7d2b8e` |
| 18 | `theorem` | [measure_union_null_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-union-null-iff--cfa68facf550ca9f9e676bfb.md) | 117 | `result-track:cfa68facf550ca9f9e676bfb6adfe829d1a009a9c596eab76936d63b77e7a87b` |
| 19 | `theorem` | [measure_union_null](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-union-null--0539041fc0b6ea7151a4f619.md) | 120 | `result-track:0539041fc0b6ea7151a4f6199cba02c7cd03fcf1cd9e49607caa2c747a180e77` |
| 20 | `lemma` | [measure_null_iff_singleton](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-null-iff-singleton--4ac2578ed3f04ef31394a3fc.md) | 122 | `result-track:4ac2578ed3f04ef31394a3fcf1ba96c2877d89da745e52a32664a3fb9dfac6c8` |
| 21 | `theorem` | [measure_iUnion_of_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-iunion-of-tendsto-zero--57bcbe3d872f9ba535e56bc0.md) | 128 | `result-track:57bcbe3d872f9ba535e56bc0d22d49c0a91eff9ac626e50402940f53e1ca78cf` |
| 22 | `theorem` | [measure_null_of_locally_null](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/measure-null-of-locally-null--945f368bdbbb5f56db3f2c2f.md) | 142 | `result-track:945f368bdbbb5f56db3f2c2fcb0c64cc178d73b9edfaf863c869df6c43b15688` |
| 23 | `theorem` | [exists_mem_forall_mem_nhdsWithin_pos_measure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/exists-mem-forall-mem-nhdswithin-pos-measure--73658aac2e3b45919ff4d3c6.md) | 151 | `result-track:73658aac2e3b45919ff4d3c6136000e0e20ae496a099bbcb0fc27a3c4bb30638` |
| 24 | `theorem` | [iUnion_of_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/iunion-of-tendsto-zero--d5025f2ab08e38d22fe5b63c.md) | 166 | `result-track:d5025f2ab08e38d22fe5b63c53007e52cfbb92802c568a4e72a235e3534c61ae` |
| 25 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/iunion-nat-of-monotone-of-tsum-ne-top--706ee47119009e43dcae74fa.md) | 172 | `result-track:706ee47119009e43dcae74fadcc7f7deef4da1249ad49e30edcaadd257f80bb0` |
| 26 | `theorem` | [coe_fn_injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/coe-fn-injective--b17914a6f2e750f5e359bc94.md) | 193 | `result-track:b17914a6f2e750f5e359bc94399899fd1893523346a6a40be97926e5f97b2c2b` |
| 27 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/ext--ff3e4add39317d8fa4305a2a.md) | 197 | `result-track:ff3e4add39317d8fa4305a2aa6a1e49a60ece4eda9cd2805ebe955a9e3f36a66` |
| 28 | `theorem` | [ext_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf4369ce38a8dfa2aec2d0910f763443584396b43c9e4ff1501196234f2fbc027.lean/declarations/ext-nonempty--3360c3a423ae45453f9c7d7e.md) | 202 | `result-track:3360c3a423ae45453f9c7d7eab109ea86811209717918d7ad96217f294a50e7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
