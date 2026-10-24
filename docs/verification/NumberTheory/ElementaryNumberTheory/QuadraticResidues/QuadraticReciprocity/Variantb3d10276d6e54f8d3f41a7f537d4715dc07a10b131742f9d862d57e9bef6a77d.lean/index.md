# Verification target: GRWTSK.NumberTheory.QuadraticReciprocity.Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "237e9c76c329e92b85d69612b1e2f081de2a03ff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `237e9c76c329e92b85d69612b1e2f081de2a03ff`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.GaussSum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [at_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/at-two--ffb916e42705babc4c10ff42.md) | 64 | `result-track:ffb916e42705babc4c10ff42933b0d74fbbcc0bcb0f4603e7ee4d5288a6084d4` |
| 2 | `theorem` | [at_neg_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/at-neg-two--34009512c3a89e6cabded942.md) | 69 | `result-track:34009512c3a89e6cabded94254b3aac18e456f3f1191f142aa81b163b570072c` |
| 3 | `theorem` | [exists_sq_eq_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/exists-sq-eq-two-iff--0a6e4814b517c4f85d211100.md) | 78 | `result-track:0a6e4814b517c4f85d211100fac9e65033439de058d96298c0fb523ca8c0195b` |
| 4 | `theorem` | [exists_sq_eq_neg_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/exists-sq-eq-neg-two-iff--40add1b079454bc4e3835984.md) | 84 | `result-track:40add1b079454bc4e3835984a486fb5289319a16d4489bd71671f0e58749a82f` |
| 5 | `theorem` | [quadratic_reciprocity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/quadratic-reciprocity--b904ab56bc37cba0dfaa1afd.md) | 111 | `result-track:b904ab56bc37cba0dfaa1afdf5ea02a2e2f0faa78c754bd6b30bb3b6c9460d2e` |
| 6 | `theorem` | [quadratic_reciprocity'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/quadratic-reciprocity--8071a1bdd0f9e3ec7b734960.md) | 127 | `result-track:8071a1bdd0f9e3ec7b7349603ad19470fe31471119f00c5c2c636d9c9a10e83f` |
| 7 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/quadratic-reciprocity-one-mod-four--7a050dd4d107a485c0a8b59c.md) | 138 | `result-track:7a050dd4d107a485c0a8b59c2ba71079e99fa9e5800f9093ed50195f0d010063` |
| 8 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/quadratic-reciprocity-three-mod-four--317e84e34a39a292abf92e48.md) | 145 | `result-track:317e84e34a39a292abf92e4889627f531d5a5d019cdbf7868a4ea9f4d92beee0` |
| 9 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-one--d1f005f8e444f22a0ea40b26.md) | 159 | `result-track:d1f005f8e444f22a0ea40b261ef71493d2ffca498929779384cf6aea8f0dc0fc` |
| 10 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-three--a08faa3e80d055ce43ac943d.md) | 168 | `result-track:a08faa3e80d055ce43ac943dc2c0eadd63f8222266229f4cb8d86fef433cf0b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
