# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "286b13c0d1f879d66a26bc46b04f5332950856c4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `286b13c0d1f879d66a26bc46b04f5332950856c4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean.json)

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
| 1 | `theorem` | [entry_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/entry-norm-bound-of-unitary--735eb5df3ba3c3de6c1f5784.md) | 49 | `result-track:735eb5df3ba3c3de6c1f57840a1e74a044d59ae3856c442b85c169cd4a5296f3` |
| 2 | `theorem` | [entrywise_sup_norm_bound_of_unitary](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/entrywise-sup-norm-bound-of-unitary--f23adba997fc449cee75893b.md) | 82 | `result-track:f23adba997fc449cee75893b5b693f95353cfc5eb4235387305e2dd50671d5f3` |
| 3 | `def` | [toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/toeuclideanclm--cd0af3376e7125456177b36c.md) | 103 | `declaration-track:cd0af3376e7125456177b36cbad5ccf550a2efa268abf3f326866309845f90f4` |
| 4 | `lemma` | [continuous_uncurry_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/continuous-uncurry-toeuclideanclm--dc001c302e6d9ba7df8b4756.md) | 111 | `result-track:dc001c302e6d9ba7df8b4756c3198b8b387bce4b9dc517e91099aa535492f556` |
| 5 | `lemma` | [coe_toEuclideanCLM_eq_toEuclideanLin](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/coe-toeuclideanclm-eq-toeuclideanlin--eb4b85feecb6c933780131f3.md) | 123 | `result-track:eb4b85feecb6c933780131f3aec71731c1542061d538aa13edd34571f4e3eebc` |
| 6 | `lemma` | [toEuclideanCLM_toLp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/toeuclideanclm-tolp--2989b0d9b994dd1ea6176c0d.md) | 128 | `result-track:2989b0d9b994dd1ea6176c0d3b22825145a1be7b01dba15c04f585de6363d008` |
| 7 | `lemma` | [ofLp_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/oflp-toeuclideanclm--046871159de37f5293186112.md) | 132 | `result-track:046871159de37f52931861128de9b248bc056946bc840fd0e2a02923a6a9d20f` |
| 8 | `lemma` | [inner_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/inner-toeuclideanclm--d2cd836295dd805acc35ae97.md) | 136 | `result-track:d2cd836295dd805acc35ae97306e2502822b474ffa812599a15ba0b1998747c2` |
| 9 | `def` | [l2OpNormedAddCommGroupAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2opnormedaddcommgroupaux--06f4aec4893d7f95bdc98052.md) | 153 | `declaration-track:06f4aec4893d7f95bdc980527ab7d3a5b3abd647836eeb75393ea06f57408ae8` |
| 10 | `def` | [l2OpNormedRingAux](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2opnormedringaux--1516098c9a918f594ff9c228.md) | 161 | `declaration-track:1516098c9a918f594ff9c228c6295bbda272967994348d0aeaffc7d02e58b6e9` |
| 11 | `def` | [instL2OpMetricSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instl2opmetricspace--8f1d5c26c17a23d406409715.md) | 171 | `declaration-track:8f1d5c26c17a23d4064097155447e03bd746eb1f0ba87fa773ce735ff80429ea` |
| 12 | `def` | [instL2OpNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instl2opnormedaddcommgroup--78479d77c86eb4f792343796.md) | 192 | `declaration-track:78479d77c86eb4f792343796dbc92ce581018a561fd24d83aaf7ef374d479f4a` |
| 13 | `lemma` | [l2_opNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-def--57f83684a4ff4562cadc54f5.md) | 198 | `result-track:57f83684a4ff4562cadc54f5dc456cc3a3ed2bc3ad2334ad497947bf6b844f54` |
| 14 | `lemma` | [l2_opNNNorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-def--66cadf4e1e1e597930a3f982.md) | 201 | `result-track:66cadf4e1e1e597930a3f9823207ca2b1a7590cd9bf0fe8257da6cf1e2eb9b20` |
| 15 | `lemma` | [l2_opNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-conjtranspose--17b1e856d75ed72e7d8b935e.md) | 204 | `result-track:17b1e856d75ed72e7d8b935e6d56eca4f49d96e3d57537d41718bdc49f0eacb1` |
| 16 | `lemma` | [l2_opNNNorm_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-conjtranspose--c520e2a3f0c9623ccce32b9e.md) | 209 | `result-track:c520e2a3f0c9623ccce32b9e57b386a8632f206b4bbc415a5df37bc387886b5b` |
| 17 | `lemma` | [l2_opNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-conjtranspose-mul-self--405c8a1d3555e57701a96b19.md) | 212 | `result-track:405c8a1d3555e57701a96b19486fffcb5d0e96338715a6f0930db47eab492621` |
| 18 | `lemma` | [l2_opNNNorm_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-conjtranspose-mul-self--c46eca2d66bbc51e032a138f.md) | 218 | `result-track:c46eca2d66bbc51e032a138f10cb08d32cc7c9bf7af64cb2f6ee4097c58a0e70` |
| 19 | `lemma` | [l2_opNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-mulvec--91ef165dc430fd0f576a354d.md) | 222 | `result-track:91ef165dc430fd0f576a354dca1b330e792deb64ac6cd01f7e4d85151d351218` |
| 20 | `lemma` | [l2_opNNNorm_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-mulvec--22800c74124caaebcc1917f4.md) | 226 | `result-track:22800c74124caaebcc1917f4b3ffd88be289ddcb1e1f6aaf9683e73133df5e55` |
| 21 | `lemma` | [l2_opNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-mul--0fbfe08d9abd335e018c0c80.md) | 230 | `result-track:0fbfe08d9abd335e018c0c80d40e3cf84160800cd3146b8472a078be80984dd9` |
| 22 | `lemma` | [l2_opNNNorm_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-mul--3f22b1b6153e5f00f02ecef7.md) | 239 | `result-track:3f22b1b6153e5f00f02ecef7d4d1e11831eac76588bf6e79886f3986806a845f` |
| 23 | `lemma` | [l2_opNorm_toEuclideanCLM](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-toeuclideanclm--ee89d4c6462ba958b52361fc.md) | 242 | `result-track:ee89d4c6462ba958b52361fc74fd32bb7d5aa37567dbb8fcf0ffcbdbdd4e5e72` |
| 24 | `lemma` | [l2_opNorm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnorm-diagonal--cf49f80e45c59eb081490500.md) | 246 | `result-track:cf49f80e45c59eb081490500bc5b6586055cda41e40c4a0729e690f841303ddf` |
| 25 | `lemma` | [l2_opNNNorm_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/l2-opnnnorm-diagonal--3ca9105ea1e57913ed8e5109.md) | 262 | `result-track:3ca9105ea1e57913ed8e5109115cd278d9fd0e81b8aa66543ea150478bafb658` |
| 26 | `def` | [instL2OpNormedSpace](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instl2opnormedspace--6352f5444dd3ca84e3040a95.md) | 268 | `declaration-track:6352f5444dd3ca84e3040a9586733f7105b9bde09cc5563311b4535f88ba9e40` |
| 27 | `def` | [instL2OpNormedRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instl2opnormedring--6c97b12e4133fb3a8da9a98f.md) | 278 | `declaration-track:6c97b12e4133fb3a8da9a98fe3a675586f7c1dfcdaaab41aea971212a852642b` |
| 28 | `lemma` | [cstar_norm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/cstar-norm-def--3a1157645efe2ec7c0df23a5.md) | 285 | `result-track:3a1157645efe2ec7c0df23a528747675b4cc428fc8ec34324852a049d2083a7b` |
| 29 | `lemma` | [cstar_nnnorm_def](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/cstar-nnnorm-def--17b5a9046924f1680ea656cb.md) | 289 | `result-track:17b5a9046924f1680ea656cb370eb1fccc1ab6f639b3fa11113c23207189030d` |
| 30 | `def` | [instL2OpNormedAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instl2opnormedalgebra--f6604eb6f0e93842608f15bc.md) | 294 | `declaration-track:f6604eb6f0e93842608f15bcb2064e08a27dc800db5ccfb2716527b4e984429d` |
| 31 | `lemma` | [instCStarRing](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instcstarring--d971317b66c2c2c582c3f1a3.md) | 301 | `result-track:d971317b66c2c2c582c3f1a363f4cbc7970ad215e40356f11792971e87aacf67` |
| 32 | `def` | [instCStarAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant1bc46e33c9ae1d5dca0d256c9c015695f144a7fb22c02db009b6da8262a4c7c2.lean/declarations/instcstaralgebra--da694ba04f97cd50d9c76137.md) | 307 | `declaration-track:da694ba04f97cd50d9c76137dd533607ea5abddc208d6cc6cd7544c8d48ad35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
