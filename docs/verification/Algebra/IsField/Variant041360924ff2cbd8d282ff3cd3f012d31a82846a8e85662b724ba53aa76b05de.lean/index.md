# Verification target: GRWTSK.Algebra.IsField.Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "375a533bcbb681970e15e1e63ca63305022e4dd8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `375a533bcbb681970e15e1e63ca63305022e4dd8`.

Source path: `GRWTSK/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsField](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/isfield--be6577dcdcb3c61afb3b47cf.md) | 37 | `declaration-track:be6577dcdcb3c61afb3b47cf85b5995096cfd64c1ceed50ca274b1c74aeab151` |
| 2 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/semifield-toisfield--d295f08020423dacd7df5473.md) | 46 | `result-track:d295f08020423dacd7df5473d5b576d4caa3c65ee11f06b327743e4fcf6959e2` |
| 3 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/field-toisfield--22cea07435271d68736b6656.md) | 51 | `result-track:22cea07435271d68736b66563d0ed39055c47e7be7a354b6e964a8827bf968f2` |
| 4 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/isfield-nontrivial--5639bbd5b1e1b126363ec394.md) | 55 | `result-track:5639bbd5b1e1b126363ec3949004d1f5cb6453ae64347100cf09a4bf8d2b72e8` |
| 5 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/not-isfield-of-subsingleton--c7f93c075cd0eaa3c78db3b9.md) | 59 | `result-track:c7f93c075cd0eaa3c78db3b97eeb48326ada1325349081209324815a056fb57f` |
| 6 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/isfield-tosemifield--efcda6b1465712398ccded15.md) | 66 | `declaration-track:efcda6b1465712398ccded15c4e5cad8b2e7fe82e7b901248734e0d8c3565d8a` |
| 7 | `def` | [IsField.toField](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/isfield-tofield--80b3d470c4fc5984f4a25b65.md) | 76 | `declaration-track:80b3d470c4fc5984f4a25b65e3be2a0656caab23b2e500ccfe86e47c49f05115` |
| 8 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/IsField/Variant041360924ff2cbd8d282ff3cd3f012d31a82846a8e85662b724ba53aa76b05de.lean/declarations/uniq-inv-of-isfield--bc13140263e59af36e9db14d.md) | 86 | `result-track:bc13140263e59af36e9db14da618ce222a14a7669cfa1fcd46fb6946faa32783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
