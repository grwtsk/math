# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Tower.Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd50df742ee7d0461de787ad9c3041ae0e987187",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd50df742ee7d0461de787ad9c3041ae0e987187`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Eval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_map_algebraMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/declarations/aeval-map-algebramap--2ff0c2b71109cd307f869f5c.md) | 41 | `result-track:2ff0c2b71109cd307f869f5ca5c63e8999bc5a79a93e9f8a72e96c4215512eb6` |
| 2 | `theorem` | [aeval_algebraMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/declarations/aeval-algebramap-apply--fab95f5c5863fae48fed3a5a.md) | 53 | `result-track:fab95f5c5863fae48fed3a5a85fe264d0040cea878cd74175de9db7142cc3bb9` |
| 3 | `theorem` | [aeval_algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/declarations/aeval-algebramap-eq-zero-iff--21d95b9dddff260250ee265f.md) | 60 | `result-track:21d95b9dddff260250ee265f1d7894544cf9f46dcb0229633308c3f0013f2976` |
| 4 | `theorem` | [aeval_algebraMap_eq_zero_iff_of_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/declarations/aeval-algebramap-eq-zero-iff-of-injective--1430335ffacdd1190122d741.md) | 65 | `result-track:1430335ffacdd1190122d7411dfe089f64d0fed8de52160ecd4541ee9432d956` |
| 5 | `theorem` | [mvPolynomial_aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Tower/Variant99bd0379cf42ecebb2abbbfa7cb9e235b7659e2fa78fa4ebc2a39e800ff12ae7.lean/declarations/mvpolynomial-aeval-coe--d1c2b264d96af91c81f20915.md) | 83 | `result-track:d1c2b264d96af91c81f209156b047bf0ffa266ab1f1188a6c86863accfa69a85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
