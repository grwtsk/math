# Verification target: GRWTSK.Algebra.Finite.Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a8d6c170f72000d4e3a675ba5c363c4322942f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a8d6c170f72000d4e3a675ba5c363c4322942f`.

Source path: `GRWTSK/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.IdempotentFG` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Stability` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iff_exists_tensorProduct](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/iff-exists-tensorproduct--d6402c65ebc0d5f63a9c9571.md) | 56 | `result-track:d6402c65ebc0d5f63a9c9571c8265606be4f7a2c279f0426f0ad823bbfa2bcda` |
| 2 | `lemma` | [finite_of_free_aux](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/finite-of-free-aux--7ffa9529e06d3bdeb3b958f3.md) | 91 | `result-track:7ffa9529e06d3bdeb3b958f338830f28e170c8e1d9915b3f9a6ffd618fdcc89d` |
| 3 | `def` | [elem](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/elem--852a6b39feda36031eb37af7.md) | 143 | `declaration-track:852a6b39feda36031eb37af72ee06c72a627c1978e5da1fc07d2143cf6490840` |
| 4 | `lemma` | [one_tmul_sub_tmul_one_mul_elem](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/one-tmul-sub-tmul-one-mul-elem--76d7f9e90fc5763bce77336b.md) | 146 | `result-track:76d7f9e90fc5763bce77336b58a843b6c1d6c8bb22801a218e06a22bb48c8322` |
| 5 | `lemma` | [one_tmul_mul_elem](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/one-tmul-mul-elem--14d46800ca0bc131e4200246.md) | 150 | `result-track:14d46800ca0bc131e420024648cd947ea0484c7dd2f626b895704338b05f04f6` |
| 6 | `lemma` | [lmul_elem](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/lmul-elem--e2fb466767bfe08446e9a639.md) | 154 | `result-track:e2fb466767bfe08446e9a63967586a7b57aac2e67519c98135eaab4bce63b7a2` |
| 7 | `lemma` | [finite_of_free](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/finite-of-free--23a7cae2edb9961312136e06.md) | 162 | `result-track:23a7cae2edb9961312136e0648d15b3c7cf7d20ae25c73dad75c8011379d95e6` |
| 8 | `def` | [sec](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/sec--36b47db76b229406a751b161.md) | 244 | `declaration-track:36b47db76b229406a751b161b8aed0d35ffbc057499aecc9fc75e3ef11bd75eb` |
| 9 | `lemma` | [comp_sec](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/comp-sec--2bbfcd5ee77338d4b70503ab.md) | 265 | `result-track:2bbfcd5ee77338d4b70503ab2f7ab9c79e8a045f91315a655ac00c3f9d89a890` |
| 10 | `lemma` | [flat_of_restrictScalars](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/flat-of-restrictscalars--5467349b70e5c92fea64eb7b.md) | 281 | `result-track:5467349b70e5c92fea64eb7be0258f1a664b3193765e3af03983bcfc2f037721` |
| 11 | `lemma` | [projective_of_restrictScalars](../../../../mathematics/Algebra/Finite/Variant45c40abe29dbb92798a537a5b64c863c851da00f9d714fe48cba83fd5a79524c.lean/declarations/projective-of-restrictscalars--12883d8d1bf3c437d105bb89.md) | 285 | `result-track:12883d8d1bf3c437d105bb89f86c07d55313c2595b576099d16fdf15cd4c3f4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
