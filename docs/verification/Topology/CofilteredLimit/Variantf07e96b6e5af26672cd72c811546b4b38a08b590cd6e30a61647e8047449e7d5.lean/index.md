# Verification target: GRWTSK.Topology.CofilteredLimit.Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1252e1c215be14827bf2a14b4fd581ce82be17d6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/index.md) · [Full source](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1252e1c215be14827bf2a14b4fd581ce82be17d6`.

Source path: `GRWTSK/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Cofiltered` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Konig` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_clopen_of_cofiltered](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/declarations/exists-clopen-of-cofiltered--02ad1ca131a1c966e24f4838.md) | 54 | `result-track:02ad1ca131a1c966e24f4838c0806f1d9311d34f60482c09f630fb2d461e57fc` |
| 2 | `theorem` | [exists_locallyConstant_fin_two](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/declarations/exists-locallyconstant-fin-two--3bc1709923f5c2accd8dbf99.md) | 126 | `result-track:3bc1709923f5c2accd8dbf99ff8725cca2fd671a32934f91accf9023bd1de7bc` |
| 3 | `theorem` | [exists_locallyConstant_finite_aux](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/declarations/exists-locallyconstant-finite-aux--1171c9910db08e1865a9ae0e.md) | 139 | `result-track:1171c9910db08e1865a9ae0e2e3bbe97a057705b1e6aa3085b07ce3060f6ba0e` |
| 4 | `theorem` | [exists_locallyConstant_finite_nonempty](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/declarations/exists-locallyconstant-finite-nonempty--87b2a902cba629b8165fe756.md) | 184 | `result-track:87b2a902cba629b8165fe7568d5729bb41092622d85dcf8f737d118c45211f95` |
| 5 | `theorem` | [exists_locallyConstant](../../../../mathematics/Topology/CofilteredLimit/Variantf07e96b6e5af26672cd72c811546b4b38a08b590cd6e30a61647e8047449e7d5.lean/declarations/exists-locallyconstant--0ae2d808b6eb3961b6235ffa.md) | 216 | `result-track:0ae2d808b6eb3961b6235ffaccf1f5a081d17cb06156deb3791bf8928c36d2cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
