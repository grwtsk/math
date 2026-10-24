# paperMapJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f4b53425dc183e688f85ef424ae2a5b885b91b560995b7244792b9be31a616e",
  "kind": "def",
  "lexical_name": "paperMapJson",
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
  "slug": "papermapjson--3b786c53b7a0fec98cd4e186",
  "source": {
    "blob": "b84d57bef917b742fc1eab24aa543cd9d3567f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 618,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b786c53b7a0fec98cd4e18654d72f42d48d7f5b51e6ffc8edd9057884eea427",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f4b53425dc183e688f85ef424ae2a5b885b91b560995b7244792b9be31a616e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def paperMapJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.paper_map.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.GenerateFixtures\", \"trusted\": true},\n" ++
  "  \"artifactHash\": " ++ stringJson paperMapArtifactHash ++ ",\n" ++
  "  \"references\": [" ++
    String.intercalate "," [
      paperReferenceJson "surface-core" "Finite reversible BinaryLogicMatrix dynamics"
        "formal source for the executed reversible flow" "formalized" "lean_theorem"
        ["blm-flow-bijective.json"] ["Surface.Legacy.BinaryLogicMatrixFlow.Core"]
        ["Rust conformance is tested against Lean fixtures, not itself proved"],
      paperReferenceJson "eml" "Elementary matrix logic"
        "finite structural encoding and catalogue coverage" "formalized" "lean_theorem"
        ["eml-catalogue.json", "extended-eml-coverage.json"]
        ["Surface.Legacy.EMLTree", "Surface.Legacy.EMLCircuitMatrix",
         "Surface.Legacy.ElementarySymbol", "Surface.Legacy.CertifiedEncoding",
         "Surface.Legacy.ClassicalSmoothAnalyticFunction", "Surface.Legacy.ExtendedEML",
         "Surface.Legacy.CoveredByExtendedEMLAt"]
        ["structural grammar formalized",
         "analytic universality not claimed unless separately proved",
         "branch-sensitive equalities not claimed"],
      paperReferenceJson "fractal-zeta" "Zeta and Mobius finite arithmetic descriptors"
        "fixture descriptor for finite arithmetic fields" "fixture_descriptor" "lean_descriptor"
        ["zeta-mobius-fractal.json"]
        ["Surface.Legacy.BinaryLogicMatrix.ZetaMobius", "Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal"]
        ["infinite Euler products and analytic Mobius inverse are not claimed"],
      paperReferenceJson "zeta-fractal-geography" "Zeta-fractal geography"
        "research framing for finite descriptor geography" "research_note" "documentation"
        ["zeta-mobius-fractal.json"] ["Surface.Legacy.BinaryLogicMatrix.ZetaMobiusFractal"]
        ["visual geography is descriptive unless backed by a named theorem"],
      paperReferenceJson "tao-averaged-navier-stokes" "Averaged Navier-Stokes inspiration"
        "algorithmic reference for averaging descriptors" "algorithmic_reference" "analysis_descriptor"
        ["blm-flow-average.json", "heat-averaging.json"]
        ["Surface.Legacy.BinaryLogicMatrixFlow.Averaging", "Surface.Flow.Heat.Averaging"]
        ["spectral averaging is not a reversible BinaryLogicMatrixFlow"],
      paperReferenceJson "graph-ricci-flow" "Graph Ricci-flow descriptors"
        "finite graph-curvature descriptor boundary" "fixture_descriptor" "lean_descriptor"
        ["ricci-flow-coverage.json"] ["Surface.Legacy.Ricci.Graph", "Surface.Legacy.Ricci.Flow"]
        ["curvature flow claims require explicit hypotheses"],
      paperReferenceJson "ricci-poincare" "Ricci flow and Poincare classification"
        "research note for surgery and extinction metadata" "research_note" "documentation"
        ["ricci-surgery.json", "ricci-extinction-topology.json"]
        ["Surface.Legacy.Ricci.Surgery", "Surface.Legacy.Ricci.Extinction", "Surface.Legacy.Ricci.Topology"]
        ["Poincare-style topology classification is not claimed without certificates"],
      paperReferenceJson "c-mncs" "C-MNCS"
        "out-of-scope comparison term preserved as a boundary" "not_claimed" "boundary"
        ["paper-map.json"] [] ["not claimed: no C-MNCS theorem is claimed by Surface"],
      paperReferenceJson "frg-ricci" "FRG and Ricci analogies"
        "future comparison work outside the trusted path" "future_work" "boundary"
        ["paper-map.json"] [] ["not claimed: no FRG/Ricci equivalence is claimed"],
      paperReferenceJson "webgpu-rendering" "WebGPU cellular rendering"
        "visual reference for runtime snapshots" "visual_reference" "renderer"
        ["blm-flow-bijective.json"] [] ["GPU buffers derive from runtime snapshots only"],
      paperReferenceJson "foundation-boundary" "Logical foundation registry"
        "formal foundation and claim-status bookkeeping" "formalized" "lean_theorem"
        ["foundations.json"] ["Surface.Foundation.LogicalFoundation", "Surface.Legacy.BinaryLogicMatrix.Gamma"]
        ["foundation strength is tracked separately from mathematical truth"],
      paperReferenceJson "prismatic-cohomology-atlas" "Prismatic cohomology exposition model"
        "exposition model for site-like atlas organization and comparison maps"
        "research_note" "documentation"
        ["lean-project-exposition.json"] []
        ["not claimed: Surface does not formalize prismatic cohomology",
         "site-like navigation is expository structure only"]
    ] ++
  "]\n" ++
  "}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d57bef917b742fc1eab24aa543cd9d3567f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
