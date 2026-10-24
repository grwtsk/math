# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8530e54e584f5c61952059ad40825255694ae2c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8530e54e584f5c61952059ad40825255694ae2c`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Countable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter--1ec86f97b9b87b248575fc1b.md) | 46 | `declaration-track:1ec86f97b9b87b248575fc1b0c2a01f449ecf5934134842f3b8b9f8ca28e8067` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countable-sinter-mem--df2940102f0f40f480eba764.md) | 53 | `result-track:df2940102f0f40f480eba764fe26e07b50b0c0c575f59e7be38aa9cf5d930734` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countable-iinter-mem--02962b4fc162106f00da8045.md) | 58 | `result-track:02962b4fc162106f00da8045bac6f57f016994347fe8959b890e4b7fb8ac5985` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countable-binter-mem--c9973f86dbeba2c17247fc8b.md) | 62 | `result-track:c9973f86dbeba2c17247fc8ba761ac08c5c75f89816a1da48b1630882893a7d9` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventually-countable-forall--62097a773b5088ac2cf2849c.md) | 69 | `result-track:62097a773b5088ac2cf2849cd667f5f3adfede2ac8595a463832e4b2295d6c0b` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventually-countable-ball--4ff15b8079e93cd6c39ad9ae.md) | 75 | `result-track:4ff15b8079e93cd6c39ad9ae1e01d40addc02274153f5dee0d65ee01def82de0` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyle-countable-iunion--641a2fbd8d70bd659b78d6cf.md) | 82 | `result-track:641a2fbd8d70bd659b78d6cfea1cb1e13a66a1d7c0e4b3a82302d1807509b739` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyeq-countable-iunion--72af93c25569cd5c2d33494f.md) | 87 | `result-track:72af93c25569cd5c2d33494f30c6404cc6aea2a8222e21e49908f8b22ae9ab17` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyle-countable-bunion--40413808a5181abf108acba4.md) | 93 | `result-track:40413808a5181abf108acba493af8425958eb7e436a82c03efd79ee48414143a` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyeq-countable-bunion--f7d3d2d03b23869b2532c875.md) | 101 | `result-track:f7d3d2d03b23869b2532c8758e72ca4c01fda16e4254177c84ccadf985be0a8f` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyle-countable-iinter--69b361d5b35ed6e7bda87993.md) | 108 | `result-track:69b361d5b35ed6e7bda8799314ddd3865037a4ec5f1d6ecb1701e96991d2bdb6` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyeq-countable-iinter--961b503cb259fa05a54f94b2.md) | 114 | `result-track:961b503cb259fa05a54f94b2f5ada00762636f8184d2e4daed44cae395054f16` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyle-countable-binter--5b84cee5f065d2fb4c7fd0fa.md) | 120 | `result-track:5b84cee5f065d2fb4c7fd0fa0f179eadc5f7981fbb175da528d62a06beb8ad2d` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/eventuallyeq-countable-binter--ee016dd5ff568ed5ce1192b9.md) | 128 | `result-track:ee016dd5ff568ed5ce1192b923c8fea399e3f4d22652cb73d9f012ad78f96d33` |
| 15 | `def` | [Filter.ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/filter-ofcountableinter--59bad28bbd720bed63abf8d8.md) | 137 | `declaration-track:59bad28bbd720bed63abf8d88ce2398b12941ec0512638be05c8d3defd21797d` |
| 16 | `instance` | [Filter.countable_Inter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/filter-countable-inter-ofcountableinter--bb096d56739afc292e81a704.md) | 147 | `declaration-track:bb096d56739afc292e81a7044ef4d2e775585d87710c018ea0a464c06839c0f8` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/filter-mem-ofcountableinter--b9bc14d844717452246a8516.md) | 155 | `result-track:b9bc14d844717452246a8516e2eac47f11c5248d868d806e6dc6cec0a3453d81` |
| 18 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter-principal--3417e1696452cd82276151ee.md) | 161 | `declaration-track:3417e1696452cd82276151ee40ed689cd57a5a4889e809d13e341f0e2d177b37` |
| 19 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter-bot--d85fd213b3b8fa565e4cc6e5.md) | 165 | `declaration-track:d85fd213b3b8fa565e4cc6e59a6c44c7cdcf32dd2aea125d1eef8c4065bb08e6` |
| 20 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter-top--baee8b4fbf10acbe897d07b8.md) | 170 | `declaration-track:baee8b4fbf10acbe897d07b81a254d909def7d62af88803ca95f167296b1e5de` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/instance--883a0ac255ddc41d228c2559.md) | 175 | `declaration-track:883a0ac255ddc41d228c255902efd00dbd05e37896a4bb4c131dadc8344f6a6a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/instance--4ba88720b652bb194dc3380a.md) | 183 | `declaration-track:4ba88720b652bb194dc3380a5011e99255b6fdf5de2efc6235c3dd8237349d55` |
| 23 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter-inf--16eff847a5aa2cdb60242ebf.md) | 190 | `declaration-track:16eff847a5aa2cdb60242ebf86218c8aa3ed836f8acc045472fa4cc278c56f06` |
| 24 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countableinterfilter-sup--a97dfe975d9e07bcaeb2ea9c.md) | 202 | `declaration-track:a97dfe975d9e07bcaeb2ea9c49d453934ef77efe5ff7da370952276488c1d4ad` |
| 25 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countablegeneratesets--9f33eb0aac181fceaa22b695.md) | 214 | `declaration-track:9f33eb0aac181fceaa22b695ee90ae6a90cef25194a08992899c6ac6edb82d25` |
| 26 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countablegenerate--3304f8b43ea65c4792f1e521.md) | 223 | `declaration-track:3304f8b43ea65c4792f1e5211547672e89bc3df75311d458a953451198d077ac` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/instance--12d14d8c341cf0c05a7256db.md) | 230 | `declaration-track:12d14d8c341cf0c05a7256dbd07c59243f4ff2a08bf6f5d7159669caaca8b8b3` |
| 28 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/mem-countablegenerate-iff--8eebb48501cc38b5c59b1be9.md) | 237 | `result-track:8eebb48501cc38b5c59b1be91cca35c26cf50b1afbad3f859d3c27d75bb98080` |
| 29 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--c0c99a9e3bbb8173e0af2910.md) | 256 | `result-track:c0c99a9e3bbb8173e0af29108de013194cfc5483812a7199a76aabdaa1e80854` |
| 30 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/declarations/countablegenerate-isgreatest--79018ae303b62498824c0265.md) | 271 | `result-track:79018ae303b62498824c026517483c990800ccc908258fa4275f6d0508f131d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
