# Verification target: GRWTSK.Algebra.LinearAlgebra.IdealQuotient.Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9af3c1170bd216b4ccd8973fa9aec3fae6b2831",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9af3c1170bd216b4ccd8973fa9aec3fae6b2831`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Quotient` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientEquivPiSpan](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/declarations/quotientequivpispan--5e69e092b8475a7ad3d9df2a.md) | 34 | `declaration-track:5e69e092b8475a7ad3d9df2ab8d9d743640a03f14add062cf09dfb96a13a9d6a` |
| 2 | `def` | [quotientEquivPiZMod](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/declarations/quotientequivpizmod--6c9866391e98b4967a47bf0e.md) | 40 | `declaration-track:6c9866391e98b4967a47bf0e491a30ff5afbdda383b90b391aa11882a4173001` |
| 3 | `theorem` | [finiteQuotientOfFreeOfNeBot](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/declarations/finitequotientoffreeofnebot--6c06aba0abfcb66b16e5c944.md) | 48 | `result-track:6c06aba0abfcb66b16e5c9449d1d87c1b2e18a2290656e2b93434ec7df032003` |
| 4 | `def` | [quotientEquivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/declarations/quotientequivdirectsum--2cba8da5c8c4caac61c5955a.md) | 61 | `declaration-track:2cba8da5c8c4caac61c5955a61ec335de813653f112f20a5832e2e36fea7d7c6` |
| 5 | `theorem` | [finrank_quotient_eq_sum](../../../../../mathematics/Algebra/LinearAlgebra/IdealQuotient/Variantfd6695949ce28a6ff985f84c4c8d4c7dfa10586d45dbffc3b34da8fa75672c72.lean/declarations/finrank-quotient-eq-sum--222e8dfbbe8ee47d754e4737.md) | 65 | `result-track:222e8dfbbe8ee47d754e47374ee09db3ea122f4b48ebd25f05e0006c39cb8b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
