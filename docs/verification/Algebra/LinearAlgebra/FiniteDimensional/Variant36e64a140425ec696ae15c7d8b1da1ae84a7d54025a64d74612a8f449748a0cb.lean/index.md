# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e5da55db245a1a69f6398a39400ea9978a833b6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e5da55db245a1a69f6398a39400ea9978a833b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [free_and_finite_fin](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/declarations/free-and-finite-fin--061e225cec3ddc511f3b6768.md) | 37 | `result-track:061e225cec3ddc511f3b676895eaa4cb3e8ba00fa6fa41d6bf372feae434229d` |
| 2 | `theorem` | [free_and_finite](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/declarations/free-and-finite--338e3f1415cbf544c2b92907.md) | 61 | `result-track:338e3f1415cbf544c2b92907c2d8f5bc5126a03e5ae8169c05429d524b8505e0` |
| 3 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.FreeAndFiniteFin.Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.Module.Finite.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/declarations/root-grwtsk-algebra-linearalgebra-freeandfinitefin-variant14e7c419cf2301--e84d9b68ff7b26211fd50ed9.md) | 70 | `declaration-track:e84d9b68ff7b26211fd50ed9fc2e52f3a7bc5f71b3ae97415fcd732918157b80` |
| 4 | `instance` | [_root_.GRWTSK.Algebra.LinearAlgebra.FreeAndFiniteFin.Variant14e7c419cf2301988ab6bd7706e5510757246cdd25208d67a123c01da5e2c32c.Module.Free.multilinearMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteDimensional/Variant36e64a140425ec696ae15c7d8b1da1ae84a7d54025a64d74612a8f449748a0cb.lean/declarations/root-grwtsk-algebra-linearalgebra-freeandfinitefin-variant14e7c419cf2301--d81f4565e58f40900b0b934c.md) | 73 | `declaration-track:d81f4565e58f40900b0b934cb942bfa34cebb4d3f03068c60e8f140d2857c589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
