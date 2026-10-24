# Verification target: GRWTSK.Algebra.Idempotent.Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1a4fc71873c1ce428371ae3c8c217601bb266af",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/index.md) · [Full source](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1a4fc71873c1ce428371ae3c8c217601bb266af`.

Source path: `GRWTSK/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Idempotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_sub](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/one-sub--f327b8a7b477abf557caba95.md) | 33 | `result-track:f327b8a7b477abf557caba95675cc137732e3a4633ef2bf4e722eaf18f4298a9` |
| 2 | `lemma` | [one_sub_iff](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/one-sub-iff--d0de1b6ba4f051df0dbff9ba.md) | 37 | `result-track:d0de1b6ba4f051df0dbff9ba19624a9669f7ba197f0292d63da844b558044db3` |
| 3 | `lemma` | [mul_one_sub_self](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/mul-one-sub-self--194d2494e54e21300e3ec9fb.md) | 41 | `result-track:194d2494e54e21300e3ec9fb396642ad38b9b8f04d2e0d7817dc02e044a82d90` |
| 4 | `lemma` | [one_sub_mul_self](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/one-sub-mul-self--926f8df5977a2562225b1743.md) | 45 | `result-track:926f8df5977a2562225b1743508e09d61cf12182cf46e60e0a5688265a065285` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/instance--d46f1ca44a63eee8809490bb.md) | 48 | `declaration-track:d46f1ca44a63eee8809490bbfc7ad01099b24c7d731b82aa95794836be19ae24` |
| 6 | `lemma` | [coe_compl](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/coe-compl--9aec2fdd3d9d482616b8dca8.md) | 50 | `result-track:9aec2fdd3d9d482616b8dca834129b0f37cab777f7768039dfe3548dce53de1c` |
| 7 | `lemma` | [compl_compl](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/compl-compl--dcaa061e2f0d6455f0f6565b.md) | 52 | `result-track:dcaa061e2f0d6455f0f6565b3451694eb2196b16b730212fa69e009f541ae84e` |
| 8 | `lemma` | [zero_compl](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/zero-compl--6042796a53cb2b220897ae91.md) | 53 | `result-track:6042796a53cb2b220897ae9155a39c1d628d318381316443908cebef68503531` |
| 9 | `lemma` | [one_compl](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/one-compl--a3e424ed26e38db742f36eca.md) | 54 | `result-track:a3e424ed26e38db742f36ecae42b663b94f0ae292d3f20984987e1f3b295c5cc` |
| 10 | `lemma` | [of_mul_add](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/of-mul-add--d077ed74e55ecbc9f2af934f.md) | 61 | `result-track:d077ed74e55ecbc9f2af934f6f2cf117bfc0392ba13976b5e0b9be7d6e7d6b57` |
| 11 | `lemma` | [add_sub_mul_of_commute](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/add-sub-mul-of-commute--afaf23f4dd84b508fc11ddcf.md) | 71 | `result-track:afaf23f4dd84b508fc11ddcf31927333e3d559bdae8aa4e9e8c3141bc6fd4330` |
| 12 | `lemma` | [add_sub_mul](../../../../mathematics/Algebra/Idempotent/Variant84aa4741c1b31ebc73c7082f7412460a9aafcdc165ba0513db62d5bd814f4817.lean/declarations/add-sub-mul--7b0194eca548bcd1f5ee6303.md) | 82 | `result-track:7b0194eca548bcd1f5ee6303f4446cb1776286f9e8b5442f656c6ca5e963c1d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
