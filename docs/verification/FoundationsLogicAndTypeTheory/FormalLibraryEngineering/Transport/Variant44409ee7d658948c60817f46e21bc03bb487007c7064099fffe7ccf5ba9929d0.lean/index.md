# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transport.Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9c54b438e97c7f2e35ef65c3f18693a77302c9",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9c54b438e97c7f2e35ef65c3f18693a77302c9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transport/Variant44409ee7d658948c60817f46e21bc03bb487007c7064099fffe7ccf5ba9929d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Transport.Foundations` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Transport.IntervalProfile` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorem` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Witness` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.Transport.ClassicalSelection` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Coordinate` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Sieve` — import line 12; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Graph` — import line 13; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Derivation` — import line 14; external provider; requires a separately pinned dependency.
- `FCRS.Transport.NegativeChecks` — import line 15; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Bertrand` — import line 16; external provider; requires a separately pinned dependency.
- `FCRS.Transport.ControlledPlaneBridge` — import line 17; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT01_Bertrand` — import line 18; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT02_BertrandPrimeSource` — import line 19; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT03_ProfileRefinement` — import line 20; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT04_SelectedWitnessSoundness` — import line 21; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT05_InterpretationSoundness` — import line 22; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT06_SieveCertificationSoundness` — import line 23; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT07_RealizationEndpoints` — import line 24; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT08_TransportComposition` — import line 25; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT09_IntensionalOutgoingEdge` — import line 26; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT10_MaterializedOutgoingEdge` — import line 27; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT11_ReflectiveRecovery` — import line 28; external provider; requires a separately pinned dependency.
- `FCRS.Transport.Theorems.TT12_BertrandGraphTransport` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
