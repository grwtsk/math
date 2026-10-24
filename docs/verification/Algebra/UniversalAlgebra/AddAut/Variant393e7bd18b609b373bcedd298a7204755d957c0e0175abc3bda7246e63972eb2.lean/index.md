# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddAut.Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dce19699ae44d709f9903d6f509737ae15bf5cf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dce19699ae44d709f9903d6f509737ae15bf5cf`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Opposite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/declarations/mulleft--8ff1cc795dcd480b94c3034f.md) | 36 | `declaration-track:8ff1cc795dcd480b94c3034ff33518ab36662714119468d7ac7840a03aac41de` |
| 2 | `def` | [mulRight](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/declarations/mulright--55992955db09183c63cd07c6.md) | 40 | `declaration-track:55992955db09183c63cd07c64fe1541cf6dc47a98791e9f4cc8b7a1c32a77c94` |
| 3 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/declarations/mulright-apply--79a3a8e540b2f9c80f58a4c4.md) | 44 | `result-track:79a3a8e540b2f9c80f58a4c4082e4da68bc472167167e20e73d7a465bd37fe26` |
| 4 | `theorem` | [mulRight_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AddAut/Variant393e7bd18b609b373bcedd298a7204755d957c0e0175abc3bda7246e63972eb2.lean/declarations/mulright-symm-apply--8e5f58a6c696a85338e9421e.md) | 48 | `result-track:8e5f58a6c696a85338e9421e28bbcde84e87c19c8248109c5fc3559b46bc61cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
