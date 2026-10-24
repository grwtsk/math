# Verification target: GRWTSK.Algebra.GroupTheory.CovBySMul.Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1278b65a0bda7ed49e4725dc677874428735460e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1278b65a0bda7ed49e4725dc677874428735460e`.

Source path: `GRWTSK/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CovBySMul](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul--affcfbabdd5fcf2fdf007004.md) | 42 | `declaration-track:affcfbabdd5fcf2fdf0070043f19f709f9e02507b3bdd521db92e1c096260243` |
| 2 | `lemma` | [CovBySMul.rfl](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-rfl--e71aecde5547eee1142ec246.md) | 45 | `result-track:e71aecde5547eee1142ec246cd8704dc2e01ad6ae069b5ef006b462d8c8bb982` |
| 3 | `lemma` | [CovBySMul.of_subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-of-subset--06d74387d1afc0e24ddf57dd.md) | 48 | `result-track:06d74387d1afc0e24ddf57dd3c2d5cca47e0f5bb470ce62f41e5459318cfa799` |
| 4 | `lemma` | [CovBySMul.nonneg](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-nonneg--acd5ad7f44c3214158bc1a8e.md) | 50 | `result-track:acd5ad7f44c3214158bc1a8e526c704efe4f99bb6e431cebb28b22c876f66ddf` |
| 5 | `lemma` | [covBySMul_zero](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-zero--c32ba6fdfd9628f295581250.md) | 54 | `result-track:c32ba6fdfd9628f295581250d91644b907790366636fa59113feadee7d7b58b6` |
| 6 | `lemma` | [CovBySMul.mono](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-mono--8ff7454139720af66ff42b30.md) | 57 | `result-track:8ff7454139720af66ff42b306b5547a1093a3e7b0f39aacf404f8ee04a7149d9` |
| 7 | `lemma` | [CovBySMul.trans](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-trans--87a814cdb7ecc8b8ae0fde9a.md) | 60 | `result-track:87a814cdb7ecc8b8ae0fde9a821902026ff135bba5e809c917bfeb01760be860` |
| 8 | `lemma` | [CovBySMul.subset_left](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-subset-left--1ce6aa80df285fc015f2ad82.md) | 76 | `result-track:1ce6aa80df285fc015f2ad8249af3ef1fabed2435eb49bc5b6ace92e0d99f0fb` |
| 9 | `lemma` | [CovBySMul.subset_right](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-subset-right--214bd2441435bdb66f884ce6.md) | 80 | `result-track:214bd2441435bdb66f884ce624494adf3fe0ac8e800b845b98ed4a66a5aa39d4` |
| 10 | `lemma` | [CovBySMul.subset](../../../../../mathematics/Algebra/GroupTheory/CovBySMul/Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d.lean/declarations/covbysmul-subset--99196760165908c9f1db566f.md) | 84 | `result-track:99196760165908c9f1db566f15133660b052f64418f1d20d38195c0708efac34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
