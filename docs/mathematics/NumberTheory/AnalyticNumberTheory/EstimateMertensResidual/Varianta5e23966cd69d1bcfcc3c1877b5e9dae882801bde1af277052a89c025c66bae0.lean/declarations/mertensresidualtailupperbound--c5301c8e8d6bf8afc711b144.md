# MertensResidualTailUpperBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f614423dc29fa4ee3782dd9eb5e07a20c664d08df6a9eb547a954b5c5676cceb",
  "kind": "def",
  "lexical_name": "MertensResidualTailUpperBound",
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
  "slug": "mertensresidualtailupperbound--c5301c8e8d6bf8afc711b144",
  "source": {
    "blob": "750554c1d530843e4128c0d953740b524ebdbeca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 257,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5301c8e8d6bf8afc711b144ed1b43fa133cd2d91c9ac94952eeec0f270d1e0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f614423dc29fa4ee3782dd9eb5e07a20c664d08df6a9eb547a954b5c5676cceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MertensResidualTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧
    ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ D

/-- Residual upper control gives the earlier prime-smooth defect bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `750554c1d530843e4128c0d953740b524ebdbeca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
