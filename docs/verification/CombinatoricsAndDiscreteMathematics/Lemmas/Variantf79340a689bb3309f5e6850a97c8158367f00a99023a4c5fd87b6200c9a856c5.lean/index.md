# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577316048870a08504a99c225c3b82bba6af98a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577316048870a08504a99c225c3b82bba6af98a4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Max` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Finite.fin_embedding](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/finite-fin-embedding--e63075fc104653d40fee1ce9.md) | 35 | `result-track:e63075fc104653d40fee1ce9b6026bc6c07aef4219ea99649a7d581302d3ebc5` |
| 2 | `theorem` | [Finite.fin_param](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/finite-fin-param--40b2d78bc00ae10aef16b5d2.md) | 40 | `result-track:40b2d78bc00ae10aef16b5d22a5deef501b50ea3f9cfb162a43515fa49c74e19` |
| 3 | `theorem` | [Finite.induction_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/finite-induction-to--1d131e171de6d968fa889773.md) | 46 | `result-track:1d131e171de6d968fa889773b3750505aa1e7c29a446574fd18f6856d9fad706` |
| 4 | `theorem` | [Finite.induction_to_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/finite-induction-to-univ--635b2d7f541bf707bb9992ce.md) | 58 | `result-track:635b2d7f541bf707bb9992ce1cefba4ec1b28cdd7211a78dc05d9a282744c3d2` |
| 5 | `theorem` | [exists_min_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/exists-min-image--7a1e198c2cd1c436a110bf8d.md) | 68 | `result-track:7a1e198c2cd1c436a110bf8d6a8cbd15d1ceb9d699889f44458abe38db371aa3` |
| 6 | `theorem` | [exists_max_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/exists-max-image--0aa32a03e0ff92a4e5943b7d.md) | 74 | `result-track:0aa32a03e0ff92a4e5943b7d5d38a8160d74d5b303860bf8342b08659de04aa4` |
| 7 | `theorem` | [exists_lower_bound_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/exists-lower-bound-image--fd99c42cb1d143948859bd3c.md) | 80 | `result-track:fd99c42cb1d143948859bd3c437d9827cfafc40c1a6d4b6d3677882841ab824a` |
| 8 | `theorem` | [exists_upper_bound_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantf79340a689bb3309f5e6850a97c8158367f00a99023a4c5fd87b6200c9a856c5.lean/declarations/exists-upper-bound-image--2ddb19194691120eab408095.md) | 87 | `result-track:2ddb19194691120eab4080954f8c952b223c2232447fd4d9c1f2441209224ee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
