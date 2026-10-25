# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorLemmas.Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fad06c4f6f7308c329ca9a29ece15b98bb12e100",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fad06c4f6f7308c329ca9a29ece15b98bb12e100`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators` — import line 19; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.RawLemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.Lemmas` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [step_iter_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/step-iter-nil--f618f1ff4875bc4c4bf5dccb.md) | 31 | `result-track:f618f1ff4875bc4c4bf5dccbdc181fca0d41ff5ea609d31fe32a00c67c2cf8b0` |
| 2 | `theorem` | [step_iter_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/step-iter-cons--9fe2cb163ed489c171cb85f3.md) | 36 | `result-track:9fe2cb163ed489c171cb85f3fbf9078156b35a2b25b3acc60bc7ce1908ddfb6e` |
| 3 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-iter--d02cd6389c8fbd0da0cc3c5b.md) | 41 | `result-track:d02cd6389c8fbd0da0cc3c5b7e1a1ad3aa8e892a43e17055784b31de336f8d9a` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-iter--296fc6a5bcbce022e4b58248.md) | 58 | `result-track:296fc6a5bcbce022e4b582484569a098932adc2d3a163b6a0c525b5c77282863` |
| 5 | `theorem` | [toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-iter--82510dd470075b979d4a5422.md) | 64 | `result-track:82510dd470075b979d4a54222d5415514fce729df17347ca7fe6e1d3fa3ed483` |
| 6 | `theorem` | [toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-iter--25edd52740fa4a4ae8a67d40.md) | 69 | `result-track:25edd52740fa4a4ae8a67d4039eb05f1166cbbe0badd9fe38d189dbf1f4da856` |
| 7 | `theorem` | [toList_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-keysiter--60dbe778d3bc11ccd394441b.md) | 80 | `result-track:60dbe778d3bc11ccd394441b9e4ce7b48d1e3248dd3f4f46f867e96aa4d8e4ee` |
| 8 | `theorem` | [toListRev_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-keysiter--d9c0234516d70119ca3a5a26.md) | 85 | `result-track:d9c0234516d70119ca3a5a26b7df40197aa13b0dd8bf46eadc520cfa920e41f7` |
| 9 | `theorem` | [toArray_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-keysiter--d68294067003594c1ee8906e.md) | 90 | `result-track:d68294067003594c1ee8906eb3dcd5d37b1d2c18b3f98bd88abf090b0da06b13` |
| 10 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--d1b29fb8bcc4b3cd781e4cd2.md) | 101 | `result-track:d1b29fb8bcc4b3cd781e4cd25e14762b47cb0a6f310f629c655edb128610e2d1` |
| 11 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-valuesiter--b94b2ec325e7b617caa8dae0.md) | 106 | `result-track:b94b2ec325e7b617caa8dae01c717324069fc05dde3e48aba0a21c803af02985` |
| 12 | `theorem` | [toArray_valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-valuesiter--43e4718ac2a2314f16c3f42f.md) | 111 | `result-track:43e4718ac2a2314f16c3f42ffe63e23ec29e42cd2642ef1c79ac9129d9ce0508` |
| 13 | `theorem` | [toList_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-inner--cc3b66459a1f1f6c02e6bc21.md) | 126 | `result-track:cc3b66459a1f1f6c02e6bc2116085220de3157627cc75e32cbcb4d47b4f28045` |
| 14 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-iter--661a4feb12bc25830f0b6989.md) | 131 | `result-track:661a4feb12bc25830f0b6989c58b3cc641fc79d9f33c969f2a317ecc3bfdcdb6` |
| 15 | `theorem` | [toListRev_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-iter--ffc30a02c262bf16238ad667.md) | 136 | `result-track:ffc30a02c262bf16238ad6673010ec1df95b6e770a30b50aac8c687ea8ec17f2` |
| 16 | `theorem` | [toArray_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-iter--2253354220605186abbfda9c.md) | 141 | `result-track:2253354220605186abbfda9c4406819f231d4f58c2e54d8169e569c3105dd21c` |
| 17 | `theorem` | [keys_inner](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/keys-inner--3d1740488874e573e31d0057.md) | 151 | `result-track:3d1740488874e573e31d0057c97e9a78b5b3c015d4a1f55854b1d9b7961e962f` |
| 18 | `theorem` | [toList_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-keysiter--49ba09aff7d1af905bcc39f8.md) | 156 | `result-track:49ba09aff7d1af905bcc39f83f9a19f92879028a52ed7886d081d9df69e802d1` |
| 19 | `theorem` | [toListRev_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-keysiter--1e6215f08d4201dea9d3f4e0.md) | 161 | `result-track:1e6215f08d4201dea9d3f4e0959ad81eb9982391ba0b5f2344b43bdcab902969` |
| 20 | `theorem` | [toArray_keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-keysiter--3048106a9f8271c87d5b4fd7.md) | 166 | `result-track:3048106a9f8271c87d5b4fd75f5d49df92e0ff5991c8dfbd020e805433d05ab7` |
| 21 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolist-valuesiter-eq-tolist-map-snd--5d8375ca3c643774a523b0c5.md) | 177 | `result-track:5d8375ca3c643774a523b0c5f6f06d10569c70c5aefd527b24f7730859300dbb` |
| 22 | `theorem` | [toListRev_valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/tolistrev-valuesiter--d245375cecff43597571536f.md) | 182 | `result-track:d245375cecff43597571536fa23433d290b98d9d9aa07c2815d9841d91b42f13` |
| 23 | `theorem` | [toArray_valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant35997515a27eb8b5bd6f703db5ca96d367275179f0271fa0b65f57ae8a88c528.lean/declarations/toarray-valuesiter--4c917b72b0edf37bc652a41e.md) | 187 | `result-track:4c917b72b0edf37bc652a41e26b97224fab3802c09479ecd3b5325416287b2e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
