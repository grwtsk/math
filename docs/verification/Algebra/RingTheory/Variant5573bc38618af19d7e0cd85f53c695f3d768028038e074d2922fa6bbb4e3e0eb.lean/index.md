# Verification target: GRWTSK.Algebra.Ring.Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `984c72969891f4231b6ea7f64064d5b47c2d1b08`.

Source path: `GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OreLocalization.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_smul](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/zero-smul--ff59b86df88c5918cab904d3.md) | 33 | `result-track:ff59b86df88c5918cab904d34d07ab731bc69029b737476cfb88fdc1f94097b0` |
| 2 | `theorem` | [add_smul](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/add-smul--a84d99b509f6073948d415ae.md) | 37 | `result-track:a84d99b509f6073948d415aeec2911839eee903216d4e8b912323204356d980c` |
| 3 | `theorem` | [zero_mul](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/zero-mul--89c147f48b6451c69dac9cd0.md) | 73 | `result-track:89c147f48b6451c69dac9cd051b84885ae289aece9ae0e40b9b24c6caa7c12c4` |
| 4 | `theorem` | [mul_zero](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/mul-zero--b858888c226464e34b0d6911.md) | 76 | `result-track:b858888c226464e34b0d6911ee3465611232ca372a48b71ab08e1fd07e7d1937` |
| 5 | `theorem` | [left_distrib](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/left-distrib--f25d0158c37d12a84afb5bec.md) | 79 | `result-track:f25d0158c37d12a84afb5bec12c36d3c4457c23e4a9203fa780dac6a014b2580` |
| 6 | `theorem` | [right_distrib](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/right-distrib--0f401fbc60ee08ea61bab80b.md) | 82 | `result-track:0f401fbc60ee08ea61bab80b06273a4885bce16694465a279a274962945fbf0d` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--2260f7bfc6184cd1377d053f.md) | 85 | `declaration-track:2260f7bfc6184cd1377d053f7c445c82ce5c5c9dbe9990113f5fce72b5e912ec` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--46443c3f546d07aa0f24f43f.md) | 93 | `declaration-track:46443c3f546d07aa0f24f43f64a6972e776aad8b9759e99763c69ed27b18cc03` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--7e0d085f3e448c9afe61fa32.md) | 97 | `declaration-track:7e0d085f3e448c9afe61fa3234be2fe44684a044b140023cf162c55f4081a35d` |
| 10 | `lemma` | [nsmul_eq_nsmul](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/nsmul-eq-nsmul--bb83ae073194782435977b1e.md) | 104 | `result-track:bb83ae073194782435977b1e9cc6eebb322e2abbe97a77705e4813aab6026fd7` |
| 11 | `def` | [numeratorRingHom](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/numeratorringhom--6a39bcf161a9da38cf010c7e.md) | 112 | `declaration-track:6a39bcf161a9da38cf010c7e9bcccd101e9b7368fa1f5d7713b9042b26c3f89e` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--a6e7e73dd9bc2d66bcc2ca39.md) | 117 | `declaration-track:a6e7e73dd9bc2d66bcc2ca39926cd953accbaf5ab32a787ba5e25ec3e2002a56` |
| 13 | `def` | [universalHom](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/universalhom--1a8d33bdd65e84f7219eda4d.md) | 138 | `declaration-track:1a8d33bdd65e84f7219eda4d9ab78a9574a41b3f5d78bb5639fb84f54aa8807d` |
| 14 | `theorem` | [universalHom_apply](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/universalhom-apply--ac83db2c17410db3087b6aa6.md) | 165 | `result-track:ac83db2c17410db3087b6aa62826f7ccc9754a34a9abf9dc3fb5d424c87d6510` |
| 15 | `theorem` | [universalHom_commutes](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/universalhom-commutes--a09ec910e0e9e6b1aca34776.md) | 169 | `result-track:a09ec910e0e9e6b1aca34776434705a1baa4a8426c1855d06a4411164f3ac9d7` |
| 16 | `theorem` | [universalHom_unique](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/universalhom-unique--11569fb7da6a6eaf12e95cb9.md) | 172 | `result-track:11569fb7da6a6eaf12e95cb973beddfab5093ce7b511e62d817aca06c58ab150` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--291eabe0e0e1740e3d99e5b4.md) | 185 | `declaration-track:291eabe0e0e1740e3d99e5b4e91ef24ca96e0273999f4ba03533bf060fa12521` |
| 18 | `lemma` | [zsmul_eq_zsmul](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/zsmul-eq-zsmul--15541de64a85d74c01f68e23.md) | 190 | `result-track:15541de64a85d74c01f68e23d991489e5aa7cba76c0dcda3d17abaf5dbbfeddf` |
| 19 | `theorem` | [numeratorHom_inj](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/numeratorhom-inj--9b87d8a3cb9dc8950b40e5f7.md) | 198 | `result-track:9b87d8a3cb9dc8950b40e5f7d1d10cad494e5461a7090d6820c1fbe383407baa` |
| 20 | `theorem` | [subsingleton_iff](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/subsingleton-iff--e88f60665750064cb2c45576.md) | 207 | `result-track:e88f60665750064cb2c45576d31ce68e8a9ce6681f5815a2b59bca40f5afcbc0` |
| 21 | `theorem` | [nontrivial_iff](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/nontrivial-iff--113c039706d7ad4d4bcbe978.md) | 213 | `result-track:113c039706d7ad4d4bcbe978e9f290d5526f90712214c34bd5cd757ce877e864` |
| 22 | `theorem` | [nontrivial_of_nonZeroDivisors](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/nontrivial-of-nonzerodivisors--245fde0e60b0fe695cfc498d.md) | 217 | `result-track:245fde0e60b0fe695cfc498d0495caaaec3e10a9219fde3600b7ec34be01f934` |
| 23 | `instance` | [nontrivial](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/nontrivial--7b895c3fe502aef01494dffc.md) | 229 | `declaration-track:7b895c3fe502aef01494dffc443329f593a7b74f1ba33e777a38817e57eeac67` |
| 24 | `def` | [inv](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/inv--bd9796232a922f14d97c67ee.md) | 238 | `declaration-track:bd9796232a922f14d97c67ee757177a01559dfa435a11f99debaaaa413447b3f` |
| 25 | `instance` | [inv'](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/inv--31aff7fde0d75d868e9c1a0e.md) | 254 | `declaration-track:31aff7fde0d75d868e9c1a0eecc5f46d5e292fa6a233f98fba980b2a2748a2fe` |
| 26 | `theorem` | [inv_def](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/inv-def--ee12f63587b495fd04f5718c.md) | 258 | `result-track:ee12f63587b495fd04f5718cf783a43e268df0964457c36895591ef000e560f8` |
| 27 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/mul-inv-cancel--e87c7f339885b9f55de1b770.md) | 264 | `result-track:e87c7f339885b9f55de1b770008f5bacee6d2f6d6bda5afcc590032951032fda` |
| 28 | `theorem` | [inv_zero](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/inv-zero--0acac76aa6075c729162c4de.md) | 273 | `result-track:0acac76aa6075c729162c4de11cdc2f4e3c051004bd9db5a1eb7362504078c7c` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--46baf39130837e24f4d482b4.md) | 277 | `declaration-track:46baf39130837e24f4d482b4134225cc939da7efaa9418787575c31291a8cb3b` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--6fad0a4302b68a952437def5.md) | 291 | `declaration-track:6fad0a4302b68a952437def54b8bd1868b890d96d889e4cad19e066ceb09dee6` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--ea9d2d4154db638b86a7f7ea.md) | 301 | `declaration-track:ea9d2d4154db638b86a7f7ea639e363aaa3e39c66db5145abafe1c3367d05264` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/declarations/instance--773ebabaaaae259514addab7.md) | 314 | `declaration-track:773ebabaaaae259514addab75f5b9cba6a4c8c32f4240e7b0101b636d8c09c45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
