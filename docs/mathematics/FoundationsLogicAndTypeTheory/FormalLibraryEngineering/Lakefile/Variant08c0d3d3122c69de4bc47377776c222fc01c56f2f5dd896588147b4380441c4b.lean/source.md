# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lakefile.Variant08c0d3d3122c69de4bc47377776c222fc01c56f2f5dd896588147b4380441c4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f355fb8f1004c1ba0271519b3fd9ef4464d639f` · SHA-256 `08c0d3d3122c69de4bc47377776c222fc01c56f2f5dd896588147b4380441c4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lake
open Lake DSL

package «surface» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.31.0"

/-
Canonical ownership is both logical and physical: each non-umbrella library
has its own source root while retaining the published `Surface.*` module names.
There is still exactly one Lake package.

Dependency direction is lower-level finite infrastructure into `SurfaceCore`.
In particular, `Boolean.Cube.PrismaticGeometry.OctahedralChain` is the permitted
finite chain substrate for the canonical topology task. The chart/export
extension `Boolean.Cube.PrismaticGeometry.OctahedralSphere` is not part of that
core dependency cone.
-/
lean_lib SurfaceCore where
  srcDir := "lib/SurfaceCore"
  roots := #[`Surface.Core, `Surface.Rotation]
  globs := #[
    .andSubmodules `Surface.Core,
    .andSubmodules `Surface.Rotation
  ]

lean_lib SurfaceRefactor where
  srcDir := "lib/SurfaceRefactor"
  roots := #[`Surface.Refactor]
  globs := #[.andSubmodules `Surface.Refactor]

lean_lib SurfaceAudit where
  srcDir := "lib/SurfaceAudit"
  roots := #[`Surface.Audit]
  globs := #[.andSubmodules `Surface.Audit]

/- Proof-level regression tests are compiled outside canonical source roots. -/
@[test_driver]
lean_lib SurfaceTests where
  srcDir := "tests/lean"
  roots := #[`Surface.Refactor.Tests]

/- `Surface` is the sole default umbrella and owns only `Surface.lean`. -/
@[default_target]
lean_lib Surface where
  srcDir := "lib"
  /-
  The singleton glob owns only `lib/Surface.lean`. Canonical submodules live
  beneath the physically separate `lib/SurfaceCore`, `lib/SurfaceRefactor`,
  and `lib/SurfaceAudit` roots.
  -/
  roots := #[]
  globs := #[.one `Surface]

lean_lib SurfaceGenerated where
  srcDir := "."
  roots := #[
    `Generated.Trial,
    `Generated.NetworkSurgeryGame
  ]

lean_lib SurfaceLegacy where
  srcDir := "."
  roots := #[
    `SurfaceLegacy,
    `Surface.Arithmetic,
    `Surface.Prismatic,
    `Surface.Topology,
    `Surface.Geometry,
    `Surface.Boolean,
    `Surface.Homology,
    `Surface.Hilbert,
    `Surface.Flow,
    `Surface.Kernel,
    `Surface.Spectral,
    `Surface.Legacy,
    `Surface.Foundation,
    `Surface.AST,
    `Surface.Meta,
    `Surface.Incremental,
    `Surface.Presentation
  ]
  /-
  The default one-module glob for every declared root makes Lake register the
  aggregate's complete local import closure. Historical experiments outside
  these roots remain outside this target.
  -/

lean_exe surface_receipt where
  srcDir := "tools"
  root := `SurfaceReceiptMain

lean_exe surface_bridge where
  srcDir := "tools"
  root := `SurfaceBridgeMain

lean_exe surface_index where
  srcDir := "tools"
  root := `SurfaceIndexMain

lean_exe surface_pattern_index where
  srcDir := "tools"
  root := `SurfacePatternIndexMain

lean_exe surface_patch_validate where
  srcDir := "tools"
  root := `SurfacePatchValidateMain

lean_exe surface_refactor_protocol where
  srcDir := "tools"
  root := `SurfaceRefactorProtocolMain

lean_exe surface_syntax_export where
  srcDir := "tools"
  root := `SurfaceSyntaxExportMain

lean_exe surface_transport_conformance where
  srcDir := "tools"
  root := `SurfaceTransportConformanceMain

lean_exe surface_surgery_validate where
  srcDir := "tools"
  root := `SurfaceSurgeryValidateMain

lean_exe surface_network_surgery_conformance where
  srcDir := "tools"
  root := `SurfaceNetworkSurgeryConformanceMain

lean_lib AnalyticNumberTheory where
  srcDir := "lib"
  roots := #[`AnalyticNumberTheory]

lean_lib AnalyticNumberExamples where
  srcDir := "lib"
  roots := #[`AnalyticNumberExamples]

lean_lib AnalyticNumberMathlib where
  srcDir := "lib"
  roots := #[`AnalyticNumberMathlib]

lean_lib Authority where
  srcDir := "lib"
  roots := #[`Authority]

lean_lib Bridge where
  srcDir := "lib"
  roots := #[`Bridge, `NumberBridge]

lean_lib Number where
  srcDir := "lib"
  roots := #[`Number]

lean_lib AnalyticNumber where
  srcDir := "lib"
  roots := #[`AnalyticNumber]

lean_lib Boolean where
  srcDir := "lib"
  roots := #[`Boolean]

lean_lib Presentation where
  srcDir := "lib"
  roots := #[`Presentation]

lean_exe presentation_self_anneal where
  srcDir := "tools"
  root := `PresentationSelfAnnealMain

lean_exe presentation_label_ast where
  srcDir := "tools"
  root := `PresentationLabelAstMain
```
