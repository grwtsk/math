# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Influence.Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d783ead032dca7af15a8ee16cef775c208944162",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d783ead032dca7af15a8ee16cef775c208944162`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.TraceStability` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [allBitfieldsNonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/declarations/allbitfieldsnonempty--63577a0ce8c5d954f0b2d521.md) | 13 | `result-track:63577a0ce8c5d954f0b2d521c3d44d03fb22925c82ad081dd18d7961e4d92c7e` |
| 2 | `def` | [bitInfluence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/declarations/bitinfluence--c9eeb576d4db62ab43587987.md) | 18 | `declaration-track:c9eeb576d4db62ab43587987401833556f3dc2849405b5dc07ba5ac527e00e27` |
| 3 | `def` | [influenceEnergy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/declarations/influenceenergy--f4c1c3d174664b572cf96213.md) | 28 | `declaration-track:f4c1c3d174664b572cf96213de08a630d2b5558e4cb63002f3f3ffa9c00d71c7` |
| 4 | `theorem` | [observable_flip_change_le_influence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/declarations/observable-flip-change-le-influence--0346a15f70e87b14aef839bb.md) | 33 | `result-track:0346a15f70e87b14aef839bbd30ed3a3e740afc82e681216bf45ff3d98ba11a4` |
| 5 | `structure` | [InfluenceEnergyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean/declarations/influenceenergycertificate--159bac3b164670240df9cdb7.md) | 48 | `declaration-track:159bac3b164670240df9cdb745987cab30e695f5f25b520b559c6b75970a0cc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
