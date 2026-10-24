# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shell.Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b1717b11ddaf030cafd80181cc99e1db12cdaf",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b1717b11ddaf030cafd80181cc99e1db12cdaf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Grid` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expandedShape](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/expandedshape--dc64a8cbb81fb1a1b7eb2458.md) | 21 | `declaration-track:dc64a8cbb81fb1a1b7eb24585f711e44e0bdb7602f0b9c08a004c013533f9caa` |
| 2 | `def` | [centerCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centercell--9801c8a1023b18d56a07569d.md) | 24 | `declaration-track:9801c8a1023b18d56a07569d6f58a19b567e499c30a6f99cf12b4ab585a56a18` |
| 3 | `def` | [IsCenterCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/iscentercell--74b9e014806dee6560c7a8ba.md) | 34 | `declaration-track:74b9e014806dee6560c7a8bac0d2070ced0d5fbb0c80f8ff024fb892cf6bc6a1` |
| 4 | `def` | [IsShellCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/isshellcell--037563565cb4a3cf63e64d8e.md) | 38 | `declaration-track:037563565cb4a3cf63e64d8ebc583a79d0333e87b7b2a8b1c9be512ec4a2bacb` |
| 5 | `instance` | [instFintypeCenterCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/instfintypecentercell--8ce54ab1dd25d28d4cbb1af4.md) | 41 | `declaration-track:8ce54ab1dd25d28d4cbb1af4e3a3dbfc5a5bf3982f171103b52ef4b5722d0555` |
| 6 | `instance` | [instFintypeShellCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/instfintypeshellcell--6425b742cbbc5cb9a7152720.md) | 46 | `declaration-track:6425b742cbbc5cb9a71527200c847c9eb51585d648680dfcaa1e0c1787704662` |
| 7 | `theorem` | [centerCell_isCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centercell-iscenter--a930c27db03443614b6f53e9.md) | 51 | `result-track:a930c27db03443614b6f53e91dcec95a92a8e99107e5a8d0e086e7b3ee2f3dc2` |
| 8 | `theorem` | [shell_or_center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/shell-or-center--0d2e1ccda726cf54f44b0840.md) | 63 | `result-track:0d2e1ccda726cf54f44b08403df23d0bc36050fefbe920a7ec83729827e8827c` |
| 9 | `theorem` | [not_shell_and_center](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/not-shell-and-center--dae484142bdad7b5e6ed46e9.md) | 69 | `result-track:dae484142bdad7b5e6ed46e951118556fd312e1599b5e91fdeeddd9dc7060232` |
| 10 | `def` | [centerRow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centerrow--4b18b7033059653c433e47c2.md) | 74 | `declaration-track:4b18b7033059653c433e47c2f06ec1c8fa23873b9adfe9b4e56bd1f3ee4d90b9` |
| 11 | `def` | [centerCol](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centercol--6421732a053d759b5beef708.md) | 82 | `declaration-track:6421732a053d759b5beef70803eafed35a95b5d9bd51932e5c390abf116d344b` |
| 12 | `def` | [centerOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centerof--43d6bb63a50c2ffbff6b40ec.md) | 90 | `declaration-track:43d6bb63a50c2ffbff6b40ecf68c01fd8ea1023c53196a11db47898255204d46` |
| 13 | `theorem` | [centerCell_centerOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centercell-centerof--bd0c95b4058fe6546f795a32.md) | 96 | `result-track:bd0c95b4058fe6546f795a32bbc03b51baa79b28be9cef0e064fff7e7afb557e` |
| 14 | `theorem` | [centerOf_centerCell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centerof-centercell--2d3bf85508bf9ec7c2cb1af6.md) | 106 | `result-track:2d3bf85508bf9ec7c2cb1af62510aef78eda9d213a8b814910b5815979c80981` |
| 15 | `def` | [centerSubtypeEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/centersubtypeequiv--cf40216cf2e671b18c666f85.md) | 110 | `declaration-track:cf40216cf2e671b18c666f859ae697c1ff68fc2aae063c884826115d8853b505` |
| 16 | `def` | [shellCardinality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/shellcardinality--d33e8a00b978d640fe14074d.md) | 118 | `declaration-track:d33e8a00b978d640fe14074d22a3e2e703d4d324e5865eb709497e36adef3b77` |
| 17 | `theorem` | [center_cardinality_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/center-cardinality-eq--fd274bad6911c895d58fd3e1.md) | 121 | `result-track:fd274bad6911c895d58fd3e1c8f7937ef460269b45199b20ff4b3181879c4172` |
| 18 | `theorem` | [shell_cardinality_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shell/Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c.lean/declarations/shell-cardinality-eq--d7b4f83708c188c044134f49.md) | 131 | `result-track:d7b4f83708c188c044134f4927a125d2fdadc743e70156968a2ac93017e99d47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
