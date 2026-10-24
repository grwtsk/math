# Verification target: GRWTSK.Algebra.UniversalAlgebra.TerminatesIffRat.Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb5a3e3e8744b0ccc132946edfddaa0f628a0761",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb5a3e3e8744b0ccc132946edfddaa0f628a0761`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Computation.CorrectnessTerminating` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_gcf_pair_rat_eq_of_nth_conts_aux](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-gcf-pair-rat-eq-of-nth-conts-aux--1f447442ad52b15fa8f090b2.md) | 71 | `result-track:1f447442ad52b15fa8f090b202d2034a73e4f90fa6f144f7f0ca83e23c45a90c` |
| 2 | `theorem` | [exists_gcf_pair_rat_eq_nth_conts](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-gcf-pair-rat-eq-nth-conts--4a4e4ab71737fa94b0d1a052.md) | 110 | `result-track:4a4e4ab71737fa94b0d1a0520eae0e98c59d5b2bd2048a89c67d21c154be7c7d` |
| 3 | `theorem` | [exists_rat_eq_nth_numerator](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-rat-eq-nth-numerator--e179b641f752649ed4f01b98.md) | 115 | `result-track:e179b641f752649ed4f01b98b94406101c3012fcbd7519ad46a63aee7a14f777` |
| 4 | `theorem` | [exists_rat_eq_nth_denominator](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-rat-eq-nth-denominator--ca5a3c96707ebc584af0f407.md) | 121 | `result-track:ca5a3c96707ebc584af0f407853f99f3f370c69a5ece1da53d4ced8b8107a26d` |
| 5 | `theorem` | [exists_rat_eq_nth_convergent](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-rat-eq-nth-convergent--1e6495d4b47302fec20f4a74.md) | 128 | `result-track:1e6495d4b47302fec20f4a74129a71cd3e14ceefc2aa46fea9793a0f4bccf637` |
| 6 | `theorem` | [exists_rat_eq_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-rat-eq-of-terminates--52c90ba420c296f90e8451db.md) | 138 | `result-track:52c90ba420c296f90e8451dbe60a6620b1e3daadcf87bbdb399e962caf021deb` |
| 7 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-of-rat-eq--13cce508b47de1f819a38af1.md) | 179 | `result-track:13cce508b47de1f819a38af1e64a0383dbdd7e80f3e514c7ef59af34f7248018` |
| 8 | `theorem` | [coe_stream_nth_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-stream-nth-rat-eq--3f30ac30a12a65f646894845.md) | 183 | `result-track:3f30ac30a12a65f646894845d047b0454aff08564b7c8b3f2f22c68cf244aebb` |
| 9 | `theorem` | [coe_stream'_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-stream-rat-eq--5029207d05f64d0b155e91f3.md) | 206 | `result-track:5029207d05f64d0b155e91f331afacf18ec2603a08fb7b186f197299eb4b5daa` |
| 10 | `theorem` | [coe_of_h_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-of-h-rat-eq--324b14975c6e54140cdd4aa9.md) | 217 | `result-track:324b14975c6e54140cdd4aa9ba9cf41b009f909a9311efcffe2360d6edc511b2` |
| 11 | `theorem` | [coe_of_s_get?_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-of-s-get-rat-eq--3e8ee32c8de959e384e579f7.md) | 223 | `result-track:3e8ee32c8de959e384e579f796109d02869f87649d33bbcccde248b96bee238e` |
| 12 | `theorem` | [coe_of_s_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-of-s-rat-eq--e82b16bcd4d7897b80ad2231.md) | 232 | `result-track:e82b16bcd4d7897b80ad2231f83e4ece127e62871e062079d80917a46eb2f1e7` |
| 13 | `theorem` | [coe_of_rat_eq](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/coe-of-rat-eq--3b43afc56ea9ec66d7a96f37.md) | 237 | `result-track:3b43afc56ea9ec66d7a96f37ff80ee77dd15a3b74d5c0daf643ec4466d004d4e` |
| 14 | `theorem` | [of_terminates_iff_of_rat_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/of-terminates-iff-of-rat-terminates--bd4729d52d6ce4fd132719bc.md) | 248 | `result-track:bd4729d52d6ce4fd132719bc58fae693f5df3a9390c7c74abe28d2fbb85d8050` |
| 15 | `theorem` | [of_inv_fr_num_lt_num_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/of-inv-fr-num-lt-num-of-pos--cfde50eef385b0570d3c9b48.md) | 281 | `result-track:cfde50eef385b0570d3c9b48131dcf4c5609c8198d1bc8c804992e80fc750ef9` |
| 16 | `theorem` | [stream_succ_nth_fr_num_lt_nth_fr_num_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/stream-succ-nth-fr-num-lt-nth-fr-num-rat--c711b774ba2199d138abf18c.md) | 287 | `result-track:c711b774ba2199d138abf18c1b9ba46f86ffda3280e00d3d75c5767df96f55d9` |
| 17 | `theorem` | [stream_nth_fr_num_le_fr_num_sub_n_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/stream-nth-fr-num-le-fr-num-sub-n-rat--66d0efe92714e9d01816ddb1.md) | 304 | `result-track:66d0efe92714e9d01816ddb1324b19cfae4791834f2ba1c59930e806f3e8577c` |
| 18 | `theorem` | [exists_nth_stream_eq_none_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/exists-nth-stream-eq-none-of-rat--c0c807626a45cdf8fa482412.md) | 324 | `result-track:c0c807626a45cdf8fa4824126772e27abc23049490ee45044bf058321d0eaa1b` |
| 19 | `theorem` | [terminates_of_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/terminates-of-rat--83b2255d4325db0fa78ed5ba.md) | 346 | `result-track:83b2255d4325db0fa78ed5ba6b1cd285fbbd92dd3a41f36ff74baa6968a3fc55` |
| 20 | `theorem` | [terminates_iff_rat](../../../../../mathematics/Algebra/UniversalAlgebra/TerminatesIffRat/Variant474db4a3d5ba4542b4bd9f8786171177283921ff6a7e185e8abe89d4706354c8.lean/declarations/terminates-iff-rat--43789481b8bc4f15f03ae28a.md) | 357 | `result-track:43789481b8bc4f15f03ae28a14d4133ab63cd7da93bacd88052dad672af078b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
