# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c71a1bdfa95877b901912ec1ddc4f93c7fcfd0de",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c71a1bdfa95877b901912ec1ddc4f93c7fcfd0de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Bitwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_coe_nat_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/le-coe-nat-sub--a134ae3019811d56f824df7b.md) | 35 | `result-track:a134ae3019811d56f824df7bcf0e234e13172a6f9956a8b8be883ef09b450e5f` |
| 2 | `theorem` | [succ_coe_nat_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/succ-coe-nat-pos--238062ace2e224339eac8af7.md) | 45 | `result-track:238062ace2e224339eac8af72c6eaf967c4791a2ce91d0f8cb91d92cfd678705` |
| 3 | `theorem` | [natAbs_eq_iff_sq_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-eq-iff-sq-eq--3529dfe7ba15dc50f95d333c.md) | 54 | `result-track:3529dfe7ba15dc50f95d333c2a2f53582cb040da433009ec5b38f0863e372120` |
| 4 | `theorem` | [natAbs_lt_iff_sq_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-lt-iff-sq-lt--ca9a9b98e775e3208a75cfad.md) | 59 | `result-track:ca9a9b98e775e3208a75cfadc5712f9da00e5ffbba5fa6249722501157afa430` |
| 5 | `theorem` | [natAbs_le_iff_sq_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-le-iff-sq-le--099d1d9225fa1dc9b40f0294.md) | 64 | `result-track:099d1d9225fa1dc9b40f0294190669a12500003c1d0bf320d3dfb614f63f16fb` |
| 6 | `theorem` | [natAbs_inj_of_nonneg_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-inj-of-nonneg-of-nonneg--b44ef3a597bdd03b50005cbd.md) | 69 | `result-track:b44ef3a597bdd03b50005cbd210f57cb51468732eeaae8d676b70a185c44ce4e` |
| 7 | `theorem` | [natAbs_inj_of_nonpos_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-inj-of-nonpos-of-nonpos--d3fce7a14cd85424d724f09e.md) | 73 | `result-track:d3fce7a14cd85424d724f09e90d26b0ab0786a2880b64f50f15ef4dcae37f33c` |
| 8 | `theorem` | [natAbs_inj_of_nonneg_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-inj-of-nonneg-of-nonpos--830e8df0c326ba2a229cff92.md) | 79 | `result-track:830e8df0c326ba2a229cff92a5a6e4f892612c09ea7664e5b76e7be44585306c` |
| 9 | `theorem` | [natAbs_inj_of_nonpos_of_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/natabs-inj-of-nonpos-of-nonneg--0ce6b484e3e25871086e8961.md) | 84 | `result-track:0ce6b484e3e25871086e896194246b150a9e3a4dafa20854cda1eaf2740b71c4` |
| 10 | `theorem` | [strictMonoOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/strictmonoon-natabs--41f380e0a08d15d67bb48e19.md) | 93 | `result-track:41f380e0a08d15d67bb48e19d3dba02d10e6980211d2363cc955989028a61a9f` |
| 11 | `theorem` | [strictAntiOn_natAbs](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/strictantion-natabs--814e99b53947119b1f523d55.md) | 97 | `result-track:814e99b53947119b1f523d550cbb7f142d5d841501227bd701c4b982dd3c9429` |
| 12 | `theorem` | [injOn_natAbs_Ici](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/injon-natabs-ici--3749aa54e8e09f2b567d3ab2.md) | 102 | `result-track:3749aa54e8e09f2b567d3ab2beab70faeb1fcb2df4ab5265e2637f03bbd2d02b` |
| 13 | `theorem` | [injOn_natAbs_Iic](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/injon-natabs-iic--abc4375a835636c07256af84.md) | 106 | `result-track:abc4375a835636c07256af84d56ea12e3fdd298a4ccb4ef39dd0527bc37b8428` |
| 14 | `theorem` | [toNat_of_nonpos](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/tonat-of-nonpos--bd7b583571785ce7107e3cc6.md) | 115 | `result-track:bd7b583571785ce7107e3cc60bc472cce350ae0e15c0b4be641f8d51b7f0c666` |
| 15 | `theorem` | [div2_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variantf5b0d55b2ba439f7b4866cc6d5b953d474d7dfbf1a84b990e3b10cb6fab5bdb0.lean/declarations/div2-bit--ffc49ba9efe12be7717e3bc4.md) | 130 | `result-track:ffc49ba9efe12be7717e3bc425572b2feaaa0671a77de2f52661b2c3cf077323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
