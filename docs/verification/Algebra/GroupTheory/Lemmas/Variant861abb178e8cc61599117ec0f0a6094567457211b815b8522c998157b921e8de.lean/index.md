# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa8c0344ece7769e05a22f84a91c0d261c1f4037",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa8c0344ece7769e05a22f84a91c0d261c1f4037`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Even` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Irreducible.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [not_irreducible_pow](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/not-irreducible-pow--3a067c163ad0dbc5ac807744.md) | 31 | `result-track:3a067c163ad0dbc5ac807744a9e52f8db960c0ff9ac580edc9cdbc136c305655` |
| 2 | `lemma` | [irreducible_units_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-units-mul--92ac69cca13013b4cd026190.md) | 40 | `result-track:92ac69cca13013b4cd026190a7aaee986318fe5ae2541871749c0597dcfa2e54` |
| 3 | `lemma` | [irreducible_isUnit_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-isunit-mul--3cada2a5eb9e65d9b10dde42.md) | 51 | `result-track:3cada2a5eb9e65d9b10dde42a777e54de22f188b0468fa568029ade356bf72ab` |
| 4 | `lemma` | [irreducible_mul_units](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-mul-units--1ad855db90476261e37d9f93.md) | 56 | `result-track:1ad855db90476261e37d9f936ccb9d6bffd9ae4a76b43ba5d01588f08714b274` |
| 5 | `lemma` | [irreducible_mul_isUnit](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-mul-isunit--20a6618d764e46518512e5e9.md) | 67 | `result-track:20a6618d764e46518512e5e91b619677fef1a6d85a3645c025b0aa3f878f31fa` |
| 6 | `lemma` | [irreducible_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-mul-iff--3aa666174fc1ee8351c76a85.md) | 72 | `result-track:3aa666174fc1ee8351c76a852095751987eb96862f50cb53759adc182e4aea91` |
| 7 | `lemma` | [MulEquiv.irreducible_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/mulequiv-irreducible-iff--d44bd56cceeed13a12eec43f.md) | 86 | `result-track:d44bd56cceeed13a12eec43f96165fbe776cac0aedadd686b416fb7628d01625` |
| 8 | `lemma` | [Irreducible.of_map](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-of-map--b00d402984589de531f111f9.md) | 100 | `result-track:b00d402984589de531f111f9bc4fe2f3cc2002372e8b95158215274a0fc7a716` |
| 9 | `lemma` | [Irreducible.not_isSquare](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/irreducible-not-issquare--40e162bfff6aa98144392c74.md) | 107 | `result-track:40e162bfff6aa98144392c74e937ef5d2ea71d95eb2ab6b318abcc0cacd9d353` |
| 10 | `lemma` | [IsSquare.not_irreducible](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant861abb178e8cc61599117ec0f0a6094567457211b815b8522c998157b921e8de.lean/declarations/issquare-not-irreducible--3e33a56961319a2913015a81.md) | 117 | `result-track:3e33a56961319a2913015a816cd31016c1ccf492aece566065dacf24929cf6aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
