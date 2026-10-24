# Verification target: GRWTSK.Algebra.GroupTheory.Units.Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07e03204b830799451bcee8956a6883f31bf2a3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07e03204b830799451bcee8956a6883f31bf2a3`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Delaborators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MulEquiv.piUnits](../../../../../mathematics/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean/declarations/mulequiv-piunits--486a84eac98893a826744cbf.md) | 29 | `declaration-track:486a84eac98893a826744cbfd3135031ef76b5152067cdd9124960e2b6b4f4ae` |
| 2 | `lemma` | [Pi.isUnit_iff](../../../../../mathematics/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean/declarations/pi-isunit-iff--8f95bfe7b9320aa36f4fe263.md) | 37 | `result-track:8f95bfe7b9320aa36f4fe26356e13584dfd2fd1522f605853c10566312bd1674` |
| 3 | `lemma` | [IsUnit.val_inv_apply](../../../../../mathematics/Algebra/GroupTheory/Units/Variant43aedefaf44347507a0af0f7e53cc68e7fec4db906d510a075274043423a3c42.lean/declarations/isunit-val-inv-apply--2732617e3cc17a4a08b15be8.md) | 46 | `result-track:2732617e3cc17a4a08b15be8efebc3be962992fd95cf118ab02655af93ffbd58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
