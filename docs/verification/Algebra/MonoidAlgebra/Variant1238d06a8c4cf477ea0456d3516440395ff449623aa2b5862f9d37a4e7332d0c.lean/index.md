# Verification target: GRWTSK.Algebra.MonoidAlgebra.Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544c6d9108d09fe0e46096189024aa2a2f07f6f9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/index.md) · [Full source](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544c6d9108d09fe0e46096189024aa2a2f07f6f9`.

Source path: `GRWTSK/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Laurent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/instcoalgebra--55f537784cf180a805cf59d3.md) | 32 | `declaration-track:55f537784cf180a805cf59d3186c06c441d6abca651d3dfe560aecdd4a698f9d` |
| 2 | `lemma` | [counit_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/counit-single--570fcd173107bd77675060da.md) | 35 | `result-track:570fcd173107bd77675060da0b75aa193f74e1d22fb720ef0d395559cc0493ca` |
| 3 | `lemma` | [comul_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/comul-single--866d73a5077da92cce4a3a7e.md) | 40 | `result-track:866d73a5077da92cce4a3a7eeea540dec7696849442b5109d31d0009aab011b7` |
| 4 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/instcoalgebra--322b5e3f0005933172f3f55a.md) | 53 | `declaration-track:322b5e3f0005933172f3f55a9de738a48412153aec96104a87638cb7adeff632` |
| 5 | `lemma` | [counit_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/counit-single--fcb2ae1bec307a691d187725.md) | 56 | `result-track:fcb2ae1bec307a691d187725189c7d87b6253f487582e8dbba8ceaae5a845426` |
| 6 | `lemma` | [comul_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/comul-single--2f19d8e117d04649f54ad2a2.md) | 61 | `result-track:2f19d8e117d04649f54ad2a229d3ea761404e2ff87053822afe0fc869ed5ba30` |
| 7 | `instance` | [instCoalgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/instcoalgebra--e74568413abf66f83925b629.md) | 74 | `declaration-track:e74568413abf66f83925b629f75c753eb736297c9e62a456d3e40f19a15742cf` |
| 8 | `theorem` | [comul_C](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/comul-c--6129b1185d5203759dc67cfb.md) | 81 | `result-track:6129b1185d5203759dc67cfb9763feee1543511b38e4aa3af4be450ec10a4b6b` |
| 9 | `theorem` | [comul_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/comul-c-mul-t--fb7af1f74ba8a2bf079c8093.md) | 87 | `result-track:fb7af1f74ba8a2bf079c8093b9b8324d6e3edc74c98c5a086c7e906c96f2b691` |
| 10 | `theorem` | [comul_C_mul_T_self](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/comul-c-mul-t-self--9d6850f00e6776d646962caf.md) | 92 | `result-track:9d6850f00e6776d646962cafe4dd35003b128b6433f0056edd779d14b7e4e532` |
| 11 | `theorem` | [counit_C](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/counit-c--06bf2005970c00f41511f82b.md) | 97 | `result-track:06bf2005970c00f41511f82b02c933c4d8accde10d06dfcddaee23f541a0ec82` |
| 12 | `theorem` | [counit_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant1238d06a8c4cf477ea0456d3516440395ff449623aa2b5862f9d37a4e7332d0c.lean/declarations/counit-c-mul-t--200e0767ed716a7dd6203a52.md) | 102 | `result-track:200e0767ed716a7dd6203a529fb0d933810bfd16e93834a4e3354aed6957705c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
