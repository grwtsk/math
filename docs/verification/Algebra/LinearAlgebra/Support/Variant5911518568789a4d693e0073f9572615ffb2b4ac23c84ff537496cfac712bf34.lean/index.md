# Verification target: GRWTSK.Algebra.LinearAlgebra.Support.Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c6f6dd1e88a202aba26cb4cddb5603678bbaab3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c6f6dd1e88a202aba26cb4cddb5603678bbaab3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Colon` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Finiteness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nakayama` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Module.support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support--e6e4ec0fecb69deed2b67f69.md) | 43 | `declaration-track:e6e4ec0fecb69deed2b67f697ada7f327fb5094d5cc8c43a14e6740c81332403` |
| 2 | `lemma` | [Module.mem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-mem-support-iff--f91ec01e7052259fdd5275ed.md) | 46 | `result-track:f91ec01e7052259fdd5275edba605a2fcdc9265c68baed97080fb58fbb7e12f1` |
| 3 | `lemma` | [Module.notMem_support_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-notmem-support-iff--22222989a376e3a2b6d6dcd8.md) | 49 | `result-track:22222989a376e3a2b6d6dcd817e475de9eac4fed447b6bb7249743381de38897` |
| 4 | `lemma` | [Module.notMem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-notmem-support-iff--f382d19a507959d1d32e7df1.md) | 55 | `result-track:f382d19a507959d1d32e7df18b08a6f795be1fd412b6fe6e06c28d028be8743d` |
| 5 | `lemma` | [Module.mem_support_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-mem-support-iff--2aac45837bc13575dc3eb66c.md) | 63 | `result-track:2aac45837bc13575dc3eb66ce7e0e36ba421a145d073520ec55fcbaae3878245` |
| 6 | `lemma` | [Module.mem_support_iff_exists_annihilator](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-mem-support-iff-exists-annihilator--2a43a04f00c10ac666677275.md) | 69 | `result-track:2a43a04f00c10ac666677275b33443f2193457482a06af6a4d1ce0ddfe98943a` |
| 7 | `lemma` | [Module.mem_support_iff_of_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-mem-support-iff-of-span-eq-top--007879a475cac88e42ee81e5.md) | 74 | `result-track:007879a475cac88e42ee81e54fb1e88e38e95766012692f0ef1ef3dab1546f9c` |
| 8 | `lemma` | [Module.annihilator_le_of_mem_support](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-annihilator-le-of-mem-support--803aa274fb55acea6acf5653.md) | 88 | `result-track:803aa274fb55acea6acf56535a69beae448bff3e2c7db23ed6d0e3c5139efcd5` |
| 9 | `lemma` | [LocalizedModule.subsingleton_iff_support_subset](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/localizedmodule-subsingleton-iff-support-subset--38d64f63ab3b45187666462c.md) | 93 | `result-track:38d64f63ab3b45187666462cc6f383039d423b389b346e8129f3796554ce6509` |
| 10 | `lemma` | [Module.support_eq_empty_iff](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-eq-empty-iff--3aa345f8cc2440736c8ad70b.md) | 113 | `result-track:3aa345f8cc2440736c8ad70b68bf2dd30697b2c5b75f70fc9f8406e453a260a9` |
| 11 | `lemma` | [Module.support_eq_empty](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-eq-empty--b73880a4e2f55054c4993516.md) | 120 | `result-track:b73880a4e2f55054c499351627e73ac7a31c96d32f18f79c1ac42db5ee8ddd6f` |
| 12 | `lemma` | [Module.support_of_algebra](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-of-algebra--7630df02b6ee68a557fbe8bd.md) | 124 | `result-track:7630df02b6ee68a557fbe8bd65c7bf539af79aff15369ce7d60d58d683dc0a36` |
| 13 | `lemma` | [Module.support_of_noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-of-nozerosmuldivisors--5efb145717a640a9f4e2b0ef.md) | 132 | `result-track:5efb145717a640a9f4e2b0ef96564f0ec5ca48ebb0943dd70637ea02e32df142` |
| 14 | `lemma` | [Module.support_subset_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-subset-of-injective--03e4b9e08fb51d79f07ebc91.md) | 142 | `result-track:03e4b9e08fb51d79f07ebc91fd153e852ea89e940ea6c5d7622b5cbef09e5fb8` |
| 15 | `lemma` | [Module.support_subset_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-subset-of-surjective--cadf72413e3503ddb285da67.md) | 149 | `result-track:cadf72413e3503ddb285da67e23a4d876f4e47a748031c0a12a37e246c3ad2f3` |
| 16 | `lemma` | [Module.support_of_exact](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-of-exact--b212357922c1a8cc796eda9b.md) | 159 | `result-track:b212357922c1a8cc796eda9bf06e6577be8734c55d0bdec27667ef7973498ad8` |
| 17 | `lemma` | [LinearEquiv.support_eq](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/linearequiv-support-eq--28be75cfe4d6c0a601fa0329.md) | 174 | `result-track:28be75cfe4d6c0a601fa03293d25fd07ec0c3a912ba3abec346cb68c88278cc5` |
| 18 | `lemma` | [Module.mem_support_iff_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-mem-support-iff-of-finite--f32644f9ab10e91708c90146.md) | 185 | `result-track:f32644f9ab10e91708c901467befef4ccf7703dd56d5394a218edf982ff683c1` |
| 19 | `lemma` | [Module.support_eq_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-eq-zerolocus--6d647b75da3709c7b3a86f09.md) | 202 | `result-track:6d647b75da3709c7b3a86f093d879857a071fdd9c5530b3de146f4b19ec83e59` |
| 20 | `lemma` | [LocalizedModule.exists_subsingleton_away](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/localizedmodule-exists-subsingleton-away--e43ad46083a17cd46f80b10c.md) | 208 | `result-track:e43ad46083a17cd46f80b10ca47d14e8e59a7a4c6479a1ebb0052b1bd9726567` |
| 21 | `theorem` | [Module.support_quotient](../../../../../mathematics/Algebra/LinearAlgebra/Support/Variant5911518568789a4d693e0073f9572615ffb2b4ac23c84ff537496cfac712bf34.lean/declarations/module-support-quotient--b8e66f820943edcdcaacbc70.md) | 221 | `result-track:b8e66f820943edcdcaacbc70b78d974c49815a6a3112f32f5005aa0e15c943be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
