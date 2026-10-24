# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fea285d7ebe6c6b0d03a3b2869f4aba6f5ccc554",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fea285d7ebe6c6b0d03a3b2869f4aba6f5ccc554`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/setlike--0ba8ce54b265306bae65f11c.md) | 104 | `declaration-track:0ba8ce54b265306bae65f11c505ceee855eafc1fc8cafb38c9e3959e419b2ed6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/instance--99551ab7d2ea64c5eb9ed560.md) | 116 | `declaration-track:99551ab7d2ea64c5eb9ed56003c8fe24b9a2e10fd26b9d827668ce1e0fd62778` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/instance--6affa47e737d32a9a96710e2.md) | 118 | `declaration-track:6affa47e737d32a9a96710e2fee14b81963b53c12f52bfb0d1487d1e49a5b641` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/instance--410dc23bb91f1ad6348eeb23.md) | 121 | `declaration-track:410dc23bb91f1ad6348eeb232b1d082016b3a11265c727e7ea59e86c98582710` |
| 5 | `theorem` | [coe_sort_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-sort-coe--875ba53b54248725b8c3fdf7.md) | 127 | `result-track:875ba53b54248725b8c3fdf7327e4802678b0e0dee8d12be17d0260ec295bffa` |
| 6 | `theorem` | [«exists»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/exists--99643b2ab2bbdc7b7d7f2d97.md) | 133 | `result-track:99643b2ab2bbdc7b7d7f2d97fc405f227ef7c3e5021df87776917d6107f08606` |
| 7 | `theorem` | [«forall»](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/forall--72ca1279ce986a543e7c853e.md) | 137 | `result-track:72ca1279ce986a543e7c853ebdaf035f8fa0fe6143d53df8ee3142b659d4e37f` |
| 8 | `theorem` | [coe_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-injective--7a5d3fc242690abcdfce9270.md) | 141 | `result-track:7a5d3fc242690abcdfce92704d40206b87d42f164621f8c0b3fca7348b9ad6dc` |
| 9 | `theorem` | [coe_set_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-set-eq--fa45aab6402c19c3037b3621.md) | 146 | `result-track:fa45aab6402c19c3037b36218d55d389218d4d500640d299360ffe0e4fd59041` |
| 10 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/ext--66130200ffe0bdc0e1be6e91.md) | 150 | `result-track:66130200ffe0bdc0e1be6e919ec529e000adc6a4c436e3252465118e411a9ae0` |
| 11 | `theorem` | [ext'_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/ext-iff--67631bd74275679304f3a658.md) | 154 | `result-track:67631bd74275679304f3a658bf708f996a58a303a78e552f2bff1f60b9e0b3a4` |
| 12 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/ext--105ff229f768620e4cbea899.md) | 159 | `result-track:105ff229f768620e4cbea8998dc86972a02e059b8146bff48f49899175e13d67` |
| 13 | `theorem` | [ext_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/ext-iff--15f84b828493dab6c45434e7.md) | 163 | `result-track:15f84b828493dab6c45434e744072f58eb1e9b2b8185d29ba7caa917f347f152` |
| 14 | `theorem` | [mem_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/mem-coe--2f4bb2a085851462db7ccec5.md) | 168 | `result-track:2f4bb2a085851462db7ccec55da29fe358bb7461af5c2517b2820e16622b976a` |
| 15 | `theorem` | [coe_eq_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-eq-coe--5090c3a862ac9d8413a89f0b.md) | 173 | `result-track:5090c3a862ac9d8413a89f0b2169efdc59b44cf09845ca99b0264c44c919ffd0` |
| 16 | `theorem` | [coe_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-mem--6583cdb23cca3f4454de75ac.md) | 181 | `result-track:6583cdb23cca3f4454de75acbb01da98e35292bf3da1a60232668e33a01047d7` |
| 17 | `theorem` | [eta](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/eta--4aa72bbc9fe8f43c893aeeb6.md) | 186 | `result-track:4aa72bbc9fe8f43c893aeeb60af779634b24999c4c0133e4d7c3fa560800d8b2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/instance--0e8757c2ea0f9f42f1d5c9ff.md) | 189 | `declaration-track:0e8757c2ea0f9f42f1d5c9ff3a6e426c642fb29e0606ce0de2a3d7a78eeecdc3` |
| 19 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/le-def--dfa1129cba5eb984ee7925b6.md) | 193 | `result-track:dfa1129cba5eb984ee7925b61a0491f45cf454f2ad1d5b3f0c9cfa3f57f12a49` |
| 20 | `theorem` | [coe_subset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-subset-coe--3e7d54c32b1cc958013097ab.md) | 198 | `result-track:3e7d54c32b1cc958013097abacaed55d566226f5430434511723ccfd88f5d0c9` |
| 21 | `theorem` | [coe_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-mono--c0366bd8244e68922024327e.md) | 203 | `result-track:c0366bd8244e68922024327e9a395711a51e80a77d44374ad4847e476f3183a7` |
| 22 | `theorem` | [coe_ssubset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-ssubset-coe--9e996d6f3207ba47578b03ac.md) | 207 | `result-track:9e996d6f3207ba47578b03acf89dc13f0ceb7a43cabddad4fb83eaac0fa5ec91` |
| 23 | `theorem` | [coe_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/coe-strictmono--47ca21142d56eb0dee5aa1dd.md) | 212 | `result-track:47ca21142d56eb0dee5aa1dd4cc00e77b62d3502d16149f3135916ace4e184b8` |
| 24 | `theorem` | [not_le_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/not-le-iff-exists--9cf4ce85656e955e6a3ce2b9.md) | 215 | `result-track:9cf4ce85656e955e6a3ce2b9dda9c631948cd538978543c7144ad4d7fa1f62a0` |
| 25 | `theorem` | [exists_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/exists-of-lt--4b05a5b94d8d6d921077783d.md) | 219 | `result-track:4b05a5b94d8d6d921077783d24c19e4ac58c6863235a179fa275a993c0db8da0` |
| 26 | `theorem` | [lt_iff_le_and_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36abf80f28b2b0ceff57e1396148a896bb7cef9735e43c85a28f3b5d4bc39e6a.lean/declarations/lt-iff-le-and-exists--fd312f5c3b7f0881e19a44b6.md) | 223 | `result-track:fd312f5c3b7f0881e19a44b606586119cdc56b2c4bd0a854b25abe1c0f9deb72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
