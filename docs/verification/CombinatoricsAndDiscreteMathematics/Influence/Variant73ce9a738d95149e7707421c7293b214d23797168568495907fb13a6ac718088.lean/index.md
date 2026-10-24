# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Influence.Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00d47d268423754f2e88fd4d5d81fd0433bc9050",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00d47d268423754f2e88fd4d5d81fd0433bc9050`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.TraceStability` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [allBitfieldsNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/declarations/allbitfieldsnonempty--fcac2a960b9ea5f76f8903cc.md) | 21 | `result-track:fcac2a960b9ea5f76f8903cc70eac4eebd9aa7cabe43e22007c7499b6da0e9db` |
| 2 | `def` | [bitInfluence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/declarations/bitinfluence--a4e333cbe332e11b48ccf8b7.md) | 26 | `declaration-track:a4e333cbe332e11b48ccf8b7f7648d936a06062050eda3d45a5b981948ba2d65` |
| 3 | `def` | [influenceEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/declarations/influenceenergy--8bbd7a8709de027c04997e09.md) | 36 | `declaration-track:8bbd7a8709de027c04997e09cf84af6cadf48b380dce019e13129aca2b300445` |
| 4 | `theorem` | [observable_flip_change_le_influence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/declarations/observable-flip-change-le-influence--5a58bbfbc933a1beca9f607b.md) | 41 | `result-track:5a58bbfbc933a1beca9f607ba5bb6c9b0b54e6f00e23fb0f87eae3ae29e2b41e` |
| 5 | `structure` | [InfluenceEnergyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant73ce9a738d95149e7707421c7293b214d23797168568495907fb13a6ac718088.lean/declarations/influenceenergycertificate--4a49e19833af9401ac18a613.md) | 56 | `declaration-track:4a49e19833af9401ac18a613b0146bdd833bc60c79030fbb9171319f14efc9c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
