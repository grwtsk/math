# Verification target: GRWTSK.Algebra.Epi.Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ba86a9d7d7c35f511b04649d1a2342dd2b63246",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean/index.md) · [Full source](../../../../mathematics/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ba86a9d7d7c35f511b04649d1a2342dd2b63246`.

Source path: `GRWTSK/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CommRingCat.epi_iff_tmul_eq_tmul](../../../../mathematics/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean/declarations/commringcat-epi-iff-tmul-eq-tmul--897b11383c385f4df9bc7a09.md) | 21 | `result-track:897b11383c385f4df9bc7a0971536c9cdd0fc5614a98f17d1a77bc23f0d93c78` |
| 2 | `lemma` | [RingHom.surjective_of_epi_of_finite](../../../../mathematics/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean/declarations/ringhom-surjective-of-epi-of-finite--06ceb46004651d4fbb91494e.md) | 40 | `result-track:06ceb46004651d4fbb91494ee4bcd4a40b52ca276b5912edc7da781596cdd023` |
| 3 | `lemma` | [RingHom.surjective_iff_epi_and_finite](../../../../mathematics/Algebra/Epi/Variant3583c575b394acf89c52b67318cd8ebc2818a546c291a84636d826ac4e597f70.lean/declarations/ringhom-surjective-iff-epi-and-finite--5f25af7406fcc9c4147eae41.md) | 46 | `result-track:5f25af7406fcc9c4147eae419e7b5c3227824e678dd7890df73a3a3366197b56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
