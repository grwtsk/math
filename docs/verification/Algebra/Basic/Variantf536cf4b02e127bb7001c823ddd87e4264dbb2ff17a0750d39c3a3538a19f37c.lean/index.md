# Verification target: GRWTSK.Algebra.Basic.Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fa8fd90d7ae8cb45adf472ec7995ed221ad16c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fa8fd90d7ae8cb45adf472ec7995ed221ad16c`.

Source path: `GRWTSK/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean.json)

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
| 1 | `def` | [Ideal.IsMinimalPrime](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-isminimalprime--7b48e6300d69ef25abc20dd9.md) | 48 | `declaration-track:7b48e6300d69ef25abc20dd9e792a240283963c41813a8bebfc42072b6713590` |
| 2 | `lemma` | [Ideal.IsMinimalPrime.isPrime](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-isminimalprime-isprime--54b9e50e977b0ae89b09301b.md) | 51 | `result-track:54b9e50e977b0ae89b09301b9b737198924f3475294e226f7185463f766fc0a4` |
| 3 | `lemma` | [Ideal.IsMinimalPrime.le](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-isminimalprime-le--a70edc2011f5165165bf9718.md) | 54 | `result-track:a70edc2011f5165165bf971803ecacca8c677ff97dabda4d9993018f4718c350` |
| 4 | `abbrev` | [IsMinimalPrime](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/isminimalprime--1cd5db2cd2f5e2b3c8b366b9.md) | 57 | `declaration-track:1cd5db2cd2f5e2b3c8b366b986a80835a5c78765f5da6a1a48d6bb5a28635288` |
| 5 | `lemma` | [IsMinimalPrime.isPrime](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/isminimalprime-isprime--074599fa67ff69e1c05ae985.md) | 59 | `result-track:074599fa67ff69e1c05ae98597bb5358e79fa798a5ad17a6c721cf6eac1b6bd0` |
| 6 | `lemma` | [IsMinimalPrime.iff_minimal](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/isminimalprime-iff-minimal--509d33eed7b05df7551fd2e9.md) | 61 | `result-track:509d33eed7b05df7551fd2e962d39b2c530077b47627c91b197d866d57f15954` |
| 7 | `abbrev` | [Ideal.minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes--7963c98dcd5f0b20ab7f4757.md) | 65 | `declaration-track:7963c98dcd5f0b20ab7f4757081478eb364b0e73efddf81851ebb83c0e6f8736` |
| 8 | `abbrev` | [minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/minimalprimes--1a333de2fed7647013cd482a.md) | 71 | `declaration-track:1a333de2fed7647013cd482ab2e4eb157effff604b1881a566b7609fa9d0734b` |
| 9 | `lemma` | [minimalPrimes_eq_minimals](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/minimalprimes-eq-minimals--7200167d75eb26debed930c7.md) | 74 | `result-track:7200167d75eb26debed930c7881be3281aaba4fc726d31c6d21f66148ef585cd` |
| 10 | `theorem` | [Ideal.minimalPrimes_isPrime](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes-isprime--30ea94d5ba6fecc905a6ee33.md) | 80 | `result-track:30ea94d5ba6fecc905a6ee3338af2a6deafcc87a45cf03c93ae8bcc9e4d6c074` |
| 11 | `theorem` | [Ideal.exists_minimalPrimes_le](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-exists-minimalprimes-le--be62dbf042d26e51ed529002.md) | 83 | `result-track:be62dbf042d26e51ed5290029472897730ff0eb937f29dbd00b4b0e86aaac7e0` |
| 12 | `theorem` | [Ideal.nonempty_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-nonempty-minimalprimes--6c95e8569e8afd594bf2f022.md) | 101 | `result-track:6c95e8569e8afd594bf2f02244421711813605e552f55cfb842120a513ee407a` |
| 13 | `theorem` | [Ideal.eq_bot_of_minimalPrimes_eq_empty](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-eq-bot-of-minimalprimes-eq-empty--544f4b29a9765475a2abd529.md) | 106 | `result-track:544f4b29a9765475a2abd529c843076c41958fc80f241d1e941fe54c4e57e4c7` |
| 14 | `theorem` | [Ideal.radical_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-radical-minimalprimes--c48afd374690023d4435c540.md) | 112 | `result-track:c48afd374690023d4435c540a2ada0bfafe1c502ee4a6f2bd4d0b2b54ff21df1` |
| 15 | `theorem` | [Ideal.sInf_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-sinf-minimalprimes--521e31c41647e88c38a6b3fe.md) | 124 | `result-track:521e31c41647e88c38a6b3fee15b39b357bea08052416791b6b68d083e6e50c8` |
| 16 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes-eq-subsingleton--dbd62953c6a2a0626613846c.md) | 142 | `result-track:dbd62953c6a2a0626613846c3aae4ef1af40538701bfceee8f158071048444d1` |
| 17 | `theorem` | [Ideal.minimalPrimes_eq_subsingleton_self](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes-eq-subsingleton-self--acd736a07ef14b1bd1811eb7.md) | 151 | `result-track:acd736a07ef14b1bd1811eb7bc551eafac0b236e173ea49a3014a7553bcd258b` |
| 18 | `theorem` | [IsDomain.minimalPrimes_eq_singleton_bot](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/isdomain-minimalprimes-eq-singleton-bot--f9b75e96119c943a35c9e784.md) | 158 | `result-track:f9b75e96119c943a35c9e7847b37bde62a66b0952ce81be022a2e6cad7778d21` |
| 19 | `theorem` | [Ideal.minimalPrimes_top](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes-top--7ec9dc11a0d8fe5b6799178a.md) | 168 | `result-track:7ec9dc11a0d8fe5b6799178a4aa95d77bfae39bb5387273e3c2a1d38985e9f81` |
| 20 | `theorem` | [Ideal.minimalPrimes_eq_empty_iff](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-minimalprimes-eq-empty-iff--3d2fc7617cab87bda7399f9f.md) | 174 | `result-track:3d2fc7617cab87bda7399f9ff18be2d058593eba8db01d70c6a05aff5c9ede65` |
| 21 | `lemma` | [Ideal.mem_minimalPrimes_sup](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-mem-minimalprimes-sup--aa419cb612b4e283084c3dd8.md) | 186 | `result-track:aa419cb612b4e283084c3dd8ffea0df51c117420928ca5671acad84a48d489c1` |
| 22 | `lemma` | [Ideal.map_sup_mem_minimalPrimes_of_map_quotientMk_mem_minimalPrimes](../../../../mathematics/Algebra/Basic/Variantf536cf4b02e127bb7001c823ddd87e4264dbb2ff17a0750d39c3a3538a19f37c.lean/declarations/ideal-map-sup-mem-minimalprimes-of-map-quotientmk-mem-minimalprimes--8dd0c506638960211c90ad8c.md) | 202 | `result-track:8dd0c506638960211c90ad8c86632533049137feb73b6557211d66b77ce87bb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
