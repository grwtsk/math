# Verification target: GRWTSK.Algebra.LocalRing.Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9561d981adef35629d468401007745d68fccc2f7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9561d981adef35629d468401007745d68fccc2f7`.

Source path: `GRWTSK/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Locus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/instance--301903282fa773dc18074c14.md) | 32 | `declaration-track:301903282fa773dc18074c1437afd9b0de15290856ca9bfd53a2be04230253bf` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/instance--97e05aaab7329cab6b941769.md) | 34 | `declaration-track:97e05aaab7329cab6b941769210075dcedb6c1e3d76954b33ee76ec3c646fd77` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/instance--5d2bd216a3053f34451fc788.md) | 42 | `declaration-track:5d2bd216a3053f34451fc788116f2f8faeb898378814e4ae87a748df9555aad6` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/instance--0e288e677fd886639a981b32.md) | 49 | `declaration-track:0e288e677fd886639a981b32463664a2a9190e73371e583dd57fb283386e0645` |
| 5 | `lemma` | [FormallyUnramified.isField_quotient_map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/formallyunramified-isfield-quotient-map-maximalideal--45507aac870d5d6dd49015b1.md) | 53 | `result-track:45507aac870d5d6dd49015b1bc0b35f3b28734fb9da046945b4c2146b3829ccc` |
| 6 | `lemma` | [FormallyUnramified.map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/formallyunramified-map-maximalideal--c4c1bcb621f26a93efcfcfd0.md) | 73 | `result-track:c4c1bcb621f26a93efcfcfd075699307c8a4b3e0a3445ebd79d0782cb4d7308a` |
| 7 | `lemma` | [FormallyUnramified.of_map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/formallyunramified-of-map-maximalideal--0b6dd125c0ac629c02d08d05.md) | 80 | `result-track:0b6dd125c0ac629c02d08d051b3291a390eda465e43c6f3fa3c43dbcd45bbe89` |
| 8 | `lemma` | [FormallyUnramified.iff_map_maximalIdeal_eq](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/formallyunramified-iff-map-maximalideal-eq--0ceff5a26ef90b243269e3fe.md) | 102 | `result-track:0ceff5a26ef90b243269e3fe842f3caa1578e1f3f8bab508f05fbda2968b89d9` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/instance--440b6eb87d3e6bd3ac67cbc5.md) | 115 | `declaration-track:440b6eb87d3e6bd3ac67cbc5130ee4e4f40bdf302d7260d28ab2239296cefc50` |
| 10 | `lemma` | [isUnramifiedAt_iff_map_eq](../../../../mathematics/Algebra/LocalRing/Variantffdf2075a9adce73bb02bcc34d3652e7db4f5891b181698fa6329bcf6bbd6070.lean/declarations/isunramifiedat-iff-map-eq--96f1467a1bf0f89daef23d1a.md) | 121 | `result-track:96f1467a1bf0f89daef23d1ac0f1c1efb190cb19fcf83165ba0daaa50633e2c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
