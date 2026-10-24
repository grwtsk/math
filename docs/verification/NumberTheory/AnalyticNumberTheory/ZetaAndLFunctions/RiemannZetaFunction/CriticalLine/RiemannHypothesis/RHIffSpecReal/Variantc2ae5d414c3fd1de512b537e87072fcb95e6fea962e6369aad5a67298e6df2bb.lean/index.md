# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RHIffSpecReal.Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fc98940d22556f6b1a3a38cf880bc82dfdd3d16",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fc98940d22556f6b1a3a38cf880bc82dfdd3d16`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Operators.LsymPi` — import line 6; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.CanonicalId` — import line 7; external provider; requires a separately pinned dependency.
- `SpectralProof.Determinants.SpectralMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GRH](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean/declarations/grh--a90f2c614aead94c035d3ebc.md) | 25 | `declaration-track:a90f2c614aead94c035d3ebc7467613a54f47b3ee31bf7de37b9231b70719ef7` |
| 2 | `def` | [SpectrumReal](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean/declarations/spectrumreal--c121b34b1e46acb29fb19ead.md) | 32 | `declaration-track:c121b34b1e46acb29fb19ead46be9337237ea3ef5e18ef199bbc14ed86e11d38` |
| 3 | `theorem` | [GRH_iff_spec_real](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variantc2ae5d414c3fd1de512b537e87072fcb95e6fea962e6369aad5a67298e6df2bb.lean/declarations/grh-iff-spec-real--3b9bd3acc8d6ba78a789ad13.md) | 41 | `result-track:3b9bd3acc8d6ba78a789ad13aedb22851e30b9e3303dfed4eaac473c4c4502c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
