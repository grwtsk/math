# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CertifiedStableArchitecture.Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9148c141d434dc1100b438153d27ee5e35340e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9148c141d434dc1100b438153d27ee5e35340e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.CertificateValidity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.BanachCompletion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.PropertyTransport` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.SemanticRealization` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Contraction` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.FixedPointSeparation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Lyapunov` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedStableArchitecture](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/certifiedstablearchitecture--184f3027bb09bdc94e271c67.md) | 38 | `declaration-track:184f3027bb09bdc94e271c67b48809590286ecd0d0ce7f65caa81b20a89dca12` |
| 2 | `theorem` | [locallyAsymptoticallyStable](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/locallyasymptoticallystable--6dfcd015e8c450a9acf848cd.md) | 108 | `result-track:6dfcd015e8c450a9acf848cde8ca451409cb851a92159e09c1cd57e6e9069e96` |
| 3 | `theorem` | [pairwiseSeparated](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/pairwiseseparated--7199a94df3a0b836cd75f20f.md) | 118 | `result-track:7199a94df3a0b836cd75f20f5bf5d3a679b9152533eb32bc51ebf78eb648e454` |
| 4 | `theorem` | [realizationBound](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/realizationbound--d2002b523edb370034d1f8ee.md) | 129 | `result-track:d2002b523edb370034d1f8ee6e2fa28c802c29392c665f710e228ff9b3935d3a` |
| 5 | `theorem` | [semanticRelationRealizesAsZero](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/semanticrelationrealizesaszero--99c4caefd73227674101f85f.md) | 137 | `result-track:99c4caefd73227674101f85fef4444a29c856036a1e0759d40da37d31d3e8980` |
| 6 | `theorem` | [admittedAnalogyPropertySound](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/admittedanalogypropertysound--ea4dfaa3232db9528983a54c.md) | 149 | `result-track:ea4dfaa3232db9528983a54c617343ae660de44a4b1900dd42063e4b4ecfb80a` |
| 7 | `theorem` | [allCertificatesUsable](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/allcertificatesusable--146606bf56fcb3026ade183d.md) | 167 | `result-track:146606bf56fcb3026ade183d1195aecced02489b658713425b6457559e25be70` |
| 8 | `theorem` | [perturbedFixedPointDistanceBound](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/perturbedfixedpointdistancebound--6a08214d65ced80a9c3d14a3.md) | 186 | `result-track:6a08214d65ced80a9c3d14a3d4e798bf7bc7b346420d987e46d1ac5b19cc9d6f` |
| 9 | `theorem` | [sound](../../../../../mathematics/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variant5cce6d3bde8d44ac394d955c642ded89792b1d9263c1ab2a1c77f1328ada4c62.lean/declarations/sound--272846fbd016a2f9a11b57d9.md) | 218 | `result-track:272846fbd016a2f9a11b57d912f04a9a5164a89297e21eb62fd044c369727e0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
