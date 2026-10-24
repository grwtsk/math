# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc39c3e701b98ff6a81bd158868e25a16c9f0e71",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc39c3e701b98ff6a81bd158868e25a16c9f0e71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalFinsetCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/evalfinsetcard--8e49880cc8fb6abfc5675265.md) | 35 | `declaration-track:8e49880cc8fb6abfc56752656f2954a09c934b1d80074445701b79fa20feb033` |
| 2 | `def` | [evalFintypeCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/evalfintypecard--4c80ae902d1393ebb6efdd88.md) | 45 | `declaration-track:4c80ae902d1393ebb6efdd88c4a2182172fb0af3bc8207bdafe1c7f1417596af` |
| 3 | `def` | [evalFinsetDens](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/evalfinsetdens--e5e2670f703cc15ff9790764.md) | 57 | `declaration-track:e5e2670f703cc15ff9790764af528f62726a74dd41e1265988c4092510859e91` |
| 4 | `def` | [evalFinsetSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/evalfinsetsum--a1fb8f90c86fae7334c41ced.md) | 76 | `declaration-track:a1fb8f90c86fae7334c41ced9ddecdbefd22ac8d8f62963c56924f349c988880` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--775530c5183babae075b267a.md) | 103 | `declaration-track:775530c5183babae075b267aea5f546a544034e62967464cf78482891f266842` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--8fafaa3f7b24cd33748836cc.md) | 104 | `declaration-track:8fafaa3f7b24cd33748836cc48594bc40661c546d21ec6d8093f0d9b4739e55b` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--d7100f5bde3002cad1e15596.md) | 108 | `declaration-track:d7100f5bde3002cad1e15596abecc13caaa9ff6af93e6aef23bfb6ae50f56b6b` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--e72063493e77fe0fbf882a75.md) | 109 | `declaration-track:e72063493e77fe0fbf882a75141c19fa8c650aa929c19692726a862578df87d7` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--cee4918e73c9f0dc8df8fbe3.md) | 110 | `declaration-track:cee4918e73c9f0dc8df8fbe3f34e65f0174cba401159424ddff6b69261649bab` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--4382dbb0abbef7d6e971db9b.md) | 111 | `declaration-track:4382dbb0abbef7d6e971db9bbc4540d54103464eb25ccd993d85ef113aeec599` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--44966a27c07f11a8f8b62f40.md) | 112 | `declaration-track:44966a27c07f11a8f8b62f40560bcb1fff281720cf3639a27eeee5c884bb65be` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--d1d655269fad71650861983f.md) | 113 | `declaration-track:d1d655269fad71650861983f530f867d0f8471445b709c7988709589233c7f33` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--59106fed7b84e601430188d6.md) | 114 | `declaration-track:59106fed7b84e601430188d6f3c6831a9db7d50390ddd15089c1c935d79deb89` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--a2f84443e848f57fd4633cde.md) | 115 | `declaration-track:a2f84443e848f57fd4633cdeb0401085264ba8286609c1a7f3fe0e3673acba78` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant497e5ca290083768534eb7f1f56e4535ddf86be1abc228c134eadd0868727488.lean/declarations/example--bbda0b3ee6b935e09d78f4d0.md) | 117 | `declaration-track:bbda0b3ee6b935e09d78f4d0d613cc2768635d58a08b0a771d457b070de18b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
