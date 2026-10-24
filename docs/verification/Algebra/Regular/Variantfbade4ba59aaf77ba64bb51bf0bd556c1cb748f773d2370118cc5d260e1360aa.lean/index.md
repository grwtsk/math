# Verification target: GRWTSK.Algebra.Regular.Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf997cd28aa71ef8acfd1195b96d00f0b2dcf50c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf997cd28aa71ef8acfd1195b96d00f0b2dcf50c`.

Source path: `GRWTSK/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLeftRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/isleftregular-of-non-zero-divisor--0b08bf3e5bbc1f0dd0595377.md) | 26 | `result-track:0b08bf3e5bbc1f0dd0595377e619a6aa04ff406b64c4ee858e8888ad9dcb28a3` |
| 2 | `theorem` | [isRightRegular_of_non_zero_divisor](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/isrightregular-of-non-zero-divisor--04a46cd997ca3dabbc164b5e.md) | 33 | `result-track:04a46cd997ca3dabbc164b5e77ef2ab08808a06f86286e6233b2ef7410366400` |
| 3 | `theorem` | [isRegular_of_ne_zero'](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/isregular-of-ne-zero--5f7ae0f7fb75e1f10e9733de.md) | 38 | `result-track:5f7ae0f7fb75e1f10e9733de1995692c5c4a58b4fde4a7205b2cc051e472ef8a` |
| 4 | `theorem` | [isRegular_iff_ne_zero'](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/isregular-iff-ne-zero--52a554b64b0438f01f8d88c6.md) | 45 | `result-track:52a554b64b0438f01f8d88c649ad269e1456393106ba9b01dfe55d907a80ddb6` |
| 5 | `abbrev` | [NoZeroDivisors.toCancelMonoidWithZero](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/nozerodivisors-tocancelmonoidwithzero--b04c798dfbf14e469b943f0a.md) | 54 | `declaration-track:b04c798dfbf14e469b943f0af9965d3fcec3fbebc1e9727f50bc861ef238d0e1` |
| 6 | `abbrev` | [NoZeroDivisors.toCancelCommMonoidWithZero](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/nozerodivisors-tocancelcommmonoidwithzero--69644dc0fe41d0e222486a5f.md) | 64 | `declaration-track:69644dc0fe41d0e222486a5f34815a51b0ae9a6189585455677b6adccb143ba8` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/instance--7176af86eb5373400ba37b53.md) | 71 | `declaration-track:7176af86eb5373400ba37b53c52046854634ab585adffb0e52718d4a94f7f6ac` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Regular/Variantfbade4ba59aaf77ba64bb51bf0bd556c1cb748f773d2370118cc5d260e1360aa.lean/declarations/instance--6c78060dc06d0f79479b5e15.md) | 78 | `declaration-track:6c78060dc06d0f79479b5e15cd113b33d21adbd58da4d190c285cf7849087471` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
