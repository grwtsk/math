# Verification target: GRWTSK.NumberTheory.GaussSum.Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6bbab1eefc328d0b5abf3ae1937fd8d3cc693e4`.

Source path: `GRWTSK/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussSum](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum--3641072d0b2b064f7112e3a8.md) | 80 | `declaration-track:3641072d0b2b064f7112e3a82d4436ae223bdf005b139f009df9d8ce4a762ab0` |
| 2 | `theorem` | [gaussSum_mulShift](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mulshift--b8bc3fe6ab545999c3044a73.md) | 84 | `result-track:b8bc3fe6ab545999c3044a731a144f4ea04b8e691fb9df0718b3f1e0f506814b` |
| 3 | `theorem` | [gaussSum_mulShift_eq](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mulshift-eq--d7614144059d1871f1fba8f6.md) | 91 | `result-track:d7614144059d1871f1fba8f65e71e043b1f01101954e53c049985e36bae0c985` |
| 4 | `lemma` | [star_gaussSum_eq](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/star-gausssum-eq--b62a9201fb11a7997ae8afa5.md) | 97 | `result-track:b62a9201fb11a7997ae8afa51d470e185fa2d59e19878759dcec723f12812776` |
| 5 | `theorem` | [gaussSum_one_one](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-one-one--4f678336eb631c156173961b.md) | 116 | `result-track:4f678336eb631c156173961be22fa1ccc560824378f7ea29e39795fa5b30bcb9` |
| 6 | `theorem` | [gaussSum_one_right](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-one-right--24dce50e4e0678144d7fd29e.md) | 122 | `result-track:24dce50e4e0678144d7fd29e9db45feb36ec4869f213b9fbbd259d0a5144ce5d` |
| 7 | `theorem` | [gaussSum_one_left](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-one-left--a12e04692a29ca89026730ee.md) | 134 | `result-track:a12e04692a29ca89026730eed90d773f08f10b644c3904b5e623b737cddd1a1b` |
| 8 | `lemma` | [gaussSum_mul](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mul--4e96f2d58563dd991113d387.md) | 157 | `result-track:4e96f2d58563dd991113d38745bd43e785c24d686c25c434620654903cd7eb0c` |
| 9 | `lemma` | [mul_gaussSum_inv_eq_gaussSum](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/mul-gausssum-inv-eq-gausssum--7e8babc78f4ecf5f0182190d.md) | 174 | `result-track:7e8babc78f4ecf5f0182190d20d343032eedccb88d298d102aa83ed39f580bf8` |
| 10 | `theorem` | [gaussSum_mul_aux](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mul-aux--cc1bd641e6fd8a444a481ad7.md) | 183 | `result-track:cc1bd641e6fd8a444a481ad7d571aebe8fc70f9209544ce261d00928adabf9eb` |
| 11 | `theorem` | [gaussSum_mul_gaussSum_eq_card](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mul-gausssum-eq-card--2eaec899e5d78a1795af5a4f.md) | 196 | `result-track:2eaec899e5d78a1795af5a4ff2d2f03f06e1ccff4ce8f5814a3a8ce94bb60ad1` |
| 12 | `lemma` | [gaussSum_mul_gaussSum_pow_orderOf_sub_one](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-mul-gausssum-pow-orderof-sub-one--87d5c1481a5129bd2b73ca4e.md) | 213 | `result-track:87d5c1481a5129bd2b73ca4ea23a701bf2af92eafa86262a63cd4610266df6ba` |
| 13 | `lemma` | [gaussSum_ne_zero_of_nontrivial](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-ne-zero-of-nontrivial--8375c0e825de73979cc81fc7.md) | 223 | `result-track:8375c0e825de73979cc81fc7a1a2e64d704616aee2f4ea5c3ad1c58d4dde1caf` |
| 14 | `theorem` | [gaussSum_sq](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-sq--4166c3391289a9f08b5510f7.md) | 230 | `result-track:4166c3391289a9f08b5510f7bbbea4c7f5254416b3a90de523329dda9c87f05f` |
| 15 | `theorem` | [gaussSum_frob](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/gausssum-frob--97931fd5eadabecd45a251e6.md) | 253 | `result-track:97931fd5eadabecd45a251e6d9b39b232fac7b5646e9874a13554c8f950bd3cb` |
| 16 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/mulchar-isquadratic-gausssum-frob--a47340a3fc9b3fe96b7399f2.md) | 262 | `result-track:a47340a3fc9b3fe96b7399f2f5d9210ce8d18a809418086623f756e5e57254b9` |
| 17 | `theorem` | [MulChar.IsQuadratic.gaussSum_frob_iter](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/mulchar-isquadratic-gausssum-frob-iter--053a4680f32caf220eaa741b.md) | 272 | `result-track:053a4680f32caf220eaa741b34689e2ab21166043292acdc4f64bac85fae5ef8` |
| 18 | `theorem` | [Char.card_pow_char_pow](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/char-card-pow-char-pow--99be82905790c82efb4af92d.md) | 295 | `result-track:99be82905790c82efb4af92d778bc95299f353971b59f483a8b00adddd18f56b` |
| 19 | `theorem` | [Char.card_pow_card](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/char-card-pow-card--e4bdbb0baec7f52fa98f37ec.md) | 311 | `result-track:e4bdbb0baec7f52fa98f37ecb31db82ca730dd88c30e4b1ccecdd81648115ad7` |
| 20 | `theorem` | [FiniteField.two_pow_card](../../../../mathematics/NumberTheory/GaussSum/Variant7dfa06d29120e925fe2724da0e83c10a5654d047e87ba5c03728c7c700d40bdb.lean/declarations/finitefield-two-pow-card--798c626f154625a522156ed5.md) | 350 | `result-track:798c626f154625a522156ed5b25f24dfb855991bc18637098e62403200cd13bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
