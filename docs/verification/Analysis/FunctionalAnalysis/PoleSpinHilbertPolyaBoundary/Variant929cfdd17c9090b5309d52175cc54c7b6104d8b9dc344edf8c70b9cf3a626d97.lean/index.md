# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PoleSpinHilbertPolyaBoundary.Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caf5efa0ba97efce7f045fff9fb3d39ae96fd780",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caf5efa0ba97efce7f045fff9fb3d39ae96fd780`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.ConnesTaoCheckedTheoremImports` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/polespinstate--c192ee92c3cc5b3de771f4c3.md) | 30 | `declaration-track:c192ee92c3cc5b3de771f4c32e4600650932abb1b84fcdc3ec4b83fede176e17` |
| 2 | `def` | [zeroPoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/zeropolespinstate--eb97e41da4f9b73f2cbf7203.md) | 40 | `declaration-track:eb97e41da4f9b73f2cbf7203634bc08073d0e6b837f58912e654071e190df34b` |
| 3 | `def` | [onePoleSpinState](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/onepolespinstate--b02661f1ca50429aa9bc7e80.md) | 54 | `declaration-track:b02661f1ca50429aa9bc7e80114110fbf5b7fd9519d9f68e9e311cb4118c009f` |
| 4 | `theorem` | [pole_spin_flip_involutive](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/pole-spin-flip-involutive--b5682fca9934c3aba4ce4a2f.md) | 68 | `result-track:b5682fca9934c3aba4ce4a2f700767d20076447357bba0c28759b1e02b513327` |
| 5 | `theorem` | [zero_spin_flips_to_one](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/zero-spin-flips-to-one--270b52ca183c32e9f7bef48f.md) | 74 | `result-track:270b52ca183c32e9f7bef48f277f741b0c529856318000a40ec0f27c030d1f3b` |
| 6 | `theorem` | [one_spin_flips_to_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/one-spin-flips-to-zero--f943991d885d6919d10e395d.md) | 80 | `result-track:f943991d885d6919d10e395d3a9d0a8fd38f1ca9069823c1dcdd62104a24a5eb` |
| 7 | `structure` | [PoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/polespinisolationboundary--b48baf7cf43932053d2a4241.md) | 86 | `declaration-track:b48baf7cf43932053d2a42410262496292508b221ee6abec29f45c111ddc2cd7` |
| 8 | `def` | [defaultPoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/defaultpolespinisolationboundary--5d184473eeaa4030f3bdd2b0.md) | 108 | `declaration-track:5d184473eeaa4030f3bdd2b0dfb7b2f12b182aedb965c24db94394bb5b818bc3` |
| 9 | `def` | [completedPoleSpinIsolationBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/completedpolespinisolationboundary--d902c3c5d3e895d21d224579.md) | 125 | `declaration-track:d902c3c5d3e895d21d2245796124251aa92217abee183693ebfc0ab336b21615` |
| 10 | `theorem` | [isolated_pole_spin_flip_boundary_admits_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/isolated-pole-spin-flip-boundary-admits-transfer--3d67c1729401986a6566b10b.md) | 142 | `result-track:3d67c1729401986a6566b10b89677c8124e57d6f19886f4a885b42961caf6068` |
| 11 | `theorem` | [completed_pole_spin_boundary_admits_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/completed-pole-spin-boundary-admits-transfer--5a46634e1397f312bccfa97d.md) | 155 | `result-track:5a46634e1397f312bccfa97daad9e3af1e67d2f6b1ce2410a4ef09d467c5aa8d` |
| 12 | `theorem` | [default_pole_spin_boundary_blocks_transfer](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/default-pole-spin-boundary-blocks-transfer--412c7ae258fb2634cf9d8ecb.md) | 160 | `result-track:412c7ae258fb2634cf9d8ecb68bae0a5d6527c752d3a7476ec2e1d8bff97e03c` |
| 13 | `theorem` | [completed_pole_spin_boundary_does_not_prove_hp_or_rh](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/completed-pole-spin-boundary-does-not-prove-hp-or-rh--b0d6fc84027621c5d6e3401e.md) | 167 | `result-track:b0d6fc84027621c5d6e3401e313951b1965faf0cca7f686eed2785b62f89bcb5` |
| 14 | `structure` | [HilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/hilbertpolyaauthorityboundary--5e290c2faca848a58430d340.md) | 173 | `declaration-track:5e290c2faca848a58430d340a2cd1ca86630e7d068a775f278d34d5dc577696b` |
| 15 | `def` | [defaultHilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/defaulthilbertpolyaauthorityboundary--551a45e6f1957b26d1af59fb.md) | 214 | `declaration-track:551a45e6f1957b26d1af59fba7d1e99d6b06fd6a63e3d4062658e746e1dce68f` |
| 16 | `def` | [completedHilbertPolyaAuthorityBoundary](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/completedhilbertpolyaauthorityboundary--246cf42a474cecdbbbc6ee33.md) | 242 | `declaration-track:246cf42a474cecdbbbc6ee3352abbd2f69c170c3fa6cb4900083fc7da7818838` |
| 17 | `theorem` | [complete_gate_implies_hilbert_polya_authority](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/complete-gate-implies-hilbert-polya-authority--327780c449792241cf96c362.md) | 268 | `result-track:327780c449792241cf96c362fb5b586c86cc409ed6c0ea68f792d0ebc7c59acc` |
| 18 | `theorem` | [hilbert_polya_authority_implies_rh_authority](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/hilbert-polya-authority-implies-rh-authority--6e7a7f1562a72f7218892f06.md) | 291 | `result-track:6e7a7f1562a72f7218892f06c42adc6f5c1efce66e98b8e0d2e9defa0d1ceb14` |
| 19 | `theorem` | [default_boundary_refuses_unconditional_hilbert_polya](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/default-boundary-refuses-unconditional-hilbert-polya--77e5b93ec67b076a17be0473.md) | 299 | `result-track:77e5b93ec67b076a17be0473c18b664946a53bed214e12cadf08e3a0560536f5` |
| 20 | `theorem` | [completed_boundary_reaches_hilbert_polya_and_rh](../../../../../mathematics/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant929cfdd17c9090b5309d52175cc54c7b6104d8b9dc344edf8c70b9cf3a626d97.lean/declarations/completed-boundary-reaches-hilbert-polya-and-rh--a5bd3f92035839d140361784.md) | 311 | `result-track:a5bd3f92035839d14036178421717bdc0f0cce633a0bdf0207868ac044c17a6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
