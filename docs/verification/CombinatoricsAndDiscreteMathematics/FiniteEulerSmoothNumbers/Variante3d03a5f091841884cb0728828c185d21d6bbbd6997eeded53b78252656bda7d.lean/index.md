# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteEulerSmoothNumbers.Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentVectorNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/declarations/exponentvectornat--d5b10232918c1a83aec4d3f9.md) | 15 | `declaration-track:d5b10232918c1a83aec4d3f9b89ad6a28cfb92ba7f368136b7c7b98c5d9c2c0b` |
| 2 | `theorem` | [exponentVectorNat_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/declarations/exponentvectornat-pos--c056064da1c5b25d5f165dd3.md) | 21 | `result-track:c056064da1c5b25d5f165dd36508ce080446dface30d7caa1561cc0a6c2cb8c4` |
| 3 | `def` | [boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/declarations/boundedsmoothnumbers--00ddb60657e0e0847ffe80c8.md) | 30 | `declaration-track:00ddb60657e0e0847ffe80c8679301e8f950c293326ead718468d6399056fa13` |
| 4 | `theorem` | [exponentVectorNat_mem_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/declarations/exponentvectornat-mem-boundedsmoothnumbers--95ed357c937819f3727e2c5c.md) | 37 | `result-track:95ed357c937819f3727e2c5c8c9966ef758b0647faaf9e92aef631516edd1b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
