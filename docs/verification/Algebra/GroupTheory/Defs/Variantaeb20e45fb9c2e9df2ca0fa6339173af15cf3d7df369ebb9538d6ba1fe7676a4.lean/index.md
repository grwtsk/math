# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcfd4b87fcd00a1379e41ba38e6d9e070ed3a68e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcfd4b87fcd00a1379e41ba38e6d9e070ed3a68e`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOpposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/leftrel--84c542d8ede4868d9e34a748.md) | 59 | `declaration-track:84c542d8ede4868d9e34a74801bed7e7c170a29b3c2dde3143c57e218393f1bf` |
| 2 | `theorem` | [leftRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/leftrel-apply--6b76918ef188de5c6af8a565.md) | 64 | `result-track:6b76918ef188de5c6af8a565ca9e4a4250838e630ad8e2c9b6befc0661575ff5` |
| 3 | `theorem` | [leftRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/leftrel-eq--899d3a4c35f6bce773edc7ac.md) | 73 | `result-track:899d3a4c35f6bce773edc7ac802380db785b689c3eb920735c69d502ea43e4e5` |
| 4 | `instance` | [leftRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/leftreldecidable--48c1b5c22f3ece7a2480a6fa.md) | 79 | `declaration-track:48c1b5c22f3ece7a2480a6faa4706fd7e799e0de8cbca0bf1d3fb0321fa47a70` |
| 5 | `instance` | [instHasQuotientSubgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/insthasquotientsubgroup--88a784157b709b0d211c5466.md) | 87 | `declaration-track:88a784157b709b0d211c54662aac7f06b20dd25cfdaf7247450a7cf6759ef84f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/instance--d39bd10d0465bebadef75650.md) | 91 | `declaration-track:d39bd10d0465bebadef75650c08ba71df883161c038a96e7c0d0fd54f6298d5b` |
| 7 | `def` | [rightRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/rightrel--e814d077345cb2893980c249.md) | 98 | `declaration-track:e814d077345cb2893980c249d8e03015c08392b886c1cffaf61f398834800f31` |
| 8 | `theorem` | [rightRel_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/rightrel-apply--63f165e84b4862edf11928a7.md) | 103 | `result-track:63f165e84b4862edf11928a7f05d31ada0864f8f8e5e81d091b00c837dcad4df` |
| 9 | `theorem` | [rightRel_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/rightrel-eq--c84c7de3cc78e929d0e120fc.md) | 110 | `result-track:c84c7de3cc78e929d0e120fcdf257d2111b1459af578d9132262d365185f11d6` |
| 10 | `instance` | [rightRelDecidable](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/rightreldecidable--0d0261121f5068ad308ac669.md) | 116 | `declaration-track:0d0261121f5068ad308ac669fdf9a8c5fa10d2a225a51191d2fac730d79812aa` |
| 11 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/quotientrightrelequivquotientleftrel--8e838e986754d299c3acb2c5.md) | 122 | `declaration-track:8e838e986754d299c3acb2c50beec1f04f4f49e0d3bcf18998755b0065ff7907` |
| 12 | `abbrev` | [mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/mk--e2b9c445673e357352e9474f.md) | 154 | `declaration-track:e2b9c445673e357352e9474f1836476992f6765349efd3e01f075da617cbe24d` |
| 13 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/mk-surjective--e85979612e81bb61e6217767.md) | 158 | `result-track:e85979612e81bb61e62177671194ce51f4aee27a1b4c9bb6a2f145e899623c1a` |
| 14 | `lemma` | [range_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/range-mk--baad3b3d39d38c6293407047.md) | 162 | `result-track:baad3b3d39d38c6293407047e34c64a8d0e3feedc96d0ee6aac9d2e15672f5fa` |
| 15 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/induction-on--19cf80e189078f3dcf3d6735.md) | 165 | `result-track:19cf80e189078f3dcf3d67354541172d99f9dc92bdaed22e7d6d8a2e182cfb92` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/instance--71850ef8d841b447eedde446.md) | 169 | `declaration-track:71850ef8d841b447eedde4469dfb16398d8f8baec0b1245118d5e4d2f14bbec9` |
| 17 | `theorem` | [quotient_liftOn_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/quotient-lifton-mk--9cea40ffd1df949e24115c5f.md) | 175 | `result-track:9cea40ffd1df949e24115c5f6b516f349e4c9917edda1c109ff9c2f3b1e29e70` |
| 18 | `theorem` | [forall_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/forall-mk--531c78408d610ef004633fcf.md) | 179 | `result-track:531c78408d610ef004633fcfc185e762cdde29c6e507c047628f9da8aa85012d` |
| 19 | `theorem` | [exists_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/exists-mk--66928edc2672400179d42124.md) | 183 | `result-track:66928edc2672400179d421249acb5343dbfbb122f66996b5b644541d82bbf9c4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/instance--2c7b7d7695a78d07b9c3f20f.md) | 187 | `declaration-track:2c7b7d7695a78d07b9c3f20f3b8cddbde2df1fc17489a49163a395c6cbb57b14` |
| 21 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/eq--31cb01c084b8140ec3651dac.md) | 191 | `result-track:31cb01c084b8140ec3651dac5c643a0a3e202be3c36c5b5ae4e67dba833291b9` |
| 22 | `theorem` | [out_eq'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/out-eq--9a101f23e56775733384dee3.md) | 197 | `result-track:9a101f23e56775733384dee320e481d694fefd9a3be6beb2b3ee9e939cff3ab3` |
| 23 | `theorem` | [mk_out_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/mk-out-eq-mul--d566cecf42621e43dce1c4e3.md) | 206 | `result-track:d566cecf42621e43dce1c4e36f47e46ff0f0dafa76047b4349611ac535b0f3f0` |
| 24 | `theorem` | [mk_mul_of_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/mk-mul-of-mem--d68b891f0afba0b8c1beddc8.md) | 212 | `result-track:d68b891f0afba0b8c1beddc83d0d24608c7424dba21378f4d6ff6c8ca5e049c5` |
| 25 | `theorem` | [preimage_image_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/preimage-image-mk--606a7aca0111c080003bd4b4.md) | 216 | `result-track:606a7aca0111c080003bd4b4c31645c92b19c2f2bac40e970b1fd7da22f01763` |
| 26 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/preimage-image-mk-eq-iunion-image--9282c773a593fb00b4634fdb.md) | 226 | `result-track:9282c773a593fb00b4634fdb2576c75a99287dede01554f2fb55de96e7d88c76` |
| 27 | `theorem` | [preimage_image_mk_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/preimage-image-mk-eq-mul--2d2c7e6f8e8405ccfef01551.md) | 232 | `result-track:2d2c7e6f8e8405ccfef01551e659459aa0c456196e6ee83d587ce567292aded5` |
| 28 | `def` | [quotientEquivOfEq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/quotientequivofeq--8599c5e5355a22cff7252bf8.md) | 249 | `declaration-track:8599c5e5355a22cff7252bf8b879b7801f10a52b76e899dc8c2bc1c8a013b8c9` |
| 29 | `theorem` | [quotientEquivOfEq_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantaeb20e45fb9c2e9df2ca0fa6339173af15cf3d7df369ebb9538d6ba1fe7676a4.lean/declarations/quotientequivofeq-mk--c4573ff08c051cb0156279b1.md) | 255 | `result-track:c4573ff08c051cb0156279b164c8fb12317b79549e75d43e421ac12b71a63494` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
