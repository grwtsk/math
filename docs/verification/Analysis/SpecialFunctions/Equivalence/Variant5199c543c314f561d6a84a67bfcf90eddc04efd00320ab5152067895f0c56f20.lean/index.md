# Verification target: GRWTSK.Analysis.SpecialFunctions.Equivalence.Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4c9b7d02f818287be8ed9146d9546c99e8b6f9b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4c9b7d02f818287be8ed9146d9546c99e8b6f9b`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEquiv](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/isequiv--a71c1d24f77dbe032126eafd.md) | 29 | `declaration-track:a71c1d24f77dbe032126eafd14091e686197dd85685ce3a7b989f00ae87eda4c` |
| 2 | `lemma` | [isEquiv_refl](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/isequiv-refl--c871aeb4fa3cdbc22a774587.md) | 33 | `result-track:c871aeb4fa3cdbc22a77458756614dc5826ec836e1d5522799be157d78646740` |
| 3 | `lemma` | [isEquiv_symm](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/isequiv-symm--83af6e244a0903a253336bae.md) | 37 | `result-track:83af6e244a0903a253336baef6a63bfece3415e1b0ee36e0a6e7328ec129f2fd` |
| 4 | `lemma` | [isEquiv_trans](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/isequiv-trans--4e41a7635c042e72f892b16b.md) | 43 | `result-track:4e41a7635c042e72f892b16b1822ca83ada68641e66b791f7a6397e91dc415df` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/instance--17421c359cbd456c8e25a3b5.md) | 50 | `declaration-track:17421c359cbd456c8e25a3b565267e2bbf8e80ee10617050123d02edfde69bb4` |
| 6 | `lemma` | [eq_trivial_of_isEquiv_trivial](../../../../../mathematics/Analysis/SpecialFunctions/Equivalence/Variant5199c543c314f561d6a84a67bfcf90eddc04efd00320ab5152067895f0c56f20.lean/declarations/eq-trivial-of-isequiv-trivial--2954dfe650f36aa04d41d543.md) | 60 | `result-track:2954dfe650f36aa04d41d5435a253c745543f09f75ada2347173598a3de772df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
