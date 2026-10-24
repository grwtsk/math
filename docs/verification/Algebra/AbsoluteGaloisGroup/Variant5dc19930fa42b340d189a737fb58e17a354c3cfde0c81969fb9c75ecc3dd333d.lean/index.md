# Verification target: GRWTSK.Algebra.AbsoluteGaloisGroup.Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b79a6c8e0b7e0310f44fd71893aa7e4d4ec980a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/index.md) · [Full source](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b79a6c8e0b7e0310f44fd71893aa7e4d4ec980a`.

Source path: `GRWTSK/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.TopologicalAbelianization` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteGaloisGroup](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/declarations/absolutegaloisgroup--ccd64ba4765e25eb5e3720b9.md) | 47 | `declaration-track:ccd64ba4765e25eb5e3720b9734e0af38398aedab279c3ce9418162eb70603a3` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/declarations/instance--5f8ab7ca5c009c5cffe7ff39.md) | 51 | `declaration-track:5f8ab7ca5c009c5cffe7ff39aac5a652c55f7973b7988b9e77325b3fbca830e7` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/declarations/instance--e64b4abbc4af70c5730ea918.md) | 54 | `declaration-track:e64b4abbc4af70c5730ea918a69d5481d2a02ef1e208eb2bea9c1dfa6384b042` |
| 4 | `instance` | [absoluteGaloisGroup.commutator_closure_isNormal](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/declarations/absolutegaloisgroup-commutator-closure-isnormal--00da4a0c8d4ef2a8367c3438.md) | 58 | `declaration-track:00da4a0c8d4ef2a8367c34380944c66ffbf8bde43429cc3d4db3bb1ac51c1bf0` |
| 5 | `abbrev` | [absoluteGaloisGroupAbelianization](../../../../mathematics/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/declarations/absolutegaloisgroupabelianization--5f200a4a5091b5ce09fd1e0f.md) | 64 | `declaration-track:5f200a4a5091b5ce09fd1e0fb4b2b02a94686dcea4629e31dd40a8bad44e0c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
