# ContDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:571a87456237784340f2de306d0e5de528e1b4d57fc2745e8759a5228df35182",
  "kind": "def",
  "lexical_name": "ContDiff",
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
  "slug": "contdiff--6cdb0efe46ebf9a53829bafd",
  "source": {
    "blob": "c838c642f870cc3283188bf6ef5a0ed8c37aa2dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1414,
    "line": 1408,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cdb0efe46ebf9a53829bafd9e0624b59e114adb9f9b8b781a58ad5d9a0bb629",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:571a87456237784340f2de306d0e5de528e1b4d57fc2745e8759a5228df35182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1408–1414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContDiff (n : ℕ∞) (f : E → F) : Prop :=
  ∃ p : E → FormalMultilinearSeries 𝕜 E F, HasFTaylorSeriesUpTo n f p
#align cont_diff ContDiff

variable {𝕜}

/-- If `f` has a Taylor series up to `n`, then it is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant7f9602d5be3d3b1b2d7e863dc20d3b35b3c8eae220bb748df6805b0708dcb673.lean#L1408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c838c642f870cc3283188bf6ef5a0ed8c37aa2dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
