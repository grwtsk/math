# Verification target: GRWTSK.Algebra.LinearAlgebra.Support.Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d54a07787bb53fe79f7c8e83d87d549e314359ed",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d54a07787bb53fe79f7c8e83d87d549e314359ed`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Finiteness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Module.support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support--ee9afcdaf1c628df555362be.md) | 51 | `declaration-track:ee9afcdaf1c628df555362befa7258096db9c364a284d54508992b8497284fc5` |
| 2 | `lemma` | [Module.mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-mem-support-iff--d5130e767afc7c15be4dee35.md) | 54 | `result-track:d5130e767afc7c15be4dee35a2c6b9ab5a6db31d6f1587e759df297a7fc2a7d8` |
| 3 | `lemma` | [Module.notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-notmem-support-iff--1ae39cfdf1c21d3b080609a0.md) | 57 | `result-track:1ae39cfdf1c21d3b080609a0d57416ce0bce22bee2e51269b868878089084ab2` |
| 4 | `lemma` | [Module.notMem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-notmem-support-iff--378e6f931c96c09f237165d5.md) | 63 | `result-track:378e6f931c96c09f237165d55ceb07a32890992134bd7e5a082b903eb271e2df` |
| 5 | `lemma` | [Module.mem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-mem-support-iff--772f0cdbf870c7ee2bd06fe2.md) | 71 | `result-track:772f0cdbf870c7ee2bd06fe2b6ede6467e7f7330632ad4229d191c815fe442ad` |
| 6 | `lemma` | [Module.mem_support_iff_exists_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-mem-support-iff-exists-annihilator--614deec556d2e906538cf426.md) | 77 | `result-track:614deec556d2e906538cf426424b1b1cb2b617555688535c25b3f35232d506ee` |
| 7 | `lemma` | [Module.mem_support_iff_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-mem-support-iff-of-span-eq-top--c2982540e6f5f604ce3cf5a4.md) | 82 | `result-track:c2982540e6f5f604ce3cf5a41bd0530e7c1b6285fa5656ab78e2fb47e0414a03` |
| 8 | `lemma` | [Module.annihilator_le_of_mem_support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-annihilator-le-of-mem-support--fcad8a698ff2bf9b937ebada.md) | 96 | `result-track:fcad8a698ff2bf9b937ebada0df108578184e8d33182a48a17200c202f122cc1` |
| 9 | `lemma` | [LocalizedModule.subsingleton_iff_support_subset](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/localizedmodule-subsingleton-iff-support-subset--eab09bc1209903223f38e890.md) | 101 | `result-track:eab09bc1209903223f38e890dd616895426cb35dfa8c889fa5c43f26dc5906ce` |
| 10 | `lemma` | [Module.support_eq_empty_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-eq-empty-iff--bcc14b05d32ce4c1d14fdd76.md) | 121 | `result-track:bcc14b05d32ce4c1d14fdd7678530effc61c43d3ae3477fce4a56b2f5a7a33c2` |
| 11 | `lemma` | [Module.support_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-eq-empty--83b34563611d3104886a27c5.md) | 128 | `result-track:83b34563611d3104886a27c56ad6f687dbddec8bde49d86f2b9f4b51f3271b96` |
| 12 | `lemma` | [Module.support_of_algebra](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-of-algebra--e7a2f5e33b3bcb78c5c48387.md) | 132 | `result-track:e7a2f5e33b3bcb78c5c48387a5500a6bda4d459b28cc25930008e329a8b9f935` |
| 13 | `lemma` | [Module.support_of_noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-of-nozerosmuldivisors--38415e1fbf9568ec6d7aba09.md) | 140 | `result-track:38415e1fbf9568ec6d7aba09f5c55594b87827258266cd90bebb32fe013c7ead` |
| 14 | `lemma` | [Module.support_subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-subset-of-injective--7c750194f8d3436d5e463179.md) | 150 | `result-track:7c750194f8d3436d5e463179cb5f83a1b53c617c98126c86dfe748f330003dca` |
| 15 | `lemma` | [Module.support_subset_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-subset-of-surjective--fdbed559dbe45d412eeefecb.md) | 157 | `result-track:fdbed559dbe45d412eeefecbd92b9a39381c353e20c3a16cfdb705a188b052ab` |
| 16 | `lemma` | [Module.support_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-of-exact--41987c77c626429359dd8e33.md) | 167 | `result-track:41987c77c626429359dd8e333c09f45aec6e8798167a3951ae0238401fb384ea` |
| 17 | `lemma` | [LinearEquiv.support_eq](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/linearequiv-support-eq--346e1146dc26c6734c4cc7aa.md) | 182 | `result-track:346e1146dc26c6734c4cc7aa75a6c214f9b9d073179061a5435c1f0b1314fe2e` |
| 18 | `lemma` | [Module.mem_support_iff_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-mem-support-iff-of-finite--845b3c6e69bb2193e9edd00a.md) | 193 | `result-track:845b3c6e69bb2193e9edd00a65767c1e1fa43f2ed9ac0b3bd72ee5102cd3860e` |
| 19 | `lemma` | [Module.support_eq_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-eq-zerolocus--058c87d50ae3261df94cecc0.md) | 210 | `result-track:058c87d50ae3261df94cecc0bb5fedb9d5d99ada750adb9601e8ad2995078f3e` |
| 20 | `lemma` | [LocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/localizedmodule-exists-subsingleton-away--3b3d0c5482612c66f757711c.md) | 216 | `result-track:3b3d0c5482612c66f757711c275250a8ca2ce11914cf70ad1863fab5a9f70829` |
| 21 | `theorem` | [Module.support_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Support/Varianta5271a9df58a54ad7b578faf98f9172f2b1244ebd425387fcdb3939cbb1708cf.lean/declarations/module-support-quotient--506361e6cdc1f0185badd300.md) | 229 | `result-track:506361e6cdc1f0185badd300fcfb3bb28886f9aa5fa502d9cd09a52ee639f016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
