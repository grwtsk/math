# Verification target: GRWTSK.Algebra.GroupTheory.ZeroDivisors.Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "716d638511852366bba0ccde95f9bb4640004c9d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `716d638511852366bba0ccde95f9bb4640004c9d`.

Source path: `GRWTSK/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Submonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisorsLeft](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/nonzerodivisorsleft--381b2b9601fba495e1062d62.md) | 24 | `declaration-track:381b2b9601fba495e1062d629e02ed3bead43a0bd9b704279c85f604fbd616db` |
| 2 | `lemma` | [mem_nonZeroDivisorsLeft_iff](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/mem-nonzerodivisorsleft-iff--c376e3fd3981df9107ab103a.md) | 29 | `result-track:c376e3fd3981df9107ab103a2980535b69116db6ccd363302e6c1bdd73fabb8d` |
| 3 | `def` | [nonZeroDivisorsRight](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/nonzerodivisorsright--1e8ba87d2ae7f3ea119af550.md) | 35 | `declaration-track:1e8ba87d2ae7f3ea119af550b8d655735d9a1d5accc847f392f80b52b7f702f5` |
| 4 | `lemma` | [mem_nonZeroDivisorsRight_iff](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/mem-nonzerodivisorsright-iff--59841cccd8224c3c29483ba5.md) | 40 | `result-track:59841cccd8224c3c29483ba5ce89b8991d1b977029a696057cf605cf3acd3a2c` |
| 5 | `lemma` | [nonZeroDivisorsLeft_eq_right](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/nonzerodivisorsleft-eq-right--3775f197d4c21bb7015b1c3f.md) | 44 | `result-track:3775f197d4c21bb7015b1c3ff075cbc28932c5900a2175f6152d235abb8d4301` |
| 6 | `lemma` | [coe_nonZeroDivisorsLeft_eq](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/coe-nonzerodivisorsleft-eq--a5a6e70a9660940d19f3011a.md) | 48 | `result-track:a5a6e70a9660940d19f3011aad7612b1681e8dfd6075b7032052fb3cc6cad33d` |
| 7 | `lemma` | [coe_nonZeroDivisorsRight_eq](../../../../../mathematics/Algebra/GroupTheory/ZeroDivisors/Variant91f57eb50ae485ba8d1aca39980f64401ac7b0a07683678ea3638a9272522ea9.lean/declarations/coe-nonzerodivisorsright-eq--050512f16ae9a72a8ac4fb48.md) | 57 | `result-track:050512f16ae9a72a8ac4fb48a8e6b098079c493d866cee50ddedf6d635b85ac6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
