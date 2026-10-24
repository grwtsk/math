# Verification target: GRWTSK.NumberTheory.FractionalIdeal.Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab938385f726050abf2abbf7c9e2206976912e1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab938385f726050abf2abbf7c9e2206976912e1`.

Source path: `GRWTSK/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/instance--ffaf04fd05a91a211517e7ef.md) | 40 | `declaration-track:ffaf04fd05a91a211517e7eff2b96bd4420b10b979b9f7321a5eab38ea7d022f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/instance--5a7b88c74ebf80afacab4ec5.md) | 44 | `declaration-track:5a7b88c74ebf80afacab4ec53fa1db68b55a1c89262e8a59085ea0058a8934f4` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/instance--9d50dcf592d73c0e4b112a20.md) | 49 | `declaration-track:9d50dcf592d73c0e4b112a2038eed24079e6b3f4f2b6f066fb64bb6c7cc63a54` |
| 4 | `def` | [fractionalIdealBasis](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/fractionalidealbasis--3cc6e80d4325ee79f96022a5.md) | 74 | `declaration-track:3cc6e80d4325ee79f96022a58aebbfe546f6e1710ddefa092e3d3c61c559fd5d` |
| 5 | `def` | [basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/basisoffractionalideal--277c5c4d1a7ea8a914e57f2d.md) | 78 | `declaration-track:277c5c4d1a7ea8a914e57f2d100d3ad8edcdc26361f7740f5d84efa0e5a4e357` |
| 6 | `theorem` | [basisOfFractionalIdeal_apply](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/basisoffractionalideal-apply--86e60ce0f1ffbd50c73e4b97.md) | 83 | `result-track:86e60ce0f1ffbd50c73e4b97a614971e8ee7026ffcff5708a9ea7fdd8baa76ef` |
| 7 | `theorem` | [mem_span_basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/mem-span-basisoffractionalideal--bb2c49bf9ad8728ae5a71ac9.md) | 88 | `result-track:bb2c49bf9ad8728ae5a71ac95531fa397f6761b4aeed4bc1d06b01139f4cbbce` |
| 8 | `theorem` | [fractionalIdeal_rank](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/fractionalideal-rank--5cec2c79135bee3fdcd72709.md) | 94 | `result-track:5cec2c79135bee3fdcd72709c2a02d7f7e6f76534c596fb93aa54eac864b84af` |
| 9 | `theorem` | [det_basisOfFractionalIdeal_eq_absNorm](../../../../mathematics/NumberTheory/FractionalIdeal/Variantb03b7a715769b5b02139b63414c958acfeb22d2214ad490d6c3368faa7576d5c.lean/declarations/det-basisoffractionalideal-eq-absnorm--6f04e234d735b1533b20c8c7.md) | 107 | `result-track:6f04e234d735b1533b20c8c7adaf7d834b3772f1b9949bde3d6da01787c9dffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
