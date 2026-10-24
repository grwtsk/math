# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyHigherJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90830ec01c368f6c6e99f945a5e4bf9be5ac4c18",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90830ec01c368f6c6e99f945a5e4bf9be5ac4c18`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetRecursion.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreyJetRing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjetring--9dfabb07c081f75a666c3aa9.md) | 18 | `declaration-track:9dfabb07c081f75a666c3aa9621f2d33cecb9ca5fca186f399d572b0220b87a5` |
| 2 | `def` | [freyHigherParameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyhigherparameter--218a514054210e98af51095c.md) | 21 | `declaration-track:218a514054210e98af51095c91ae619abfb82b437932ec799c9395d46f4694a8` |
| 3 | `theorem` | [freyHigherParameter_pow](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyhigherparameter-pow--1ceab23fb9f4d132e48bd537.md) | 25 | `result-track:1ceab23fb9f4d132e48bd537f180aacb420c61061f707829658425b1dd6aeafe` |
| 4 | `def` | [freyJetTruncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjettruncate--1428d0eb5b2001f154443b4c.md) | 29 | `declaration-track:1428d0eb5b2001f154443b4c83c2f42f521aa4cc291003cb8ccdbfca824be883` |
| 5 | `theorem` | [freyJetTruncate_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjettruncate-parameter--f25b3d0f1da137818a9b0a96.md) | 39 | `result-track:f25b3d0f1da137818a9b0a96ba21662e0dbb661ce3a23c183110eb8ed562a995` |
| 6 | `theorem` | [freyJetTruncate_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjettruncate-scalar--43653e5b5a5731a38ae724d2.md) | 43 | `result-track:43653e5b5a5731a38ae724d28a01f87742d9297e6bd1927fbbeaf1be7d458d2c` |
| 7 | `theorem` | [freyJetTruncate_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjettruncate-id--df6535d69b6ea48a21aa0687.md) | 49 | `result-track:df6535d69b6ea48a21aa068750895ea7e84ec4eb8ae57d355f7daf0040585a2b` |
| 8 | `theorem` | [freyJetTruncate_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/freyjettruncate-comp--943dd19440c9e775a538c692.md) | 60 | `result-track:943dd19440c9e775a538c69229d816c05c821b53554080c8b02b50913fbee9d8` |
| 9 | `def` | [PrimitiveAdditiveTriple.freyPortQuadraticCoefficient](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyportquadraticcoefficient--f7bef3bb5771f8509ef7ebd2.md) | 75 | `declaration-track:f7bef3bb5771f8509ef7ebd2efddb629fdc04ab78df1ea8fd91131b21ef7a224` |
| 10 | `def` | [PrimitiveAdditiveTriple.freyHigherX](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherx--1e5ac04f85a55027c5f634a1.md) | 81 | `declaration-track:1e5ac04f85a55027c5f634a1c671eb22333eedd31a74204b012e7306c78d0ea6` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyHigherJacobian_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherjacobian-inverse--e5b8944c29bae652b6da649f.md) | 90 | `result-track:e5b8944c29bae652b6da649f068f776b161930b7ea60124acbd94584419b124d` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyHigherX_shifted](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherx-shifted--582ba914364c5521e83df1cf.md) | 97 | `result-track:582ba914364c5521e83df1cfa550ba5988f8c99972564912769acfe6e6400aee` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyHigherX_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherx-cubic--63c45803bb8bc5c1fad3c9b9.md) | 109 | `result-track:63c45803bb8bc5c1fad3c9b99d12826d73992dd1e13ca3d236f1afbd128c2d31` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyHigherJet_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherjet-equation--688272d948356d42875970c6.md) | 144 | `result-track:688272d948356d42875970c6a2a4c9baec81be189c980e46748cf7c311a53f7b` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyHigherX_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherx-truncate--27fe12d1cf84a966c8a05b63.md) | 158 | `result-track:27fe12d1cf84a966c8a05b639e25c8c93c8063026a47b2714b50383bed670fd1` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyHigherX_order_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyhigherx-order-two--6b074a36c98566a9b41042f5.md) | 170 | `result-track:6b074a36c98566a9b41042f5a6ff08af92d58cbb7e17a50000ccf7c77e7ec7f9` |
| 17 | `def` | [PrimitiveAdditiveTriple.freyPortQuadraticCoefficientInt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyportquadraticcoefficientint--fc897dc4b925015df2765533.md) | 188 | `declaration-track:fc897dc4b925015df27655332eec8df2d25ecd1e722526125f14708c1095009a` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyPortQuadraticCoefficient_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyportquadraticcoefficient-cast--64b7a78f0698df9110c992c0.md) | 194 | `result-track:64b7a78f0698df9110c992c0eae2f29cf511aa475edb66b686517ba5d318354b` |
| 19 | `def` | [PrimitiveAdditiveTriple.freyJetApproximantPolynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyjetapproximantpolynomial--5eea8ac4f15141ee7b7b23d3.md) | 204 | `declaration-track:5eea8ac4f15141ee7b7b23d3b37803bc3ff91969803e2aa888b891fae3b81792` |
| 20 | `def` | [PrimitiveAdditiveTriple.freyJetNumeratorPolynomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyjetnumeratorpolynomial--a48eaeb7a8b410467cbee204.md) | 210 | `declaration-track:a48eaeb7a8b410467cbee204eb9f5eba91bb5eb1927e1346f06bbb7e28fc69a4` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.freyJetPolynomial_denominator_clears](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/declarations/primitiveadditivetriple-freyjetpolynomial-denominator-clears--2225aff3f6e2af84808c1423.md) | 217 | `result-track:2225aff3f6e2af84808c142333fce4750783a430c92df9b808048c880d574b4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
