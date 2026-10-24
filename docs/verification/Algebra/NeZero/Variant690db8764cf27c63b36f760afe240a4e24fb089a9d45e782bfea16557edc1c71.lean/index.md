# Verification target: GRWTSK.Algebra.NeZero.Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab4be39b75f46478198568081ddf8bf20208996d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/index.md) · [Full source](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab4be39b75f46478198568081ddf8bf20208996d`.

Source path: `GRWTSK/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_neZero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/not-nezero--3965013e1a1928169181194d.md) | 26 | `result-track:3965013e1a1928169181194d495aa2433c6b1b435614f27e6c1b999717a9840b` |
| 2 | `theorem` | [eq_zero_or_neZero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/eq-zero-or-nezero--31990d737b676d1281d8d0aa.md) | 28 | `result-track:31990d737b676d1281d8d0aa1c38fc00f70de64be56799df9e84a0e781869ef8` |
| 3 | `lemma` | [zero_ne_one](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/zero-ne-one--e1db14b1679157038e974287.md) | 34 | `result-track:e1db14b1679157038e9742878ccca7e7e5b062c3a5a8645656cc5b0f094282d1` |
| 4 | `lemma` | [one_ne_zero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/one-ne-zero--fbfc9860fa32e637dd089da7.md) | 36 | `result-track:fbfc9860fa32e637dd089da70eec87243f72ecedd9ec4f6468eb75f000376824` |
| 5 | `lemma` | [ne_zero_of_eq_one](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/ne-zero-of-eq-one--efcb18994c6032d0d7a5615f.md) | 38 | `result-track:efcb18994c6032d0d7a5615fff57a3ce65b693e77737406568b6c29dcf31bf09` |
| 6 | `lemma` | [two_ne_zero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/two-ne-zero--0213bfb25e06b9db01eafd3d.md) | 41 | `result-track:0213bfb25e06b9db01eafd3d2748d150fc195a88e205bf38c8d5ec4072b8a8a2` |
| 7 | `lemma` | [three_ne_zero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/three-ne-zero--1ea9059f90091da557bac4f6.md) | 44 | `result-track:1ea9059f90091da557bac4f6066b517afda3ac9e9cef70306168f1bef653a821` |
| 8 | `lemma` | [four_ne_zero](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/four-ne-zero--13c070182572e2cfe81a7318.md) | 47 | `result-track:13c070182572e2cfe81a73189658c458e058e5530f83649dfdfde3a54a1ba55e` |
| 9 | `lemma` | [zero_ne_one'](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/zero-ne-one--14aae9091cb9de90644fb255.md) | 51 | `result-track:14aae9091cb9de90644fb2550958e66a379b5b7f3ed6c21ca3264a85e0218d5f` |
| 10 | `lemma` | [one_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/one-ne-zero--cefb864f1f179052af61fba7.md) | 53 | `result-track:cefb864f1f179052af61fba72e3aef3d5df320f5c258271a6b9cb1effdc39f31` |
| 11 | `lemma` | [two_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/two-ne-zero--0d8eb143089ffa8fb1193877.md) | 55 | `result-track:0d8eb143089ffa8fb1193877f08f80db5b8f5bd6dd3137720e78b1f59ff4100c` |
| 12 | `lemma` | [three_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/three-ne-zero--b755a90dfefdec1b122a9ad4.md) | 57 | `result-track:b755a90dfefdec1b122a9ad4a694102ac6e158e45bd9e790bb3dce5c814b5355` |
| 13 | `lemma` | [four_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/four-ne-zero--f4e4632e4c2d431b8a8a7c4c.md) | 59 | `result-track:f4e4632e4c2d431b8a8a7c4c85faea890d1e1fb1a209492a274b8fe54586721b` |
| 14 | `theorem` | [of_pos](../../../../mathematics/Algebra/NeZero/Variant690db8764cf27c63b36f760afe240a4e24fb089a9d45e782bfea16557edc1c71.lean/declarations/of-pos--1e748563bdb11e1da4fc3b83.md) | 67 | `result-track:1e748563bdb11e1da4fc3b832c8399184135bb2aa16b158115cc643e2b817832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
