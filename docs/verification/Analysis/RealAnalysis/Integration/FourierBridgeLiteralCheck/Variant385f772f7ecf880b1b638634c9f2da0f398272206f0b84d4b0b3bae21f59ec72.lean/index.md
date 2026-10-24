# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FourierBridgeLiteralCheck.Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70745bc7afe2c033ccf890793947dc6bce062130",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70745bc7afe2c033ccf890793947dc6bce062130`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/integral-fourierinv-mul-eq--dfbed6f10fcd8bdc30f1f4d8.md) | 12 | `result-track:dfbed6f10fcd8bdc30f1f4d81dacfe50c4ddce96757d84fcf8ebf459f94c82da` |
| 2 | `theorem` | [continuous_fourierInv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/continuous-fourierinv--b964d59114108d3a7d5167aa.md) | 26 | `result-track:b964d59114108d3a7d5167aa678ab5bad5b59bf7fa1878a98ee726b6491fd59e` |
| 3 | `theorem` | [fourierInv_toLp_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/fourierinv-tolp-ae--c7ddbf7eb28be7d662225a47.md) | 33 | `result-track:c7ddbf7eb28be7d662225a4758486e27241a1f34dad1d43c6d67a2539156d17b` |
| 4 | `theorem` | [fourierInv_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/fourierinv-memlp--4cb3ccec1256ab32ab16e1e2.md) | 64 | `result-track:4cb3ccec1256ab32ab16e1e20eb7b8f2445972cb0c5beda2c44e93f15d6eea1a` |
| 5 | `theorem` | [fourierInv_toLp_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/fourierinv-tolp-eq--2ae3e3faaba2b3da3d38d625.md) | 69 | `result-track:2ae3e3faaba2b3da3d38d6256b6d89394da257150bb2d2865f3b0799ce6fea0e` |
| 6 | `theorem` | [norm_fourierInv_toLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/norm-fourierinv-tolp--9324578b32c2e04748de92b7.md) | 75 | `result-track:9324578b32c2e04748de92b77633ac16123fb218c780384cf61e3acc2714bb18` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--1eedc8cd1825040aab5fcd13.md) | 87 | `declaration-track:1eedc8cd1825040aab5fcd1345a064b32302efbf8a57003f85eb5621b7a48f47` |
| 8 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--d89f506ce4401b76f900eac3.md) | 91 | `declaration-track:d89f506ce4401b76f900eac38d12e6d4eaf5be446d2cbfeb2fbda17058896ed2` |
| 9 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--870efa807bedf501fe71fc79.md) | 94 | `declaration-track:870efa807bedf501fe71fc79089b9a0357b3ed14b91f84cb7c9d8cad5c8364ff` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--79785c473712cfc212a0e04e.md) | 98 | `declaration-track:79785c473712cfc212a0e04ef38f412a9ef0d7f45455920767f83d0680089571` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--89f1a40964206bd0d3f741c5.md) | 101 | `declaration-track:89f1a40964206bd0d3f741c5a059bfeeb0357e74fefe9c66b244e9dde446d617` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FourierBridgeLiteralCheck/Variant385f772f7ecf880b1b638634c9f2da0f398272206f0b84d4b0b3bae21f59ec72.lean/declarations/example--1a1357f5d925fefd975f9c9a.md) | 105 | `declaration-track:1a1357f5d925fefd975f9c9a6e171359aec7d4b9801cd515fb59f653d23baff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
