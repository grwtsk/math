# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6130fd949f07ffee8fd5060555179d0edc0b9d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6130fd949f07ffee8fd5060555179d0edc0b9d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [seminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/declarations/seminormedaddcommgroup--d4993604ff4003f6f663a1d1.md) | 26 | `declaration-track:d4993604ff4003f6f663a1d1b32bbef79cf092c2e9bcaf80a7cf5020c7f5d07a` |
| 2 | `theorem` | [coe_norm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/declarations/coe-norm--679d122dcf481dddb9db0a85.md) | 33 | `result-track:679d122dcf481dddb9db0a856e0ec4431de431d0611951eac3732929e23db428` |
| 3 | `theorem` | [norm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/declarations/norm-coe--156bc29d5f156b3adfd643e9.md) | 42 | `result-track:156bc29d5f156b3adfd643e9eabf08dbc693865e291e35b7b866d4130dd01a83` |
| 4 | `instance` | [normedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant551e443a8992d047273aad9f7ef1ca85e6fce4990eb9ebc33fe30b3162fcb00f.lean/declarations/normedaddcommgroup--e3e8601f3cb94f96daa70c21.md) | 47 | `declaration-track:e3e8601f3cb94f96daa70c21a22be267ff4430ba0e244069efadccae90bb7049` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
