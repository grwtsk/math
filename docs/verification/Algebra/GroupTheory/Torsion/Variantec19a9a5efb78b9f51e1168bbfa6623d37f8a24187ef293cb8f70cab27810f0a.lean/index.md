# Verification target: GRWTSK.Algebra.GroupTheory.Torsion.Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81c1aa262f52b8bb62083c76dcf552b411d25d92",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81c1aa262f52b8bb62083c76dcf552b411d25d92`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/isaddtorsionfree--371afed5ca15308c6eba64f0.md) | 38 | `declaration-track:371afed5ca15308c6eba64f0a227652df34f3e72f06f2a31991f6059a017a103` |
| 2 | `class` | [IsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/ismultorsionfree--a8d84cc41ee3b641f066755d.md) | 47 | `declaration-track:a8d84cc41ee3b641f066755d0b85ca2e884b25b1f4586bcc73b01a84fe185803` |
| 3 | `instance` | [Subsingleton.to_isMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/subsingleton-to-ismultorsionfree--f6ee291a7c9f778b0456beb1.md) | 52 | `declaration-track:f6ee291a7c9f778b0456beb1ea7dc4aaf666fd25c2a07e825e736f729fff186e` |
| 4 | `lemma` | [pow_left_injective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/pow-left-injective--86d958364d779427b9022e22.md) | 58 | `result-track:86d958364d779427b9022e22a459d712ee536d5feb4b7fa4f6873e48be425d22` |
| 5 | `lemma` | [pow_left_inj](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/pow-left-inj--6e633f4e0e3f32eae734cc93.md) | 62 | `result-track:6e633f4e0e3f32eae734cc9388f2e31f633a51f6dee1126123eca35f653cade2` |
| 6 | `lemma` | [zpow_left_injective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/zpow-left-injective--fde0ddeb7cc781481168bdd9.md) | 70 | `result-track:fde0ddeb7cc781481168bdd96489c07eaafff54cef9c8ded76729fdfec3f305d` |
| 7 | `lemma` | [zpow_left_inj](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/zpow-left-inj--3a9d49aaa7862ed8938527d9.md) | 76 | `result-track:3a9d49aaa7862ed8938527d925c4ee1cd0faa39433cf3ad7c37c0984d04c39d3` |
| 8 | `lemma` | [zpow_eq_zpow_iff'](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variantec19a9a5efb78b9f51e1168bbfa6623d37f8a24187ef293cb8f70cab27810f0a.lean/declarations/zpow-eq-zpow-iff--4afd1e6bf826af04fa491717.md) | 82 | `result-track:4afd1e6bf826af04fa4917177737ef8c75af3d5f36dc8f7bccddf56781178e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
