# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirichletInverse.Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2291b7a497131ecdfec011ab90b75e349431dd29",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2291b7a497131ecdfec011ab90b75e349431dd29`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.DirichletCauchyProductGeneric` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDirichletInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/declarations/hasdirichletinverse--b29221e3354420ef2cad0bfe.md) | 15 | `declaration-track:b29221e3354420ef2cad0bfe784bd1b4f9db2218a2e7551e13e931c07b539a2e` |
| 2 | `theorem` | [one_has_mobius_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/declarations/one-has-mobius-inverse--f4fa705179c4fad79a85a230.md) | 19 | `result-track:f4fa705179c4fad79a85a2307504555ebab35eb35e8392f8cc070302077c279b` |
| 3 | `theorem` | [dirichletSeries_mul_inverse_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/declarations/dirichletseries-mul-inverse-eq-one--9bc4ed36aaf3bd3cb370135c.md) | 23 | `result-track:9bc4ed36aaf3bd3cb370135c4e608b3d90c5da04df4a24bdd44c0416b4008558` |
| 4 | `theorem` | [dirichletSeries_ne_zero_of_has_absSummable_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant5d4d8231aecf9bae6b3e1668a1dd1774f41488055c3bfd906fcc3247ad8e91c6.lean/declarations/dirichletseries-ne-zero-of-has-abssummable-inverse--de7e96389f9eb7e2789bd071.md) | 34 | `result-track:de7e96389f9eb7e2789bd0713519e35fb06d7e3fc9f0b951936851512ca60ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
