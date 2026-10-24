# Verification target: GRWTSK.Algebra.LinearAlgebra.HadamardMatrix.Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3345c76f6783bf4301bbc0a3d126ac9d455ebe2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3345c76f6783bf4301bbc0a3d126ac9d455ebe2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean.json)

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
| 1 | `structure` | [IsHadamard](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard--5c26df100020eb2144120563.md) | 51 | `declaration-track:5c26df100020eb2144120563090033c923f6fdb6a637740604f017bf9899e190` |
| 2 | `theorem` | [IsHadamard.isStarNormal](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-isstarnormal--538afd54bda04940db151a3c.md) | 58 | `result-track:538afd54bda04940db151a3c08a4b9d645b0a816dcf761168ad63353f8d88b7d` |
| 3 | `theorem` | [IsHadamard.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-conjtranspose--1fe11b1f478bcc6e6c7e524d.md) | 63 | `result-track:1fe11b1f478bcc6e6c7e524d403b00c64ee8b18a303311938e031db73c00d451` |
| 4 | `theorem` | [isHadamard_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-conjtranspose-iff--fb0bf53da9c8da6be4393a4b.md) | 69 | `result-track:fb0bf53da9c8da6be4393a4b88c83b01dbaeb659c1f7314ebb328a68392afd29` |
| 5 | `theorem` | [IsHadamard.reindex](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-reindex--686a175f1e14056d66350cd3.md) | 73 | `result-track:686a175f1e14056d66350cd312e6b1446b901efe109fb1661cd1d1d28c1d2401` |
| 6 | `theorem` | [isHadamard_submatrix_equiv_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-submatrix-equiv-iff--f2f85f8886fdbb18929055ab.md) | 80 | `result-track:f2f85f8886fdbb18929055abcf8ef53faf802eb642ee86d50376ef20fe53465f` |
| 7 | `theorem` | [IsHadamard.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-kronecker--089447c7d3a4b9467f880b74.md) | 86 | `result-track:089447c7d3a4b9467f880b7486e48724d84f3073f79c553f4842cd47140432b7` |
| 8 | `theorem` | [IsHadamard.card_eq_mul_star_of_const_col_sum](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-card-eq-mul-star-of-const-col-sum--0681dafeb7dc32d297f1868d.md) | 116 | `result-track:0681dafeb7dc32d297f1868dc0dc985a612d4a4d566fd7f99dfb4bfd33ecf0f3` |
| 9 | `theorem` | [IsHadamard.card_eq_star_mul_of_const_row_sum](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-card-eq-star-mul-of-const-row-sum--9a493896f3d930ca9176c5f8.md) | 137 | `result-track:9a493896f3d930ca9176c5f8217096530a79f46ab11c99b9c8eb3908076b3543` |
| 10 | `theorem` | [IsHadamard.transpose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-transpose--6a0625d808908d440e3fc6ce.md) | 153 | `result-track:6a0625d808908d440e3fc6cef13cdb9c377c16fbae686046c0f4430438191431` |
| 11 | `theorem` | [isHadamard_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-transpose-iff--e0af232ee604c84e38e1148b.md) | 163 | `result-track:e0af232ee604c84e38e1148be45fb69d6850df3fba92945544822065049ee4c9` |
| 12 | `theorem` | [IsHadamard.neg](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-neg--21ef8df53c49b02998170dc9.md) | 172 | `result-track:21ef8df53c49b02998170dc99e3066b183727e9f00e88c1dc45d638328d9a19b` |
| 13 | `theorem` | [IsHadamard.neg_iff](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-neg-iff--137e68792e8af080c1e18e36.md) | 177 | `result-track:137e68792e8af080c1e18e36f08acc2b78d95ac23b91566cbc3447e68c3cb89a` |
| 14 | `theorem` | [IsHadamard.det_mul_star_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-det-mul-star-det--8d228ce6a5fdcc8fec9f3d87.md) | 186 | `result-track:8d228ce6a5fdcc8fec9f3d8740bd7cde1971bf036a84c9863e3a2e55189dcf2e` |
| 15 | `theorem` | [IsHadamard.star_det_mul_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-star-det-mul-det--c4fc46e2f85984d30ce7e3a7.md) | 192 | `result-track:c4fc46e2f85984d30ce7e3a71b842131b1d34268ca146fc15e8617666c1f396e` |
| 16 | `theorem` | [IsHadamard.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-det-ne-zero--da21b8fd4d1e574c5ba16d78.md) | 198 | `result-track:da21b8fd4d1e574c5ba16d789f6916c29fd94b5c2c8ee9fb4d8a647f75ebcffc` |
| 17 | `theorem` | [IsHadamard.isRegular_det](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-isregular-det--a7338ee8c257bfebe67707af.md) | 203 | `result-track:a7338ee8c257bfebe67707af64c46afa9a367f1a1b76d9d8a15bb67334d09086` |
| 18 | `theorem` | [IsHadamard.of_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-of-mul-conjtranspose--dac0df152035a7803af4c56d.md) | 214 | `result-track:dac0df152035a7803af4c56d564cb142ddb2db85086fb01f805964220bb71637` |
| 19 | `theorem` | [isHadamard_iff_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-iff-mul-conjtranspose--94b33892a3217e5dd67ee5c3.md) | 229 | `result-track:94b33892a3217e5dd67ee5c3fb4d31313fb1ca7ce0917ab1528a2b803d2f9846` |
| 20 | `theorem` | [IsHadamard.four_dvd_card](../../../../../mathematics/Algebra/LinearAlgebra/HadamardMatrix/Variant50e6d5bfe748fb80c310f92b973527e4d384f14885cd4ff076d81bc426692a22.lean/declarations/ishadamard-four-dvd-card--57217e7c37f36ca5f3bcfb46.md) | 242 | `result-track:57217e7c37f36ca5f3bcfb46849e1d5048db9466ffa673e4ff7057fc6bbe4d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
