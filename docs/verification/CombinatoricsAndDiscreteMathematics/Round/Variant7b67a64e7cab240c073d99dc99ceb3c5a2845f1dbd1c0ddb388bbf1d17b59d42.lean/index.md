# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Round.Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8565028b7dd9b05faef3bdb2003a8e029ea3d2b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8565028b7dd9b05faef3bdb2003a8e029ea3d2b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digammaDenominator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/digammadenominator--0301ad4ff3c20f2649415c78.md) | 48 | `declaration-track:0301ad4ff3c20f2649415c785101c2f9bd25723986d54ac49a6db87731479909` |
| 2 | `def` | [finiteDigamma?](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/finitedigamma--54e6ef998bc39ad2e6b98262.md) | 52 | `declaration-track:54e6ef998bc39ad2e6b98262300399d142d879e735c0ffe8374a98d4bfc5285e` |
| 3 | `theorem` | [digammaDenominator_eq_zero_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/digammadenominator-eq-zero-of-mem--f3827c8ee6ed6170c804ef94.md) | 61 | `result-track:f3827c8ee6ed6170c804ef9492975cea24581dcd02b03269430ca2769f7aa516` |
| 4 | `theorem` | [finiteDigamma_none_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/finitedigamma-none-of-mem--d61b25973cd51c41307ced6c.md) | 68 | `result-track:d61b25973cd51c41307ced6cc00a1b1a2cdeb2288c41714a0539d2002e32815b` |
| 5 | `def` | [allNonzeroRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/allnonzeroroots--bf167009b5d71fbee6776ce0.md) | 80 | `declaration-track:bf167009b5d71fbee6776ce0c5b0c7006593b3ccd5d10a354a529ce0aeda1f2b` |
| 6 | `theorem` | [finiteDigamma_allNonzero_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/finitedigamma-allnonzero-none--3570956c994791061bf146fb.md) | 86 | `result-track:3570956c994791061bf146fb8f8a62484a0c86ed259a77241c8b839f4d072757` |
| 7 | `theorem` | [powerMap_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/powermap-bijective--f8940877619c1db883568aff.md) | 103 | `result-track:f8940877619c1db883568affdff25608213c9a1278d2bbae641f8f8ce34fb5b8` |
| 8 | `def` | [powerPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/powerpermutation--7c253c8130305d98cacd9a27.md) | 148 | `declaration-track:7c253c8130305d98cacd9a27599e380dc650b8970f4d737c8416879838e70bc8` |
| 9 | `theorem` | [powerPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/powerpermutation-apply--266b299e4c28386d0dc09ee9.md) | 157 | `result-track:266b299e4c28386d0dc09ee904fbe723f74501017e6ef9d9455a56c2584cf592` |
| 10 | `def` | [inversionPermutation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inversionpermutation--1797e9a126e4dcb2a0b4f991.md) | 173 | `declaration-track:1797e9a126e4dcb2a0b4f991cfc58873056ab6fc0fc7cf0fc6c77efa3bfa94f2` |
| 11 | `theorem` | [inversionPermutation_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inversionpermutation-apply--2fda3352409f9cc5153e3f8e.md) | 180 | `result-track:2fda3352409f9cc5153e3f8e61afa70b7bfec42d2d4518df9baa033ed77ba479` |
| 12 | `theorem` | [inversionPermutation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inversionpermutation-zero--c231696be48c4215bce483ae.md) | 185 | `result-track:c231696be48c4215bce483aefd08eb0009f68e94ddd057b49d1231526dcfc753` |
| 13 | `theorem` | [inversionPermutation_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inversionpermutation-involutive--22cdf7944eacda09cd68c3f3.md) | 190 | `result-track:22cdf7944eacda09cd68c3f399b3414cf5e50cb40eca44834a6e505a517e36fd` |
| 14 | `structure` | [FieldRound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/fieldround--322c10938a6dbf6dd34f8706.md) | 200 | `declaration-track:322c10938a6dbf6dd34f870664a48372245e1cf0e26316dd0ec7504d7428bedb` |
| 15 | `def` | [toEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/toequiv--4e4b8b508c341fb5d20645c2.md) | 211 | `declaration-track:4e4b8b508c341fb5d20645c223ad1edd09698cf5cc0ad9b56617a8c9a401ff32` |
| 16 | `def` | [run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/run--0534df0e134b3d4d8c4386f8.md) | 216 | `declaration-track:0534df0e134b3d4d8c4386f8bc6fb4036b41c285fa97179daf2f3daa7d1948c5` |
| 17 | `theorem` | [run_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/run-apply--ce84e5264903c97cb03038b4.md) | 220 | `result-track:ce84e5264903c97cb03038b4d8eed6aca9c1f9f7ccc40950d658281535c96ac6` |
| 18 | `theorem` | [run_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/run-bijective--82a6736ad46283a4332462f1.md) | 226 | `result-track:82a6736ad46283a4332462f1871a99a2b6b91aadb071b23a63b595a17068d716` |
| 19 | `def` | [inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inverse--a5d2fb27ba36ced50fbb956c.md) | 231 | `declaration-track:a5d2fb27ba36ced50fbb956c0cc78d3b22e8e7ffbc7b94a76db2567621add9fe` |
| 20 | `theorem` | [inverse_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inverse-apply--2da437ce45e644b6faedc0ca.md) | 237 | `result-track:2da437ce45e644b6faedc0caadae194cc7efeadff616d6a97f524fc259ac18d6` |
| 21 | `theorem` | [inverse_run](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/inverse-run--056eac16e7eaede7c8c16c09.md) | 246 | `result-track:056eac16e7eaede7c8c16c09b2e86fada923de7527abb6265549ded11a5cbb7a` |
| 22 | `theorem` | [run_inverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/run-inverse--5852baac9378e96be89d0e41.md) | 251 | `result-track:5852baac9378e96be89d0e41f4646010f24b573abbcb0ec4b95b7287a558439c` |
| 23 | `def` | [ofPower](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/ofpower--f661478cd9342fc724ff6818.md) | 257 | `declaration-track:f661478cd9342fc724ff68185772ebd18f17d6c2bee4af54423f9034fd557203` |
| 24 | `theorem` | [ofPower_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/ofpower-bijective--89e211f29a2bc655815d40cf.md) | 271 | `result-track:89e211f29a2bc655815d40cf633399f41f3c39c65052ec14b210a2d9386649f8` |
| 25 | `def` | [transportToBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/transporttobits--b0e91986c4bb1484a8d560dd.md) | 286 | `declaration-track:b0e91986c4bb1484a8d560dd816d3150f105279a114a4a8abebac340cf96aa7e` |
| 26 | `theorem` | [transportToBits_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Round/Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42.lean/declarations/transporttobits-bijective--2949102000313209e13a6796.md) | 294 | `result-track:2949102000313209e13a67965e8fbcc7458700f772f73369e32fab1c88058eb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
