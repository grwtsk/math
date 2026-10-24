# Verification target: GRWTSK.Algebra.Basic.Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73e3e665900d4969a6aceb9eb09535119a0701c3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73e3e665900d4969a6aceb9eb09535119a0701c3`.

Source path: `GRWTSK/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean.json)

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
| 1 | `class` | [HopfAlgebraStruct](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/hopfalgebrastruct--24dcd360a4c0d3a12211c36b.md) | 66 | `declaration-track:24dcd360a4c0d3a12211c36b33d547ba821015d8b23ef20d66e76bc65293a252` |
| 2 | `class` | [HopfAlgebra](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/hopfalgebra--153090cbdf1a367b69832a0d.md) | 73 | `declaration-track:153090cbdf1a367b69832a0ddcdc99325c06a4baa37f632f7e2efef807ddd202` |
| 3 | `theorem` | [mul_antipode_rTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/mul-antipode-rtensor-comul-apply--39077a1721e64d440ece72fb.md) | 90 | `result-track:39077a1721e64d440ece72fb66d7ea6b7b88049f191e8d5f800bc9c6ded79da9` |
| 4 | `theorem` | [mul_antipode_lTensor_comul_apply](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/mul-antipode-ltensor-comul-apply--4ddac9e75322dd14f795198c.md) | 96 | `result-track:4ddac9e75322dd14f795198c9aa13f1acae135d86bbcc0b24f44a27d1a87c6ea` |
| 5 | `theorem` | [antipode_one](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/antipode-one--051cd5b440aa72922300171b.md) | 102 | `result-track:051cd5b440aa72922300171b548fc0fc9612d4ccecb79d698b7a90c4fd7ff61d` |
| 6 | `lemma` | [sum_antipode_mul_eq_algebraMap_counit](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/sum-antipode-mul-eq-algebramap-counit--e7fd9d4c86d9e9b2c6df9981.md) | 108 | `result-track:e7fd9d4c86d9e9b2c6df9981086701bd4446e457e80969fd0a30929583f37014` |
| 7 | `lemma` | [sum_mul_antipode_eq_algebraMap_counit](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/sum-mul-antipode-eq-algebramap-counit--f89657cb6f4aa29af9e14b75.md) | 113 | `result-track:f89657cb6f4aa29af9e14b75db2c51f850b0369fa31a1fecb2957ff0ecba88f7` |
| 8 | `lemma` | [sum_antipode_mul_eq_smul](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/sum-antipode-mul-eq-smul--f901da2f78dacf80f78cfe87.md) | 118 | `result-track:f901da2f78dacf80f78cfe8715574b4860243f1ea899a24456a9597435a36221` |
| 9 | `lemma` | [sum_mul_antipode_eq_smul](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/sum-mul-antipode-eq-smul--33ef92a9db3724286ae71bcc.md) | 123 | `result-track:33ef92a9db3724286ae71bcc12ff144ad50a6c87e4fb2557c761e2193b139048` |
| 10 | `lemma` | [counit_antipode](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/counit-antipode--b47fa8f79f922c3b8d4682d5.md) | 128 | `result-track:b47fa8f79f922c3b8d4682d50b0be301505da8f25489eef5ca61b68c88b80ef4` |
| 11 | `lemma` | [counit_comp_antipode](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/counit-comp-antipode--ee9964c0d392d1c3de95c6e6.md) | 135 | `result-track:ee9964c0d392d1c3de95c6e60c311adbd755335d85bcbf47d4d954beb594c4e8` |
| 12 | `instance` | [toHopfAlgebra](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/tohopfalgebra--fc47733896eb4e4e45e25534.md) | 147 | `declaration-track:fc47733896eb4e4e45e2553444dde0367a3f1baf677ec8dccd54b5d2d02f6080` |
| 13 | `theorem` | [antipode_eq_id](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/antipode-eq-id--bc23650db2314c22af0be963.md) | 153 | `result-track:bc23650db2314c22af0be9636097d21f94d63f9af38c7ec0c41aa43aeb755e5c` |
| 14 | `abbrev` | [ofConvInverse](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/ofconvinverse--1a9a958a98f7b2b00724ce2e.md) | 164 | `declaration-track:1a9a958a98f7b2b00724ce2ee4b80413cfbfc9b9c6c3c5b9654aa54633c74178` |
| 15 | `abbrev` | [ofAlgHom](../../../../mathematics/Algebra/Basic/Variant17987fe61d884cdada9cdb0788a33ed54a325e04f74850dbf1885b5636a49172.lean/declarations/ofalghom--638894a5c299120f9551e26d.md) | 175 | `declaration-track:638894a5c299120f9551e26d57119ada1b4db7d37def83a70576d1376cba7ea2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
