# Verification target: GRWTSK.Analysis.FiniteExtension.Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62c52f026c18320842b1828323dee3ef21c4b691",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62c52f026c18320842b1828323dee3ef21c4b691`.

Source path: `GRWTSK/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm--85fbbe6a5996134546658594.md) | 59 | `declaration-track:85fbbe6a59961345466585940386cfb7f3e00091759c9aad9fb0dce16f409409` |
| 2 | `theorem` | [norm_repr_le_norm](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-repr-le-norm--be15068b4aa34fe8796cde2c.md) | 63 | `result-track:be15068b4aa34fe8796cde2c6261a025a909fc6174a2696aa1b4c94b27c9cfa3` |
| 3 | `theorem` | [norm_zero](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-zero--4d5da6740a8378fb5421dd14.md) | 67 | `result-track:4d5da6740a8378fb5421dd14bde754e0deff6248ad8a4b7dca824d121cc41d02` |
| 4 | `theorem` | [norm_neg](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-neg--d0998307042daaf0572a9daf.md) | 71 | `result-track:d0998307042daaf0572a9daff1a3d23249dcadca7ae822a756900b1491bdefc3` |
| 5 | `theorem` | [norm_nonneg](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-nonneg--0aa261355372eb9a9ccf24ff.md) | 75 | `result-track:0aa261355372eb9a9ccf24ff835620dcfc2bdf5143641152b25c31c9f2c5a20c` |
| 6 | `theorem` | [norm_extends](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-extends--2fdcdd0823599e573ad8afb5.md) | 81 | `result-track:2fdcdd0823599e573ad8afb55738bd1f0d80ea0644b3ef51eb30f49b58ebf445` |
| 7 | `theorem` | [norm_isNonarchimedean](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-isnonarchimedean--3704ccbe5abeb542a5219166.md) | 90 | `result-track:3704ccbe5abeb542a5219166e3c02e5f8e86ec5625e4a4ac39fd61ca1d5cc0e1` |
| 8 | `theorem` | [norm_mul_le_const_mul_norm](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-mul-le-const-mul-norm--51c9ee462a11238e4dea1df9.md) | 102 | `result-track:51c9ee462a11238e4dea1df9fec3f6af196e5f907b8be63d11463713a10b95a9` |
| 9 | `theorem` | [norm_smul](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/norm-smul--c08379a958b94f12abd05806.md) | 151 | `result-track:c08379a958b94f12abd0580644a1836bdde9f82473f9d3797a4202dee7777dfb` |
| 10 | `theorem` | [exists_nonarchimedean_pow_mul_seminorm_of_finiteDimensional](../../../../mathematics/Analysis/FiniteExtension/Variant73182af98ea97a46748098c2d513dbcf5293da3ec621b46727cce0b67a1275d3.lean/declarations/exists-nonarchimedean-pow-mul-seminorm-of-finitedimensional--c26d3a6b1ee32ce089c8e8ac.md) | 169 | `result-track:c26d3a6b1ee32ce089c8e8ac41ba296f6c7da13e23d93f422450cf8e45185ce4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
