# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ff71aa89a34fce17c76d1835c57034ab33f6a0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ff71aa89a34fce17c76d1835c57034ab33f6a0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Find.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.Char` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Termination` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Iterate` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/find-char-eq-some-iff--206ffb25c9e87af19765c82e.md) | 34 | `result-track:206ffb25c9e87af19765c82ed78f6d57bc5a05e13b0fa934bea49e66607bcc09` |
| 2 | `theorem` | [contains_char_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/contains-char-eq--3fd16b3fc49d4a610c4741c3.md) | 40 | `result-track:3fd16b3fc49d4a610c4741c3ab8a2363c09fdf631d0137f886de0e8b30f400ed` |
| 3 | `theorem` | [find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/find-char-eq-some-iff-splits--d37ff1698fa4602698e6200a.md) | 44 | `result-track:d37ff1698fa4602698e6200accfa906ad08bef2763be79382e8e85a8737051d3` |
| 4 | `theorem` | [Pos.find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-some-iff--27d9d69a3b76f0c8b9100e5d.md) | 57 | `result-track:27d9d69a3b76f0c8b9100e5d3a115317194cb21fc0f974029a620ba471895fb0` |
| 5 | `theorem` | [Pos.find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-some-iff-splits--212c294ea5105d9aa0926fc2.md) | 63 | `result-track:212c294ea5105d9aa0926fc26a640cd5fc1441db539c5398d5bb996b2d348c9a` |
| 6 | `theorem` | [Pos.find?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-none-iff--83d58c7b3266465780512602.md) | 99 | `result-track:83d58c7b326646578051260272cff503901c211817c9c6461b29ab23a69b4d3e` |
| 7 | `theorem` | [Pos.find?_char_eq_none_iff_not_mem_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-none-iff-not-mem-of-splits--17d66830f7ab0a85b2ec1eca.md) | 103 | `result-track:17d66830f7ab0a85b2ec1ecac93fa8819d9b93d99e619bdd3e1bf8731aa2e287` |
| 8 | `theorem` | [Pos.find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-some-iff--e9c807b5f5387ca178208018.md) | 110 | `result-track:e9c807b5f5387ca17820801816fd51c70198cca00361175fe10324dfc9885db9` |
| 9 | `theorem` | [Pos.find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-some-iff-splits--b97808d45ebc39fcd9feb099.md) | 129 | `result-track:b97808d45ebc39fcd9feb0994f8dc6e2987fecf980323dd958edf2e4b2831ac6` |
| 10 | `theorem` | [Pos.find?_char_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-none-iff--da32be381af1bb7181e15d96.md) | 140 | `result-track:da32be381af1bb7181e15d96855b0c84f8878d8a6fe44c5ede8519d27e7830be` |
| 11 | `theorem` | [Pos.find?_char_eq_none_iff_not_mem_of_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-none-iff-not-mem-of-splits--b8675c78d0777e8f241f05e4.md) | 152 | `result-track:b8675c78d0777e8f241f05e4787555d468c3f07b598cd6b9d82091a0c840a2bb` |
| 12 | `theorem` | [Pos.find?_char_eq_find?_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/pos-find-char-eq-find-beq--c0351efc4d39dbb849d63555.md) | 158 | `result-track:c0351efc4d39dbb849d63555e84c1e4e4b103458fcc0d9091a8c22103c50ab3b` |
| 13 | `theorem` | [find?_char_eq_find?_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/find-char-eq-find-beq--67c4ffe4e4373e5b50ec7827.md) | 162 | `result-track:67c4ffe4e4373e5b50ec782724320c0b9ff04e23f62cfcd8f0835205349b32dd` |
| 14 | `theorem` | [contains_char_eq_contains_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/contains-char-eq-contains-beq--1ac7259d70d0489ff3b78809.md) | 166 | `result-track:1ac7259d70d0489ff3b78809d3ef9a1dd2b0307d99e40f945ba8a044fbd2a4a9` |
| 15 | `theorem` | [find?_char_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/find-char-eq-some-iff--d7a7da08f73bb6fa472ed70e.md) | 170 | `result-track:d7a7da08f73bb6fa472ed70e8787038e5392ac2d4710d1eef6f8342f01cbcf87` |
| 16 | `theorem` | [find?_char_eq_some_iff_splits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/find-char-eq-some-iff-splits--87212e9874f0638b69201782.md) | 184 | `result-track:87212e9874f0638b69201782ebd3eb8eca9d11720b7c821ac0ba845857fccfc2` |
| 17 | `theorem` | [contains_char_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantd9ea5b06af6ef5e695eb991c398a9c2afbc9e3947b6432fe92801bcc8a23e12d.lean/declarations/contains-char-eq--69ab53181a76e8884dda73ce.md) | 195 | `result-track:69ab53181a76e8884dda73ceddfeb2f170688af60118c23ec1e998d12685e31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
