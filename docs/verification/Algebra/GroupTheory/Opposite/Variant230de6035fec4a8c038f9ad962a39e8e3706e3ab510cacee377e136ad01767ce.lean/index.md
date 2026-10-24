# Verification target: GRWTSK.Algebra.GroupTheory.Opposite.Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40025f470f156efce7a58cf9168d05644fda92c4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40025f470f156efce7a58cf9168d05644fda92c4`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/instmulaction--ca1d48341c8be71ee1b4ab55.md) | 49 | `declaration-track:ca1d48341c8be71ee1b4ab5528dc7ba98325887c80bd5ad538c8d40f537eeeaf` |
| 2 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/instisscalartower--b5824f68a4844ee3751d27a7.md) | 54 | `declaration-track:b5824f68a4844ee3751d27a7653c388a471a91513c8a794c2535ffb6551112e4` |
| 3 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/instsmulcommclass--3ae7e7229b6b286b193f2555.md) | 59 | `declaration-track:3ae7e7229b6b286b193f25550420869adf2986ab8f981ba284d551bbb2b55a42` |
| 4 | `instance` | [instIsCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/instiscentralscalar--bdf0e309ad28d6af5a5ac32c.md) | 64 | `declaration-track:bdf0e309ad28d6af5a5ac32c9728933952056aad44d0187f5fd4d29dfab65077` |
| 5 | `lemma` | [op_smul_eq_op_smul_op](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/op-smul-eq-op-smul-op--28da77a05bc20aba8031aefa.md) | 69 | `result-track:28da77a05bc20aba8031aefa2e81c7d2de7e2fb25b5ba9f91b02bb6262c6e803` |
| 6 | `lemma` | [unop_smul_eq_unop_smul_unop](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/unop-smul-eq-unop-smul-unop--40267500169328ee51e5d02a.md) | 73 | `result-track:40267500169328ee51e5d02ab7a7473d7525979b0ace3aa150bcf2e336fa0df3` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--6dc0c6306a5e3a089dd562ac.md) | 111 | `declaration-track:6dc0c6306a5e3a089dd562ac3a8742120a4a44154cb6be7c7f56b280144914d7` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--afd754a645efe647296f9dcf.md) | 112 | `declaration-track:afd754a645efe647296f9dcf8ad949f7187c5647545250fad52c6593b98ecbd2` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--10f76943b2947b081e510c7c.md) | 114 | `declaration-track:10f76943b2947b081e510c7c09c62423dc40206f1850b96fa666c7c1b6836041` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--4a27187df99444aa7decb25e.md) | 115 | `declaration-track:4a27187df99444aa7decb25e182c7dd9fe862e39477f9fb3d3be95d8a8f4c088` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--f1203b6733bb0cf7e5c470f5.md) | 118 | `declaration-track:f1203b6733bb0cf7e5c470f57c6a6381e1792684a3a13da506ad8dd4cea49f85` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--ecfc6de8b889686785e4f8fd.md) | 119 | `declaration-track:ecfc6de8b889686785e4f8fdbf4b8a9c940c4c6276c888465da1e30317e98f71` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--714ad8d244323a1d8c713ac7.md) | 121 | `declaration-track:714ad8d244323a1d8c713ac7bbfae8bed22f678ef19a10818e83cc664f656e08` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--80014c16e584a109756c0fb2.md) | 122 | `declaration-track:80014c16e584a109756c0fb212344895d16279fa00db2abf6a2680342817fc50` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--ecd58444c6c74faf44c670eb.md) | 125 | `declaration-track:ecd58444c6c74faf44c670ebaf1112eeab4c463f946eae36b49ee99dfc6ceae5` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--43c9ed705e39073ccfb8785d.md) | 126 | `declaration-track:43c9ed705e39073ccfb8785d50bc0cd16504b4aedd4bf8fbd676e37823108338` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--f7fbf93c1d5ed7956f0bc499.md) | 128 | `declaration-track:f7fbf93c1d5ed7956f0bc499a1abd3ef170cc32d0b06637a18f89d469e292622` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--3bba9e309609b33755d5041e.md) | 129 | `declaration-track:3bba9e309609b33755d5041e374f425a05f687c9aced12d9a79ee62998800f9c` |
| 19 | `lemma` | [op_smul_op_smul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/op-smul-op-smul--e7fbbb025334c7e1edc4fa34.md) | 140 | `result-track:e7fbbb025334c7e1edc4fa3405402f91fa5798c5727dab31b2d9087b8fa561ad` |
| 20 | `lemma` | [op_smul_mul](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/op-smul-mul--f84d23955aecf300fc9cc351.md) | 143 | `result-track:f84d23955aecf300fc9cc3518d86c74bd17a8ad8258e08782ee8ddf9573742c1` |
| 21 | `instance` | [Semigroup.opposite_smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/semigroup-opposite-smulcommclass--ea1aa612b371917002afa2f8.md) | 152 | `declaration-track:ea1aa612b371917002afa2f89c3693a3516f8c5c8c3ec2f6b9ef34bb18a60ffe` |
| 22 | `instance` | [Semigroup.opposite_smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/semigroup-opposite-smulcommclass--2d4b52322521eda84d25f630.md) | 156 | `declaration-track:2d4b52322521eda84d25f63001579cac38cc2a15d100ed9bd64762d4ad782839` |
| 23 | `instance` | [CommSemigroup.isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/commsemigroup-iscentralscalar--b94961e5b3615940f2bc4551.md) | 160 | `declaration-track:b94961e5b3615940f2bc455101e21e7a902bcac93054ef54919c5b090155edf1` |
| 24 | `instance` | [Monoid.toOppositeMulAction](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/monoid-tooppositemulaction--6c4a1be78512db0ba2e9a435.md) | 165 | `declaration-track:6c4a1be78512db0ba2e9a4350ee49a9920f60409d4ca05a52ac46690857613ad` |
| 25 | `instance` | [IsScalarTower.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/isscalartower-opposite-mid--203ba7a8afadfd71852f1cd8.md) | 171 | `declaration-track:203ba7a8afadfd71852f1cd8b3b314fce0e8615cb8add9698444da1af4c658f6` |
| 26 | `instance` | [SMulCommClass.opposite_mid](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/smulcommclass-opposite-mid--d298886590372812abde3426.md) | 176 | `declaration-track:d298886590372812abde3426a7ac3ead25bbb52790812a601d66150f88e3cf38` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Opposite/Variant230de6035fec4a8c038f9ad962a39e8e3706e3ab510cacee377e136ad01767ce.lean/declarations/example--a61ea6c92cda9994bdf82b10.md) | 184 | `declaration-track:a61ea6c92cda9994bdf82b10ba13e0ae995a0caa0a862868d3557d5b3785907b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
