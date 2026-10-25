# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.LazyList` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Thunk` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEquivLazyList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/listequivlazylist--0681b3a7cf3e261f09633eb6.md) | 29 | `declaration-track:0681b3a7cf3e261f09633eb6194252bfb652ac250572b8efd15cc3c849fc393f` |
| 2 | `instance` | [decidableEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/decidableeq--b798fce8308ff56586424879.md) | 46 | `declaration-track:b798fce8308ff5658642487995ec31a617892f05f120742272396a58377abdf3` |
| 3 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/traverse--567648737c1c7894041b4b58.md) | 59 | `declaration-track:567648737c1c7894041b4b58c2be5f532d7bbe56f35b0b0982020a746eeaf2ec` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--eabd396e619b4c69bb5ddca7.md) | 65 | `declaration-track:eabd396e619b4c69bb5ddca7ee34c41250991ebb03fdfb3849abacd42d5027c3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--495d5b6176747cffb7d9a71b.md) | 69 | `declaration-track:495d5b6176747cffb7d9a71ba4947ae3c20bb3573f4c32a70b66cdee7342c6a2` |
| 6 | `def` | [init](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/init--4ef8e80ff555d66fc10f21c9.md) | 92 | `declaration-track:4ef8e80ff555d66fc10f21c9c1ba9d2aa0bbb380b0c671db58902f14a07e619b` |
| 7 | `def` | [find](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/find--356be87eeb9a80f19fa5d363.md) | 103 | `declaration-track:356be87eeb9a80f19fa5d3631c60330b52faa94ec3f402908e3feb81692d7266` |
| 8 | `def` | [interleave](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/interleave--851db29e45d397be1e388d36.md) | 109 | `declaration-track:851db29e45d397be1e388d3620b2875519cb286b69711bae7fb7017a75fd950f` |
| 9 | `def` | [interleaveAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/interleaveall--b827231f9da88c03dfa7e57c.md) | 119 | `declaration-track:b827231f9da88c03dfa7e57c50028cfdd298a0ad7ecc7e0dce46e8ef5fe56106` |
| 10 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/bind--5f6fbcfb0edd3d65d631bb2d.md) | 125 | `declaration-track:5f6fbcfb0edd3d65d631bb2d997a0d555e5072e9f1024f2cab4d8f2266a7101c` |
| 11 | `def` | [reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/reverse--527c8629f7831dd5b840d828.md) | 134 | `declaration-track:527c8629f7831dd5b840d828490de31fae266a2ddec624dc7d6d67f748f877f7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--144bd535d0ac02d0ba188cda.md) | 138 | `declaration-track:144bd535d0ac02d0ba188cda406b8e1e98b904d76d94a49b4cb86cf6cf53c5c2` |
| 13 | `theorem` | [append_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/append-nil--d51c7b2b396b965f2f279123.md) | 143 | `result-track:d51c7b2b396b965f2f2791231acda63137e2b6bfacc1b38ef26979fb80dc3038` |
| 14 | `theorem` | [append_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/append-assoc--80788f5a430a7eed1c5d4415.md) | 150 | `result-track:80788f5a430a7eed1c5d4415e17b7b212e73e6b23b20a40ad63989a22e899e4c` |
| 15 | `theorem` | [append_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/append-bind--b2b477fc5e7fb55f4f44877a.md) | 159 | `result-track:b2b477fc5e7fb55f4f44877ac13b86e7459532d9a7908c7968f15a291a89b121` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--609395c58b502f0f50b9e99d.md) | 170 | `declaration-track:609395c58b502f0f50b9e99d94c02949aa57a31b1d3c9d9a0c0eb3f2b0e3def9` |
| 17 | `def` | [mfirst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/mfirst--934b3ee375d71938d4ff43db.md) | 198 | `declaration-track:934b3ee375d71938d4ff43dbd69ca594ec9bf87b90360978ac443fecd21ec7f5` |
| 18 | `def` | [Mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/mem--2359ffa5331df72506975da3.md) | 204 | `declaration-track:2359ffa5331df72506975da33f7f130d2951117a25611bc7da854cc8c6af97f1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--de4c788f18145c2bdc34d41a.md) | 209 | `declaration-track:de4c788f18145c2bdc34d41a7a552d973c51f839ce9f664d4529054e9858b070` |
| 20 | `instance` | [Mem.decidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/mem-decidable--2dff40fa6c7c8e906ec5897e.md) | 212 | `declaration-track:2dff40fa6c7c8e906ec5897eaf5c1e16eabdf1dfa6b6ee99868cfe9425789b2a` |
| 21 | `theorem` | [mem_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/mem-nil--83b715f19046407a33f3b9a8.md) | 228 | `result-track:83b715f19046407a33f3b9a8f6919ea345136fc390c325809bd656909fa49b2b` |
| 22 | `theorem` | [mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/mem-cons--4b4ad478fa990daf145d5bc5.md) | 233 | `result-track:4b4ad478fa990daf145d5bc594a8222f22c8f20d1e856b1b807cbe1d5a873601` |
| 23 | `theorem` | [forall_mem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/forall-mem-cons--b8f56a3a403594e9e58a1a7e.md) | 238 | `result-track:b8f56a3a403594e9e58a1a7e4c86c42c141b87cb3d08b17b1dbae6522ec266d1` |
| 24 | `def` | [pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/pmap--f39f908971af386a271bde38.md) | 251 | `declaration-track:f39f908971af386a271bde38e8db9f679539015bdfdda7f6995316eea46bc7ec` |
| 25 | `def` | [attach](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/attach--386c0832a03b4713bd48d03f.md) | 259 | `declaration-track:386c0832a03b4713bd48d03fb255f6bb0bbf1f720450a5f488b36887d20d9bbd` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/declarations/instance--a6dcce312f8f0790e1f18353.md) | 263 | `declaration-track:a6dcce312f8f0790e1f183532eba78c9cdf3ccb048b8b28103f72d1b302c5af4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
