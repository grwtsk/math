# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0605b7aa1ab46cd8dc4e8b6dbb5426258b13cb7c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0605b7aa1ab46cd8dc4e8b6dbb5426258b13cb7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Vector.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean/declarations/vector-fintype--e84825ac94ca410c11099538.md) | 25 | `declaration-track:e84825ac94ca410c1109953861945e601291aeb92a779fef7c7434549e8fb270` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean/declarations/instance--cd322dba0537a5d9145a67c3.md) | 28 | `declaration-track:cd322dba0537a5d9145a67c3e01124fa7b1d800aa8e9d5ca22a2f06e14106db7` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Vector/Variant8aae4b4cb6eebcd89efe30b16f037cc46b38641b9436f3fc73a6b5cb0f756af3.lean/declarations/instance--1320422069752a1a58d5137a.md) | 31 | `declaration-track:1320422069752a1a58d5137a0f1350d5e5f1b7d3c61e1ac54b008c5c2fa0647c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
