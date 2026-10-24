# Verification target: GRWTSK.Algebra.GroupTheory.Canonical.Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0662d5597cbc3baafdf25b740add06890f578264",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0662d5597cbc3baafdf25b740add06890f578264`.

Source path: `GRWTSK/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SameOrbit](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/declarations/sameorbit--c000484b2c298a445ce2e190.md) | 14 | `declaration-track:c000484b2c298a445ce2e1909d8a463d9fa0ec46475ced58fd60b96280596cf1` |
| 2 | `structure` | [FiniteDataCanonicalizer](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/declarations/finitedatacanonicalizer--244dfb8e97da6e4c1974c9c0.md) | 22 | `declaration-track:244dfb8e97da6e4c1974c9c0a5c5a59ff65e4f021228060799abeb767df727c1` |
| 3 | `theorem` | [canon_smul](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/declarations/canon-smul--735a9dac78f244e94100467c.md) | 47 | `result-track:735a9dac78f244e94100467c5ddcbcc78b3335b06f823d224335386b98ea99b1` |
| 4 | `theorem` | [canon_idempotent](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/declarations/canon-idempotent--831935b7c2c0edd550ed6bc6.md) | 59 | `result-track:831935b7c2c0edd550ed6bc60e0508b341a3086c5b5918ada0735ea4a4e9b50d` |
| 5 | `theorem` | [canon_eq_iff_same_orbit](../../../../../mathematics/Algebra/GroupTheory/Canonical/Variant18b1c826e7bfda3f0dfa6947fced82d73f3b3a07e38b5ad73843d1e9a7f851a6.lean/declarations/canon-eq-iff-same-orbit--f6eeefe760fc4e980bd1019a.md) | 71 | `result-track:f6eeefe760fc4e980bd1019aeaee902847dfa18afa984aaf251487fb99d4375d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
