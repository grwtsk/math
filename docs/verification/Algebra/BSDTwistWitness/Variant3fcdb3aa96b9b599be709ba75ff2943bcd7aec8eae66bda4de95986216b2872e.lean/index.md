# Verification target: GRWTSK.Algebra.BSDTwistWitness.Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1439b8242d8f3792314326189048e82f0ea89f75",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/index.md) · [Full source](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1439b8242d8f3792314326189048e82f0ea89f75`.

Source path: `GRWTSK/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.Weierstrass` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuadraticTwistFamilyWitness](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/quadratictwistfamilywitness--bd2e8c26c251365043d889e1.md) | 32 | `declaration-track:bd2e8c26c251365043d889e1c648f477834bf38aae6aaa440da23c53f1be4258` |
| 2 | `def` | [AllTwistsCertified](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/alltwistscertified--b5285b01bafe2151ab4053f8.md) | 45 | `declaration-track:b5285b01bafe2151ab4053f82797c9762160fedfc1bf97e27d87bd48d555f1ef` |
| 3 | `structure` | [CertifiedQuadraticTwistFamily](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/certifiedquadratictwistfamily--28affe205bf33814a21c4c01.md) | 49 | `declaration-track:28affe205bf33814a21c4c01f67423eb631f57e45c5ea842392acca463da69c4` |
| 4 | `theorem` | [certified_twist_family_all_certified](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/certified-twist-family-all-certified--7cac8107886e046f5fa11f56.md) | 54 | `result-track:7cac8107886e046f5fa11f561643b9e8d1eda86493ba962ee17683ea7ad82be6` |
| 5 | `theorem` | [certified_twist_family_infinite](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/certified-twist-family-infinite--5d74efb7df2e2ee3bdd566b6.md) | 59 | `result-track:5d74efb7df2e2ee3bdd566b6ec1987851e96a2430f9ee65a638f73b824543e61` |
| 6 | `structure` | [BSDMonodromyParameterSource](../../../../mathematics/Algebra/BSDTwistWitness/Variant3fcdb3aa96b9b599be709ba75ff2943bcd7aec8eae66bda4de95986216b2872e.lean/declarations/bsdmonodromyparametersource--23fb9cf89257754465f551c7.md) | 64 | `declaration-track:23fb9cf89257754465f551c759063bc193cf0ae56055ffb65eb702948825bb56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
