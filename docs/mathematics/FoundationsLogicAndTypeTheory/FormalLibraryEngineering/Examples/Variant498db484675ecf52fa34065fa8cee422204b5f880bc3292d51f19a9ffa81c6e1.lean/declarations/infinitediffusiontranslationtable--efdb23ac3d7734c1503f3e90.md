# infiniteDiffusionTranslationTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c1ca8c9625e99ce57b5452c194f14b39eb5b51e4f36d16927896a16b48100d6",
  "kind": "def",
  "lexical_name": "infiniteDiffusionTranslationTable",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "infinitediffusiontranslationtable--efdb23ac3d7734c1503f3e90",
  "source": {
    "blob": "f1cee72955f7de1fde3b7fdc793eec5409b3c8b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efdb23ac3d7734c1503f3e90210c79429ac134a4ccabbd2a39418e26cd1b383c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c1ca8c9625e99ce57b5452c194f14b39eb5b51e4f36d16927896a16b48100d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def infiniteDiffusionTranslationTable : List LiteratureTranslationRecord :=
  [ infiniteDiffusionTranslation "ID-WORLD" "global domain"
      "known-maximal-state" "DAF.Terrain.KnownMaximalState"
      .soundAbstraction ["absolute coordinates", "fixed denotation"]
      ["unbounded domain replaced by a finite maximal reference"] .formalized,
    infiniteDiffusionTranslation "ID-REGION" "Appendix B: finite query region"
      "absolute-region" "DAF.Terrain.AbsoluteRegion"
      .soundAbstraction ["exact global locus"] [] .formalized,
    infiniteDiffusionTranslation "ID-WINDOW" "Appendix B: window system"
      "global-window-system" "DAF.Terrain.GlobalWindowSystem"
      .soundAbstraction ["finite exact overlaps", "static weights"]
      ["positive cover is an explicit precondition"] .formalized,
    infiniteDiffusionTranslation "ID-EMBED" "Appendix B: embedding operator"
      "signal-extension" "DAF.Terrain.extendSignal"
      .soundAbstraction ["zero extension", "support law"] [] .formalized,
    infiniteDiffusionTranslation "ID-DENOISER" "local denoiser"
      "involutive-convolution-core"
      "FinitePermutationDynamics.InvolutiveConvolutionCore"
      .soundAbstraction ["local convolution interface"]
      ["learned nonlinear implementation remains external"] .conditionallyFormalized,
    infiniteDiffusionTranslation "ID-FUSION" "Appendix B: overlap update"
      "anchored-window-fusion" "DAF.Integration.AnchoredWindowFusion"
      .soundAbstraction ["globally anchored weighted fusion"]
      ["global involutivity is not inferred"] .conditionallyFormalized,
    infiniteDiffusionTranslation "ID-SEED" "Appendix B: seed consistency"
      "generation-certificate" "DAF.Terrain.GlobalGenerationCertificate"
      .soundAbstraction ["fixed seed and parameters determine output"]
      ["runtime cache has no denotational role"] .formalized,
    infiniteDiffusionTranslation "ID-CACHE" "Appendix B: lazy cache"
      "window-query-semantics" "DAF.Terrain.denotationalQuery"
      .observationalRealization ["query-order independence target"]
      ["runtime cache behavior requires external conformance evidence"] .external,
    infiniteDiffusionTranslation "ID-COST" "Appendix B: random-access cost"
      "fixed-query-cost-contract" "DAF.Terrain.FixedQueryCostBound"
      .soundAbstraction ["fixed horizon", "uniform overlap bound"]
      ["wall-clock performance remains external"] .external,
    infiniteDiffusionTranslation "ID-PARALLEL" "Appendix B: parallelization"
      "finite-window-timestep-schedule"
      "DAF.Integration.WindowTimestepSchedule.state_succ_eq_operator"
      .soundAbstraction
      ["immutable same-step snapshot", "finite order independence",
        "sequential timestep recurrence"]
      ["runtime worker execution is not inferred from a finite commutative sum"]
      .conditionallyFormalized
      ["external runtime evidence must show immutable snapshot reads and faithful combination"],
    infiniteDiffusionTranslation "ID-HIERARCHY" "Figure 3, page 5"
      "global-hierarchy" "DAF.Terrain.GlobalHierarchy"
      .soundAbstraction ["coarse-to-fine absolute loci"]
      ["learned decoder remains external"] .conditionallyFormalized,
    infiniteDiffusionTranslation "ID-LAPLACIAN" "low-frequency/residual encoding"
      "linear-laplacian-encoding" "DAF.Terrain.LinearLaplacianEncoding"
      .soundAbstraction ["linear low pass", "exact residual reconstruction"]
      [] .formalized,
    infiniteDiffusionTranslation "ID-SQRT" "signed square-root transform"
      "nonlinear-representation-transform" ""
      .observationalRealization ["representation stage is explicit"]
      ["excluded from the certified linear core"] .external ]

/-- Exact record that the unbounded source interface was finitized. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Examples/Variant498db484675ecf52fa34065fa8cee422204b5f880bc3292d51f19a9ffa81c6e1.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1cee72955f7de1fde3b7fdc793eec5409b3c8b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
