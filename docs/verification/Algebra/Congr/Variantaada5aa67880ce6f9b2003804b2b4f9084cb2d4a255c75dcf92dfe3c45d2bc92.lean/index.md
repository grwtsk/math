# Verification target: GRWTSK.Algebra.Congr.Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7674bb3813de43756ddac343c48cb21cedbe3020",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7674bb3813de43756ddac343c48cb21cedbe3020`.

Source path: `GRWTSK/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.SimpleRing.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [of_surjective](../../../../mathematics/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean/declarations/of-surjective--c4ec53072cf3ecccc089b4c2.md) | 28 | `result-track:c4ec53072cf3ecccc089b4c2e79b33fd2ddc5080d1e6c02876898cf0052d7cf6` |
| 2 | `lemma` | [of_ringEquiv](../../../../mathematics/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean/declarations/of-ringequiv--e250650247e3eb77167953be.md) | 33 | `result-track:e250650247e3eb77167953beb4001065ca78227123492cfc46189ac79499a936` |
| 3 | `theorem` | [isSimpleRing_iff_isTwoSided_imp](../../../../mathematics/Algebra/Congr/Variantaada5aa67880ce6f9b2003804b2b4f9084cb2d4a255c75dcf92dfe3c45d2bc92.lean/declarations/issimplering-iff-istwosided-imp--6b97eea364f81a1a0c1943d1.md) | 40 | `result-track:6b97eea364f81a1a0c1943d185d8b2a91964a54223f2b3cf3e07be955eaf3914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
