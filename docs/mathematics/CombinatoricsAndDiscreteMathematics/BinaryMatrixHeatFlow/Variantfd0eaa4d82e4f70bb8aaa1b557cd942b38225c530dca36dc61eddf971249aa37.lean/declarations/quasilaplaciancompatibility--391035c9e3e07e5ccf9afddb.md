# QuasiLaplacianCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e24f0e66d9deacddb7cd9a044e18ed8ee61dc6cd757b01a4c06b638e736505fe",
  "kind": "structure",
  "lexical_name": "QuasiLaplacianCompatibility",
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
  "slug": "quasilaplaciancompatibility--391035c9e3e07e5ccf9afddb",
  "source": {
    "blob": "264e701eb1940a933fc7eda0dba44817cf56cd19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:391035c9e3e07e5ccf9afddba46615fa662dff942eb117cce7b0ed9ef54d914b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e24f0e66d9deacddb7cd9a044e18ed8ee61dc6cd757b01a4c06b638e736505fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuasiLaplacianCompatibility
    (Coarse Fine : Type)
    [Fintype Coarse]
    [Fintype Fine] where
  zoom : (Fine → ℝ) → Coarse → ℝ
  Lc : (Coarse → ℝ) → Coarse → ℝ
  Lf : (Fine → ℝ) → Fine → ℝ
  error : ℝ
  error_nonneg : 0 ≤ error
  zoom_sub :
    ∀ f g, zoom (fun x => f x - g x) = fun y => zoom f y - zoom g y
  zoom_const_mul :
    ∀ a f, zoom (fun x => a * f x) = fun y => a * zoom f y
  quasi_commutes :
    ∀ f, ‖zoom (Lf f) - Lc (zoom f)‖ ≤ error * ‖f‖

namespace QuasiLaplacianCompatibility

variable
    {Coarse Fine : Type}
    [Fintype Coarse]
    [Fintype Fine]
    (Q : QuasiLaplacianCompatibility Coarse Fine)

/-- The Laplacian commutator controlled by a quasi-compatibility datum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264e701eb1940a933fc7eda0dba44817cf56cd19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
