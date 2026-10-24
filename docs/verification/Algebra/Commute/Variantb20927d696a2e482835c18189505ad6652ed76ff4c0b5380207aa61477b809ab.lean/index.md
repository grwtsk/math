# Verification target: GRWTSK.Algebra.Commute.Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0cc842c8b496d7460f854158a27093c3b40750f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0cc842c8b496d7460f854158a27093c3b40750f`.

Source path: `GRWTSK/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_commute](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/cast-commute--3857001a13ce8ffdc1c488c9.md) | 22 | `result-track:3857001a13ce8ffdc1c488c992bf8ee771cace4f6aefc5b8d339526e0106e692` |
| 2 | `theorem` | [_root_.Commute.ofNat_left](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/root-commute-ofnat-left--1eb5407761ddfe4809e5abc0.md) | 27 | `result-track:1eb5407761ddfe4809e5abc03cd307119d58ea0c40486d4128b03eec98159d04` |
| 3 | `theorem` | [cast_comm](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/cast-comm--193f1ef69555184a456819c9.md) | 30 | `result-track:193f1ef69555184a456819c980649e4483b022030372f6ca2525c85f843a0618` |
| 4 | `theorem` | [commute_cast](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/commute-cast--fe261fc61d99cb2475149fa9.md) | 33 | `result-track:fe261fc61d99cb2475149fa9ad06461a37a35ea685c6e8de942322fa3d51ac20` |
| 5 | `theorem` | [_root_.Commute.ofNat_right](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/root-commute-ofnat-right--c1aa4d64193d12a306300253.md) | 36 | `result-track:c1aa4d64193d12a3063002533a998bd4eadb34954701edb20191aa3b48957e5f` |
| 6 | `lemma` | [natCast_mul_right](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-right--826d6229563c24b2ee26f9bf.md) | 46 | `result-track:826d6229563c24b2ee26f9bf05c3b26ceaa859d0fa957e0ad0eb40085c8ef9cd` |
| 7 | `lemma` | [natCast_mul_left](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-left--140d115c4da639b21fade76c.md) | 50 | `result-track:140d115c4da639b21fade76c0105db19bb58addd9e66f15d0337eb2882e60508` |
| 8 | `lemma` | [natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-natcast-mul--c27ba0a9e1dbd48e5881aa33.md) | 53 | `result-track:c27ba0a9e1dbd48e5881aa33f68c5b8caa9a761cd90debb956284e730d6b709b` |
| 9 | `lemma` | [natCast_mul_right](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-right--1735c6787cfa6946332f5f5e.md) | 62 | `result-track:1735c6787cfa6946332f5f5e170d6195de04ce98146734474fdfed8d91688287` |
| 10 | `lemma` | [natCast_mul_left](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-left--2dd62dbf93f3063810ab9ed3.md) | 65 | `result-track:2dd62dbf93f3063810ab9ed3c4c454e692b53435333cf0f935cea3863c0712f1` |
| 11 | `lemma` | [natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-natcast-mul--428f40f98cf2770d11378fed.md) | 68 | `result-track:428f40f98cf2770d11378fed3673456220c063c48f61d00e4ce111e2fef87312` |
| 12 | `lemma` | [self_natCast_mul](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/self-natcast-mul--60ce0453a8657af0bba028f3.md) | 73 | `result-track:60ce0453a8657af0bba028f394b573b1942436930f3acab0272e140c309e2b31` |
| 13 | `lemma` | [natCast_mul_self](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/natcast-mul-self--9e0a6c833c22a3012e08438c.md) | 75 | `result-track:9e0a6c833c22a3012e08438cf80b9146b340a95179dbbbfab8fac43e4b1f9591` |
| 14 | `lemma` | [self_natCast_mul_natCast_mul](../../../../mathematics/Algebra/Commute/Variantb20927d696a2e482835c18189505ad6652ed76ff4c0b5380207aa61477b809ab.lean/declarations/self-natcast-mul-natcast-mul--c487ac2ea7a0b7f201c0e0f2.md) | 77 | `result-track:c487ac2ea7a0b7f201c0e0f21defd731578ef21db31676eef57473f1ac0ed1d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
