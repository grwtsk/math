# zeroKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1906e0694390593a9f3249afd437e329aee04e246d5cf271302da232cacc6484",
  "kind": "def",
  "lexical_name": "zeroKernel",
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
  "slug": "zerokernel--72dc20d4fa8aff9adba1bb62",
  "source": {
    "blob": "177341a7b78ecc986f9d34b617b48df9690f97e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 62,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72dc20d4fa8aff9adba1bb62cf84ecbb12d57c7d47f1a9c900aebfbebfbc1afc",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1906e0694390593a9f3249afd437e329aee04e246d5cf271302da232cacc6484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroKernel : Kernel.PositiveKernel Unit where
  matrix := 0
  positiveSemidefinite := Matrix.PosSemidef.zero

/-- Every raw vector belongs to the radical of the zero kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177341a7b78ecc986f9d34b617b48df9690f97e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
