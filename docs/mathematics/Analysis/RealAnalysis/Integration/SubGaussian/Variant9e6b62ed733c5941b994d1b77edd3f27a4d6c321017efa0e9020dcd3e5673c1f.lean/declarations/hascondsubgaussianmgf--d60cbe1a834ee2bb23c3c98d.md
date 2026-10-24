# HasCondSubgaussianMGF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29ec75a40c2dc8599311ef31d40c7f7705db96782af861f30fb79c63be1c20f7",
  "kind": "def",
  "lexical_name": "HasCondSubgaussianMGF",
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
  "slug": "hascondsubgaussianmgf--d60cbe1a834ee2bb23c3c98d",
  "source": {
    "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 400,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d60cbe1a834ee2bb23c3c98de8aaddce307b5b8cf995b2f98b7c4dc9fff56bed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29ec75a40c2dc8599311ef31d40c7f7705db96782af861f30fb79c63be1c20f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasCondSubgaussianMGF (X : Ω → ℝ) (c : ℝ≥0)
    (μ : Measure Ω := by volume_tac) [IsFiniteMeasure μ] : Prop :=
  Kernel.HasSubgaussianMGF X c (condExpKernel μ m) (μ.trim hm)

namespace HasCondSubgaussianMGF

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
