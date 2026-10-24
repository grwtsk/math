# Verification target: GRWTSK.NumberTheory.VonMangoldt.TruncatedConvolutionIdentity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a22874615d3717a8dea25a68aa9d634a8442a2b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/TruncatedConvolutionIdentity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a22874615d3717a8dea25a68aa9d634a8442a2b`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/TruncatedConvolutionIdentity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/TruncatedConvolutionIdentity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/declarations/exact-split--3ce4de78c1541ae49f5fb5a9.md) | 15 | `result-track:3ce4de78c1541ae49f5fb5a93643f26328d892e6e692b07218e2abcc13dca883` |
| 2 | `theorem` | [large_factor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/declarations/large-factor--a9a831dd6cbe0a4de9fa0b49.md) | 27 | `result-track:a9a831dd6cbe0a4de9fa0b49aa17f20332b588dd9fe8827440c7304a4361f23e` |
| 3 | `theorem` | [split_on_large_window](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/declarations/split-on-large-window--8b4c52e8fe2ff8b9175c0b4f.md) | 36 | `result-track:8b4c52e8fe2ff8b9175c0b4f59656d2e3dae7d89701111cb57deda7d977b1d12` |
| 4 | `theorem` | [continuous_centering](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/declarations/continuous-centering--069140e33d92c9273dff8fc1.md) | 43 | `result-track:069140e33d92c9273dff8fc1062a45ca0aab775b8833fc2d8f8db73b0da041d9` |
| 5 | `theorem` | [main_profile_rewrite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/TruncatedConvolutionIdentity.lean/declarations/main-profile-rewrite--9585884b26c0750bb656d2ee.md) | 47 | `result-track:9585884b26c0750bb656d2eec634cae8ac518911d9015036c39d87282e4e9b20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
