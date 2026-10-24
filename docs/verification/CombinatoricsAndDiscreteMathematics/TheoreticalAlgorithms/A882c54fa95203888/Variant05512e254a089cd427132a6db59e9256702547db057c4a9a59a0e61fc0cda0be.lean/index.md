# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.A882c54fa95203888.Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f35a548de34dac2db3add9e57401abb5d0010ca",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f35a548de34dac2db3add9e57401abb5d0010ca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Oracle.Naming.Kind` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.KindAtoms.A_51815ef544a6d543` — import line 8; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.KindAtoms.A_f57b51a9cf24c81f` — import line 9; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.NameAtoms.A_1ab82ddc1e48f4d5` — import line 10; external provider; requires a separately pinned dependency.
- `MathDiscovery.Oracle.Naming.NameAtoms.A_46cc77e52677656e` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtomName](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/declarations/atomname--f7261771c4ba9daec32a1faf.md) | 20 | `declaration-track:f7261771c4ba9daec32a1fafced36526a4dec22599728c3f2b1497dd70218836` |
| 2 | `def` | [AtomName.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/declarations/atomname-valid--04d839e6d2631896774f5112.md) | 31 | `declaration-track:04d839e6d2631896774f51121ffa4c7241eead5acf573bd7595a477fa295d5ae` |
| 3 | `def` | [AtomName.canonicalCoordinates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/declarations/atomname-canonicalcoordinates--dec3517e666109ac12931001.md) | 36 | `declaration-track:dec3517e666109ac12931001ebfa89da7358d5140b1dedef84f7f74fdb99d3c5` |
| 4 | `theorem` | [canonical_coordinates_preserve_name_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A882c54fa95203888/Variant05512e254a089cd427132a6db59e9256702547db057c4a9a59a0e61fc0cda0be.lean/declarations/canonical-coordinates-preserve-name-identity--23f187fcdf573172dd4c6b01.md) | 40 | `result-track:23f187fcdf573172dd4c6b0182ed6a53950a6aee94efe1e59fb78a0d9f314800` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
