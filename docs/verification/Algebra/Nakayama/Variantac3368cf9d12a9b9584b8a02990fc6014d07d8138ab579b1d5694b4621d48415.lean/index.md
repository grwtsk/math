# Verification target: GRWTSK.Algebra.Nakayama.Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3735a84389b2bba978c29e227898c621f94fff69",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3735a84389b2bba978c29e227898c621f94fff69`.

Source path: `GRWTSK/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Finiteness.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nakayama` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Ideal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/eq-smul-of-le-smul-of-le-jacobson--78ddfe8f50c9a4f6c718f7b5.md) | 61 | `result-track:78ddfe8f50c9a4f6c718f7b5ca100d208e6499a839c2789c6155d2b06bff18aa` |
| 2 | `lemma` | [eq_bot_of_eq_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/eq-bot-of-eq-ideal-smul-of-le-jacobson-annihilator--7a5a371a8765c3e002bf7292.md) | 72 | `result-track:7a5a371a8765c3e002bf72923c9a16c4e0c1407a11b6f3b7307e8bc1d1c352f0` |
| 3 | `lemma` | [eq_bot_of_eq_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/eq-bot-of-eq-pointwise-smul-of-mem-jacobson-annihilator--a6df74dc108dabf43feff924.md) | 78 | `result-track:a6df74dc108dabf43feff924136e887c85c39b0387e29a0e11bb5a4d44d9baf2` |
| 4 | `lemma` | [eq_bot_of_set_smul_eq_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/eq-bot-of-set-smul-eq-of-subset-jacobson-annihilator--24570ebf99e2907214c768b5.md) | 86 | `result-track:24570ebf99e2907214c768b5666b474c0ac296f3e908aed7fc164ffea6216643` |
| 5 | `lemma` | [top_ne_ideal_smul_of_le_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/top-ne-ideal-smul-of-le-jacobson-annihilator--ae0eef7275d52618796d491b.md) | 92 | `result-track:ae0eef7275d52618796d491bfb5334ca1911bf574c6eb3ee3d6771bb701d4add` |
| 6 | `lemma` | [top_ne_set_smul_of_subset_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/top-ne-set-smul-of-subset-jacobson-annihilator--eefb17e00657253f4c7df9da.md) | 99 | `result-track:eefb17e00657253f4c7df9da68ff54430dab2c5bb9633c26b4a2a48f18af35fd` |
| 7 | `lemma` | [top_ne_pointwise_smul_of_mem_jacobson_annihilator](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/top-ne-pointwise-smul-of-mem-jacobson-annihilator--42fb6fe0e7587e985ab8a047.md) | 107 | `result-track:42fb6fe0e7587e985ab8a04721f9955d2bfb978e72ad884c37ab56e0a6e76bd6` |
| 8 | `theorem` | [eq_bot_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/eq-bot-of-le-smul-of-le-jacobson-bot--12cee44d701761e2ed633a49.md) | 118 | `result-track:12cee44d701761e2ed633a49668e20193b74a264edf45f678fcf4429272f5a50` |
| 9 | `theorem` | [sup_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/sup-eq-sup-smul-of-le-smul-of-le-jacobson--ab809e10c655fa5799922a69.md) | 122 | `result-track:ab809e10c655fa5799922a69ec1dd7e77bfef060496fec3112caa77be7983ef1` |
| 10 | `theorem` | [sup_smul_eq_sup_smul_of_le_smul_of_le_jacobson](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/sup-smul-eq-sup-smul-of-le-smul-of-le-jacobson--3cfe3f95c80edce2c976298a.md) | 141 | `result-track:3cfe3f95c80edce2c976298af53343d76176fd7cde795598d4e29cf415439da9` |
| 11 | `theorem` | [le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/le-of-le-smul-of-le-jacobson-bot--2185680e338a96948adf5420.md) | 146 | `result-track:2185680e338a96948adf54200e428932f1ba926a30eb413e7ca1cc8510d6a596` |
| 12 | `theorem` | [smul_le_of_le_smul_of_le_jacobson_bot](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/smul-le-of-le-smul-of-le-jacobson-bot--f89f0e757384c3a2ce42768a.md) | 156 | `result-track:f89f0e757384c3a2ce42768a3edd0b09e25c2e3232aaa7b92c7ff18597bf061b` |
| 13 | `lemma` | [exists_sub_one_mem_and_smul_le_of_fg_of_le_sup](../../../../mathematics/Algebra/Nakayama/Variantac3368cf9d12a9b9584b8a02990fc6014d07d8138ab579b1d5694b4621d48415.lean/declarations/exists-sub-one-mem-and-smul-le-of-fg-of-le-sup--dd6df24ecd8ee83ba3b53a76.md) | 163 | `result-track:dd6df24ecd8ee83ba3b53a768aa2cfc0758203816c3405137481dda7a167514c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
