# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nullstellensatz.Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc190ad12a1abed88a02870c88a7e7a3a152d968",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc190ad12a1abed88a02870c88a7e7a3a152d968`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Definitions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.MonomialOrder.DegLex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Groebner` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Homogeneous` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.MonomialOrder.DegLex` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_eval_zero_at_prod_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/eq-zero-of-eval-zero-at-prod-finset--eec7ffb3105f3657504c4fa4.md) | 71 | `result-track:eec7ffb3105f3657504c4fa47d9f37d28300ef77d861d0a838b45fed5b41a486` |
| 2 | `def` | [Alon.P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/alon-p--8006713932b09a699235b6d2.md) | 156 | `declaration-track:8006713932b09a699235b6d222757d51e32fa21dea28af83ac37c9e0538f6c59` |
| 3 | `theorem` | [Alon.degree_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/alon-degree-p--fa9758421458080abad9c1a7.md) | 161 | `result-track:fa9758421458080abad9c1a77210120d446f983af843cc58e9a33be06098e34b` |
| 4 | `theorem` | [Alon.monic_P](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/alon-monic-p--97557a25af51f44a4e5061dd.md) | 171 | `result-track:97557a25af51f44a4e5061ddd949046afb33d6c5211dabf01b548068e4fb3b47` |
| 5 | `lemma` | [Alon.of_mem_P_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/alon-of-mem-p-support--a942ec09511f76d98855038c.md) | 177 | `result-track:a942ec09511f76d98855038c1ab5f5042e95886b9dee0613deb31ce13333285f` |
| 6 | `theorem` | [combinatorial_nullstellensatz_exists_linearCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/combinatorial-nullstellensatz-exists-linearcombination--18e966c2c27f4c3e9570b230.md) | 213 | `result-track:18e966c2c27f4c3e9570b23086710c3fd75d42fe2e15f2ad2ee34d901cc68592` |
| 7 | `theorem` | [combinatorial_nullstellensatz_exists_eval_nonzero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nullstellensatz/Variant2a35b0bf76dc7558906fdbf00ce1f8a2cd554885f8a8e0747c99105f0b10627a.lean/declarations/combinatorial-nullstellensatz-exists-eval-nonzero--9f98259909d1bacf5835cda5.md) | 257 | `result-track:9f98259909d1bacf5835cda5cc2f669d0999e013d47d083cd2a688b1a2e15174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
