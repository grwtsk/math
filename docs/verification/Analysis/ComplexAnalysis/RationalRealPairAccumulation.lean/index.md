# Verification target: GRWTSK.Analysis.Complex.RationalRealPairAccumulation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b15c5074cba28018eacb315f9c22d4b5f3d65ac",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalRealPairAccumulation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b15c5074cba28018eacb315f9c22d4b5f3d65ac`.

Source path: `GRWTSK/Analysis/Complex/RationalRealPairAccumulation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalRealPairAccumulation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalConjugatePairAccumulation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalConjugatePairAccumulation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRoundoffQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/realroundoffq--5f7f9fbe23cc8f1e9a582865.md) | 43 | `declaration-track:5f7f9fbe23cc8f1e9a582865d47fe7fdc4ded8568e36bb6e592a53ae4d9ccdf4` |
| 2 | `def` | [realInitialState](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/realinitialstate--ce91f1eb00b347868a75e81f.md) | 46 | `declaration-track:ce91f1eb00b347868a75e81f01c2297e117c3c4e790f594f8d1fcdf74bb5f724` |
| 3 | `theorem` | [cast_realRoundoffQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/cast-realroundoffq--09bcd1cc0e6e28e23a9eef34.md) | 50 | `result-track:09bcd1cc0e6e28e23a9eef346e9452cd52d654b74be6cc50c8a3e8c65e3c8d77` |
| 4 | `theorem` | [realRoundoffQ_lt_roundoffQ](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/realroundoffq-lt-roundoffq--ed48c3c855f6678cb9e46996.md) | 56 | `result-track:ed48c3c855f6678cb9e46996f844304653adfd19eab247c8d1c29d50416fafa9` |
| 5 | `theorem` | [realInitialState_value_im](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/realinitialstate-value-im--4e4a0e5bc25338215c42f50b.md) | 64 | `result-track:4e4a0e5bc25338215c42f50bf7e8b7b396272d883907bc5aa7da88b7a47ed70c` |
| 6 | `theorem` | [realInitialState_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/realinitialstate-sound--173f699db7f3b549cab7c928.md) | 69 | `result-track:173f699db7f3b549cab7c928193bc6f8dc07641aa92ebca8c89fd4c52a436ffe` |
| 7 | `def` | [sumRealValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/sumrealvalue--56f2b55dbf164c507e241ec4.md) | 116 | `declaration-track:56f2b55dbf164c507e241ec40d9e2b286139a8876c09a1d9a4471ec35707b102` |
| 8 | `def` | [sumError](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/sumerror--836346cdb0a6f359b8f5089d.md) | 121 | `declaration-track:836346cdb0a6f359b8f5089df185fda7d4cb8696e8ed8d049e5a1a34c42016f3` |
| 9 | `def` | [compute](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/compute--81457724d6a9b3d7f6cb6c03.md) | 125 | `declaration-track:81457724d6a9b3d7f6cb6c03ff31160068dcdb8d32547b47b639ecfd1bc59892` |
| 10 | `def` | [evaluate](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/evaluate--28d1e726987262bf356a6421.md) | 130 | `declaration-track:28d1e726987262bf356a64215dc2dd4c3977d483eb5a8915d0efc39d77151a09` |
| 11 | `def` | [verify](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/verify--ef4ee2494b1d1b37c7c97ea3.md) | 138 | `declaration-track:ef4ee2494b1d1b37c7c97ea32180551607b4fde8579b2717f7ce42a301e2248b` |
| 12 | `theorem` | [embed_sumRealValue](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/embed-sumrealvalue--1915092750b3f06d6dd3389b.md) | 142 | `result-track:1915092750b3f06d6dd3389b12405f6e646dc54bfc456cb4839cc161406a86ff` |
| 13 | `theorem` | [sum_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/sum-sound--631efbc614f16e944fd4bb91.md) | 152 | `result-track:631efbc614f16e944fd4bb9112ba8109e7bd0cbb52b6d6b4e8a97c809a5d2f53` |
| 14 | `theorem` | [compute_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/compute-sound--4a8a1659b306a28e1531bee3.md) | 171 | `result-track:4a8a1659b306a28e1531bee359d07914968f4cbe0500450592114bccd3da41de` |
| 15 | `theorem` | [preRoundError_lt_complexPreRoundError](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/prerounderror-lt-complexprerounderror--163844df1cd8702de89438c8.md) | 190 | `result-track:163844df1cd8702de89438c8ff6fbca4b0118706de1f925b5ed847651e705a7d` |
| 16 | `theorem` | [compute_value_im_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/compute-value-im-zero--9e9a141798434600ad1b8e72.md) | 196 | `result-track:9e9a141798434600ad1b8e728075d0097526c51e6ba255438cbbb77a219b2d1c` |
| 17 | `theorem` | [verify_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/verify-iff--17530dd3fb4794e303fcb7b4.md) | 201 | `result-track:17530dd3fb4794e303fcb7b47d01d3d2e6b1f76ac0bd45099a31d7e022e26731` |
| 18 | `theorem` | [verify_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/verify-sound--4722873ec4436f8206fbf2ee.md) | 212 | `result-track:4722873ec4436f8206fbf2ee9f75cb43d9be13d369bbfbb26c5d0ac993029bb2` |
| 19 | `theorem` | [accepted_value_im_zero](../../../../mathematics/Analysis/ComplexAnalysis/RationalRealPairAccumulation.lean/declarations/accepted-value-im-zero--58243e585ba8decbc960d896.md) | 230 | `result-track:58243e585ba8decbc960d8962991cc1747f418cbd46ce01a6f5f5b8ff90dfd8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
