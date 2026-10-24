# Verification target: GRWTSK.NumberTheory.Primes.BoundedEnumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "854729f8f063cfacbc0a30ae5c7312083bcf8fa9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `854729f8f063cfacbc0a30ae5c7312083bcf8fa9`.

Source path: `GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/BoundedEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.PrimeCounting` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EnumeratesBelow](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/declarations/enumeratesbelow--7a2540b8b5dac37b20148487.md) | 9 | `declaration-track:7a2540b8b5dac37b20148487538b4bec3d97f31605cedfacacef09843df75822` |
| 2 | `theorem` | [primesBelow_contract](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/declarations/primesbelow-contract--db0912789a3bec493b8b5a78.md) | 12 | `result-track:db0912789a3bec493b8b5a788cf189d0ad1fb034ccd6346990fb2b65128ce7f2` |
| 3 | `theorem` | [enumeration_unique](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/declarations/enumeration-unique--68bec5ec3b15990f94df45c0.md) | 17 | `result-track:68bec5ec3b15990f94df45c0fd8918bca3c7b734d2e65f334fca41d72b923950` |
| 4 | `theorem` | [enumeration_step](../../../../mathematics/NumberTheory/Primes/BoundedEnumeration.lean/declarations/enumeration-step--e86d76e57ecad9560b2ab89c.md) | 24 | `result-track:e86d76e57ecad9560b2ab89c74ef54bb430d3af2b134e45f79a8d487c16062d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
