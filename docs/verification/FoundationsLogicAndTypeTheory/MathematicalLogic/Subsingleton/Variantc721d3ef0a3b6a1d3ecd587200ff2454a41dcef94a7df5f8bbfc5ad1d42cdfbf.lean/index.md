# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "425378fc0f749292e81235c422fcf792f599ef7a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `425378fc0f749292e81235c422fcf792f599ef7a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton--90cf6f90bca29a903af77588.md) | 30 | `declaration-track:90cf6f90bca29a903af77588aa64aa68bdb00874c44bc0f54e75c254b9bd2428` |
| 2 | `theorem` | [HasBasis.subsingleton_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/hasbasis-subsingleton-iff--d3411ca17d41af2294adaa8d.md) | 32 | `result-track:d3411ca17d41af2294adaa8df26190515a2ac6a2112ee01133342c5482cb4480` |
| 3 | `theorem` | [Subsingleton.anti](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-anti--385c003df234da5348a5052d.md) | 36 | `result-track:385c003df234da5348a5052df56ae3017039a229d937fbf67589f1a4b054e000` |
| 4 | `theorem` | [Subsingleton.of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-of-subsingleton--c10c100b4c009769f11a59fb.md) | 40 | `result-track:c10c100b4c009769f11a59fb6b6ee4a71145a504e8fc2889cea99d2060ba94ae` |
| 5 | `theorem` | [Subsingleton.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-map--19bfe06c9b95ca52104a5f22.md) | 43 | `result-track:19bfe06c9b95ca52104a5f221bfe756fa52160e005144f466f2a44be714d3179` |
| 6 | `theorem` | [Subsingleton.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-prod--1e50cec2a0bb139d04db12cf.md) | 46 | `result-track:1e50cec2a0bb139d04db12cfa0a225019a59d3dcf522c84448d205ad98863677` |
| 7 | `theorem` | [subsingleton_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-pure--fd1bfbfe97dfb12d6d0f6a67.md) | 51 | `result-track:fd1bfbfe97dfb12d6d0f6a674fd1ff79612c0279ab262c39cefb265d51cb1cce` |
| 8 | `theorem` | [subsingleton_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-bot--0881113b5d7ff99aa3eee295.md) | 55 | `result-track:0881113b5d7ff99aa3eee2953d2d7553212c9400300be3c3cf76b6d6e0a54deb` |
| 9 | `theorem` | [Subsingleton.exists_eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-exists-eq-pure--266b031742f410d070f71387.md) | 59 | `result-track:266b031742f410d070f71387dc394b60fb90364ee9a66e695d7e920bf129667a` |
| 10 | `theorem` | [subsingleton_iff_bot_or_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-iff-bot-or-pure--398520e5e21c90c09f48b8d3.md) | 66 | `result-track:398520e5e21c90c09f48b8d3aeb46c8330f3da8453dac301f6dfc532f419db27` |
| 11 | `theorem` | [subsingleton_iff_exists_le_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-iff-exists-le-pure--832df15b6f43718ba28cf0cf.md) | 73 | `result-track:832df15b6f43718ba28cf0cf5fa631ca62fb60ed5e3ed0209e0bf90123479d78` |
| 12 | `theorem` | [subsingleton_iff_exists_singleton_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variantc721d3ef0a3b6a1d3ecd587200ff2454a41dcef94a7df5f8bbfc5ad1d42cdfbf.lean/declarations/subsingleton-iff-exists-singleton-mem--ff4560aa2ca1a6dd7534514d.md) | 78 | `result-track:ff4560aa2ca1a6dd7534514db02823aa5fcf15228892e6bb02bde6c72a1c6d5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
