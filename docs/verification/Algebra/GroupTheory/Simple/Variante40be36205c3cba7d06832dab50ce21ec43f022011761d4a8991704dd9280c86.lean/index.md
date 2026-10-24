# Verification target: GRWTSK.Algebra.GroupTheory.Simple.Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ce49829d233caec705005d32dd2db605c66aef3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ce49829d233caec705005d32dd2db605c66aef3`.

Source path: `GRWTSK/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Atoms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSimpleGroup](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/declarations/issimplegroup--4b129d54b1a1680a5751a02b.md) | 41 | `declaration-track:4b129d54b1a1680a5751a02b93543977fab778f672d94a94916e128f5b3d432d` |
| 2 | `class` | [IsSimpleAddGroup](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/declarations/issimpleaddgroup--32bb3bb9497169fae2d3aff4.md) | 46 | `declaration-track:32bb3bb9497169fae2d3aff4b5908b24be50874295a0852bc58e04af8b072810` |
| 3 | `theorem` | [Subgroup.Normal.eq_bot_or_eq_top](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/declarations/subgroup-normal-eq-bot-or-eq-top--37bddacec776e817a658eb71.md) | 55 | `result-track:37bddacec776e817a658eb714c8927728ba941b2fc3fe8a5af085eaae5366396` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/declarations/instance--e707808aa6b22bd705ec1493.md) | 62 | `declaration-track:e707808aa6b22bd705ec1493564719adf8deaa58a08db14767fc958794fd266a` |
| 5 | `theorem` | [isSimpleGroup_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Simple/Variante40be36205c3cba7d06832dab50ce21ec43f022011761d4a8991704dd9280c86.lean/declarations/issimplegroup-of-surjective--dce47c1cb8421402b6f634d5.md) | 68 | `result-track:dce47c1cb8421402b6f634d5bad3989b355ec4d91d42febd90efb1ab48ca4dbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
