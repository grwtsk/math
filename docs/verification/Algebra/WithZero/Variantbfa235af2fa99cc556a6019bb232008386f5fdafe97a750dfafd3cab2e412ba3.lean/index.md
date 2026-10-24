# Verification target: GRWTSK.Algebra.WithZero.Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b78aa859f6cfe56e0bed4792ffa7b490835ba944",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/index.md) · [Full source](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b78aa859f6cfe56e0bed4792ffa7b490835ba944`.

Source path: `GRWTSK/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.WithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLeftDistribClass](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/declarations/instleftdistribclass--a8bd880f529c4965f63337fa.md) | 24 | `declaration-track:a8bd880f529c4965f63337fa94eb38fbd6de16488ed614022474d6db391a34e0` |
| 2 | `instance` | [instRightDistribClass](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/declarations/instrightdistribclass--309abd159a04658ced815b1a.md) | 31 | `declaration-track:309abd159a04658ced815b1a84eaec75282d517a06f1677f821a7fa92453ca0b` |
| 3 | `instance` | [instDistrib](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/declarations/instdistrib--9c7e988b4651ba15326693eb.md) | 38 | `declaration-track:9c7e988b4651ba15326693eb4b4281f2e034df9dcd51022c6140d418d0e0ca5c` |
| 4 | `instance` | [instSemiring](../../../../mathematics/Algebra/WithZero/Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3.lean/declarations/instsemiring--6068249c71e249494bc29dfc.md) | 42 | `declaration-track:6068249c71e249494bc29dfc2eda9ffd512c214727d85b785bcb01593ae832aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
