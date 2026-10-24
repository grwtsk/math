# Verification target: GRWTSK.Algebra.GroupTheory.Torsion.Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32ded6033888ce91540a3840d6abe3e944cdeb17",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32ded6033888ce91540a3840d6abe3e944cdeb17`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/isaddtorsionfree--67539dedc91581c791ccf809.md) | 30 | `declaration-track:67539dedc91581c791ccf80901dd33ba95156ba23305e1412789443b77f5ded5` |
| 2 | `class` | [IsMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/ismultorsionfree--8d4aa45d21049581b3cc5a0d.md) | 39 | `declaration-track:8d4aa45d21049581b3cc5a0d44cd32d5351b354effa405a3c038aca9c0fd145a` |
| 3 | `instance` | [Subsingleton.to_isMulTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/subsingleton-to-ismultorsionfree--e6c2bcf673b4c97200638091.md) | 44 | `declaration-track:e6c2bcf673b4c972006380916150ca639a367b7c86300d20f0173d7111fd981f` |
| 4 | `lemma` | [pow_left_injective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/pow-left-injective--3c0a90bc7ca81e73263d42c4.md) | 50 | `result-track:3c0a90bc7ca81e73263d42c45afff6e46935ea05208ae570dafa3870f7385e58` |
| 5 | `lemma` | [pow_left_inj](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/pow-left-inj--97fe0a258f7b6e569f60bc35.md) | 54 | `result-track:97fe0a258f7b6e569f60bc3536a76b4c3490dbc623f98e421d2983d4d85f194b` |
| 6 | `lemma` | [zpow_left_injective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/zpow-left-injective--3c9b06a278574be38da24598.md) | 62 | `result-track:3c9b06a278574be38da24598e007306b64148f26111a53053d182109b8e07fe4` |
| 7 | `lemma` | [zpow_left_inj](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/zpow-left-inj--75e936d9de37f927c061065e.md) | 68 | `result-track:75e936d9de37f927c061065eac8830e8668d94ec28816792f271c5fef97ddf43` |
| 8 | `lemma` | [zpow_eq_zpow_iff'](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant120010af506ae747d8440aef7dd67d3dc52aa9308a9e1cac38873c729d49c6ce.lean/declarations/zpow-eq-zpow-iff--147ae777ecc864b4cf38e16e.md) | 74 | `result-track:147ae777ecc864b4cf38e16e01ebe6f4896626593588b0ab1cddcff8a14110f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
