# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Subfield.Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77f2c2bee24b4ba4810f62bd988f9601ab5d8b2c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77f2c2bee24b4ba4810f62bd988f9601ab5d8b2c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Subfield.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.W.Cardinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Operands](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/operands--be41ba2efef8f84f9940a7a0.md) | 36 | `declaration-track:be41ba2efef8f84f9940a7a0377eb2ea306f20ada200d3558c95f48151010f54` |
| 2 | `def` | [operate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/operate--b15ce7108f9bb9559e8530e1.md) | 47 | `declaration-track:b15ce7108f9bb9559e8530e13ba4689ed007b72a63abfd7039c704f88a099def` |
| 3 | `def` | [rangeOfWType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/rangeofwtype--ce02c076b20bec9365ec1287.md) | 56 | `declaration-track:ce02c076b20bec9365ec1287fb62df2c9cf6621b11ee521f64ed33ac5452ca92` |
| 4 | `lemma` | [rangeOfWType_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/rangeofwtype-eq-top--f545d1a036882c1ea49a4fc0.md) | 65 | `result-track:f545d1a036882c1ea49a4fc0962ee1f6efc7a3bd85a9e8c5498248b3e79dd1a0` |
| 5 | `lemma` | [surjective_ofWType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/surjective-ofwtype--01ab372c68f7b05c75570e37.md) | 71 | `result-track:01ab372c68f7b05c75570e374a539e3e4734b9a3782addd0c73e5684771f6ed2` |
| 6 | `lemma` | [cardinalMk_closure_le_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/cardinalmk-closure-le-max--d868f56479cb41058538e888.md) | 77 | `result-track:d868f56479cb41058538e8884b3aabbfb42da16f901e57f65f8e3b924f558bc6` |
| 7 | `lemma` | [cardinalMk_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Subfield/Variant2a53ea2849a58b3377525b678cba564a0a082a2e81c013b0ca3db36a70d306fe.lean/declarations/cardinalmk-closure--77eea2794d70fb630239db16.md) | 92 | `result-track:77eea2794d70fb630239db16ef051bdb6baf998a599e0c3ea1a3b815f6448d32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
