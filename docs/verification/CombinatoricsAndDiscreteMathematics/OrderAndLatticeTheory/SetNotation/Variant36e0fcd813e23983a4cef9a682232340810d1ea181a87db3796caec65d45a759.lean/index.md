# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SetNotation.Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60eb70430e8d2cc0536d02b21d040cc748c8f466",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60eb70430e8d2cc0536d02b21d040cc748c8f466`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Notation3` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SupSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/supset--e092a14373b6cf240ed599de.md) | 48 | `declaration-track:e092a14373b6cf240ed599de63c254fbe1f1788275565c0d62a212e73cece9af` |
| 2 | `class` | [InfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/infset--6f8ed849311e7e99153f7348.md) | 54 | `declaration-track:6f8ed849311e7e99153f73488fe63c9cdfee22baf17b5e07299de07cfc07070f` |
| 3 | `def` | [iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/isup--ba9ff150bdf871fa8aab7e7a.md) | 64 | `declaration-track:ba9ff150bdf871fa8aab7e7ad2072b7af3c71d295b3da9140825972ec7c35728` |
| 4 | `def` | [iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iinf--fb5b578099a40aacbe320d04.md) | 68 | `declaration-track:fb5b578099a40aacbe320d04799ec0809bf3d992e08a472fce114071f16a5bb0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/instance--6faf6ee89703e761b507fc73.md) | 71 | `declaration-track:6faf6ee89703e761b507fc735c444fc8536f421e4d1f575d069b46fd2ff25025` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/instance--54c9a1dd574aa579c04137a2.md) | 74 | `declaration-track:54c9a1dd574aa579c04137a29534c6bd4ece3cd33577ae754d26854491e40a78` |
| 7 | `def` | [iSup_delab](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/isup-delab--83f2d8591fbc0f0686350845.md) | 89 | `declaration-track:83f2d8591fbc0f068635084554f721ab8dd005ab9f923d1d7801a2c9890d1cd6` |
| 8 | `def` | [iInf_delab](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iinf-delab--c5be072d1cd6c4abb97cb5be.md) | 117 | `declaration-track:c5be072d1cd6c4abb97cb5bef54f0ef9200de9e1cc22ef7d0db6ae6171436c5a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/instance--8d0e9869ff74b5cfb039a268.md) | 146 | `declaration-track:8d0e9869ff74b5cfb039a268b18dee005e820fd75cc9e81406ae35549a270526` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/instance--b59cafd57bdcddac551afeec.md) | 149 | `declaration-track:b59cafd57bdcddac551afeecd14c650779a54a96fda17eb07a792c94fef6b9fa` |
| 11 | `def` | [sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/sinter--7ec3e77e80298ac1c4befeb4.md) | 153 | `declaration-track:7ec3e77e80298ac1c4befeb4384d64f34dfdba11c87edb80c27f8f77c4c845fd` |
| 12 | `def` | [sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/sunion--e907eb486049388e8a2bf70e.md) | 160 | `declaration-track:e907eb486049388e8a2bf70e62b6a628f3ab58b3887fff2b65cba649477c6c1b` |
| 13 | `theorem` | [mem_sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/mem-sinter--949e7cd51c340e4127a80e9b.md) | 167 | `result-track:949e7cd51c340e4127a80e9b1d5cb5a84d77f5f53cb9f88950c5c9b2be919980` |
| 14 | `theorem` | [mem_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/mem-sunion--8dece6fdbfb7e59f4f25ff89.md) | 171 | `result-track:8dece6fdbfb7e59f4f25ff89b88383f53ce550b36a220c14942543f783165bad` |
| 15 | `def` | [iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iunion--b2af08675f4baa0f96495f98.md) | 175 | `declaration-track:b2af08675f4baa0f96495f985f71ae4cb12df218f691e26ecf893e547b7e80a6` |
| 16 | `def` | [iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iinter--3aab32a1ece38807743831d5.md) | 179 | `declaration-track:3aab32a1ece38807743831d56387dbf889afb97b8d3820f3e3b593c934eede70` |
| 17 | `def` | [iUnion_delab](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iunion-delab--20f32f3f24c9a6384f6d4d53.md) | 194 | `declaration-track:20f32f3f24c9a6384f6d4d531b37c6738c4a3ceecb98f555a9766707e77a4695` |
| 18 | `def` | [sInter_delab](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/sinter-delab--37f501ebbab1aaa061c3168d.md) | 222 | `declaration-track:37f501ebbab1aaa061c3168dd38b14af76a7c97ca2fcfb870a0b55948813e7c1` |
| 19 | `theorem` | [mem_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/mem-iunion--837757db9a5f2c5b6a5431c5.md) | 251 | `result-track:837757db9a5f2c5b6a5431c5fe0634f2d345de581b887a01484fe3bf597bc8b6` |
| 20 | `theorem` | [mem_iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/mem-iinter--21d5ea214091c816b8e8a74d.md) | 256 | `result-track:21d5ea214091c816b8e8a74d0d4143ddac6275048f139264011c33a009a7702b` |
| 21 | `theorem` | [sSup_eq_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/ssup-eq-sunion--d49f875e7e4fe2b9449d3114.md) | 261 | `result-track:d49f875e7e4fe2b9449d31146f4a060ab8cdd06622a825ce44efcfab4850237e` |
| 22 | `theorem` | [sInf_eq_sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/sinf-eq-sinter--1095b26afcc5baeddf99dce4.md) | 265 | `result-track:1095b26afcc5baeddf99dce400c819bef39a92380978b5fe18fdcc93d2128dcc` |
| 23 | `theorem` | [iSup_eq_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/isup-eq-iunion--d48a23589ca804d823e4d2f1.md) | 269 | `result-track:d48a23589ca804d823e4d2f15e7e2638e9aad0493750fba92b04731d763215de` |
| 24 | `theorem` | [iInf_eq_iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetNotation/Variant36e0fcd813e23983a4cef9a682232340810d1ea181a87db3796caec65d45a759.lean/declarations/iinf-eq-iinter--b7566fc3184cc35c0fbf39d3.md) | 273 | `result-track:b7566fc3184cc35c0fbf39d3f059f15c419c57787220191f4ead110e8157a099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
