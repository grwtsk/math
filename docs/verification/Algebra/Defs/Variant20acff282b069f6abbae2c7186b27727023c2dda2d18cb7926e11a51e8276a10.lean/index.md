# Verification target: GRWTSK.Algebra.Defs.Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f382330b2902c4a0d8dd77a9e68fb2bec3ebbcb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f382330b2902c4a0d8dd77a9e68fb2bec3ebbcb`.

Source path: `GRWTSK/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ResidueField](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/declarations/residuefield--bdd5e8e48f86e93fa8cc9690.md) | 32 | `declaration-track:bdd5e8e48f86e93fa8cc9690402b1bebbc05ff2e25d71785fc043ff864419c36` |
| 2 | `instance` | [ResidueFieldCommRing](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/declarations/residuefieldcommring--a7a468c61367f8f54ea830a6.md) | 38 | `declaration-track:a7a468c61367f8f54ea830a62e8a72331a68158e7cd71a526d6e86b5d3f2d6f9` |
| 3 | `instance` | [ResidueFieldInhabited](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/declarations/residuefieldinhabited--fe98af1f056049a286141bca.md) | 41 | `declaration-track:fe98af1f056049a286141bca76e4a8772fc0515cf8ae56e2f188f90aa9d710a0` |
| 4 | `instance` | [ResidueField.field](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/declarations/residuefield-field--a36763ee74d6721319182478.md) | 44 | `declaration-track:a36763ee74d6721319182478fc8ed2d12b4a57dc7b8612d8c4377df826de096b` |
| 5 | `def` | [residue](../../../../mathematics/Algebra/Defs/Variant20acff282b069f6abbae2c7186b27727023c2dda2d18cb7926e11a51e8276a10.lean/declarations/residue--198cd6cd582b6b87da4b948b.md) | 48 | `declaration-track:198cd6cd582b6b87da4b948ba0f2bb6c390acf2429a5f3ea5ba72943372c9854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
