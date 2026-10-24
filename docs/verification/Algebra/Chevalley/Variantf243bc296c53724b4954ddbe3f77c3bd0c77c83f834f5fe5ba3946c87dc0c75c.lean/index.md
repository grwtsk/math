# Verification target: GRWTSK.Algebra.Chevalley.Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd73b232cc7aa1f3c177164f639ad0870d9fe44e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd73b232cc7aa1f3c177164f639ad0870d9fe44e`.

Source path: `GRWTSK/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.GoingDown` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.ChevalleyComplexity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isConstructible_comap_C](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/declarations/isconstructible-comap-c--f71436553f7ab51084acbb96.md) | 31 | `result-track:f71436553f7ab51084acbb96441d60e471a69784055874ba1b15072fffc19ded` |
| 2 | `lemma` | [isConstructible_comap_image](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/declarations/isconstructible-comap-image--5bfedbd6b2d79554314ebe2b.md) | 41 | `result-track:5bfedbd6b2d79554314ebe2b7fbe2119c826f45e3c4414b432a84cfc29ad1b75` |
| 3 | `lemma` | [isConstructible_range_comap](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/declarations/isconstructible-range-comap--3c177c1db9d51486f870d940.md) | 57 | `result-track:3c177c1db9d51486f870d9407d469c77e9f79b37444d224f82c7e012b92ac19c` |
| 4 | `lemma` | [isOpenMap_comap_of_hasGoingDown_of_finitePresentation](../../../../mathematics/Algebra/Chevalley/Variantf243bc296c53724b4954ddbe3f77c3bd0c77c83f834f5fe5ba3946c87dc0c75c.lean/declarations/isopenmap-comap-of-hasgoingdown-of-finitepresentation--ba4cdd18f88bcdd45eb03e06.md) | 62 | `result-track:ba4cdd18f88bcdd45eb03e06d5a69d0ac7ffa86bde9075a358a0b2d9076747eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
