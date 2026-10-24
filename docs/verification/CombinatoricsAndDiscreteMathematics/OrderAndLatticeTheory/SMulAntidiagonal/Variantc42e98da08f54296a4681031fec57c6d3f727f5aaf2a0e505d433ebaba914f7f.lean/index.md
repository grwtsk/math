# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SMulAntidiagonal.Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f6078f086a4afa71c5222538872e35a4ed4531d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f6078f086a4afa71c5222538872e35a4ed4531d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AddTorsor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/smulantidiagonal--e5ed1f9766e006553afe2540.md) | 41 | `declaration-track:e5ed1f9766e006553afe25401e5e2fe8a9a4ae44bf15147b76d185a2e8b002cd` |
| 2 | `theorem` | [mem_smulAntidiagonal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/mem-smulantidiagonal--418024c61545e74a0e2016c8.md) | 45 | `result-track:418024c61545e74a0e2016c8e78d03a4410467dbc0f9c653c70ebf4defad1519` |
| 3 | `theorem` | [smulAntidiagonal_mono_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/smulantidiagonal-mono-left--ade878697b396e35151ec6c6.md) | 49 | `result-track:ade878697b396e35151ec6c60e6c782fbf93ef3c8053dd4d99d7d235f6d4fd87` |
| 4 | `theorem` | [smulAntidiagonal_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/smulantidiagonal-mono-right--1312ee7081e398edff98c093.md) | 54 | `result-track:1312ee7081e398edff98c09362554fb963e6be4c02ff3a1c68f46c63014e37d0` |
| 5 | `theorem` | [fst_eq_fst_iff_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/fst-eq-fst-iff-snd-eq-snd--fb247d145b2276b7bdc6f9bb.md) | 70 | `result-track:fb247d145b2276b7bdc6f9bb739c8f81ec954e33b62843ec293de0c9a7bbdb22` |
| 6 | `theorem` | [eq_of_fst_eq_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/eq-of-fst-eq-fst--23ddc319e9df34d9c2fe1df8.md) | 84 | `result-track:23ddc319e9df34d9c2fe1df8c30c48caf6a5aee6d99bfdccf57fb490590308da` |
| 7 | `theorem` | [eq_of_snd_eq_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/eq-of-snd-eq-snd--46cfdd61217979f8b89a7ab8.md) | 88 | `result-track:46cfdd61217979f8b89a7ab867f833a07f557c75da1fa1a18f7bb47ae3d71f33` |
| 8 | `theorem` | [eq_of_fst_le_fst_of_snd_le_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/eq-of-fst-le-fst-of-snd-le-snd--fe5899a32ef4bfc22f0e8d27.md) | 97 | `result-track:fe5899a32ef4bfc22f0e8d2771dedbf407adb3efe8b5db93e009048e65097242` |
| 9 | `theorem` | [finite_of_isPWO](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SMulAntidiagonal/Variantc42e98da08f54296a4681031fec57c6d3f727f5aaf2a0e505d433ebaba914f7f.lean/declarations/finite-of-ispwo--f1caea72a7a6be5bcb2eff30.md) | 105 | `result-track:f1caea72a7a6be5bcb2eff30adda01be0b744dcb95f606fa992b63659a049416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
