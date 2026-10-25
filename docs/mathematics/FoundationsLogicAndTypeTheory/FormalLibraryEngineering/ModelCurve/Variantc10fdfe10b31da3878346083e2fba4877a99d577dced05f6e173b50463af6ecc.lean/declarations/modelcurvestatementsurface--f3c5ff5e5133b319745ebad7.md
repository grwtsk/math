# modelCurveStatementSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f1a0b4915789fbc233cb8cfb77bd0c28efeac654ede71e174a014b62c215ab6",
  "kind": "def",
  "lexical_name": "modelCurveStatementSurface",
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
  "slug": "modelcurvestatementsurface--f3c5ff5e5133b319745ebad7",
  "source": {
    "blob": "0ffbcc86aab3fbd087b4f5c8cdd3657cb64426d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelCurve/Variantc10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3c5ff5e5133b319745ebad748bfec87f030dde628b8bf428586af224d2125df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelCurve/Variantc10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f1a0b4915789fbc233cb8cfb77bd0c28efeac654ede71e174a014b62c215ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def modelCurveStatementSurface : Prop :=
  ∀ {nu p epsilon delta : ℝ},
    0 < nu →
    2 ≤ p →
    p ≤ 6 →
    0 < epsilon →
    0 < delta →
    delta ≤ 1 →
    ∀ g : ℝ → ℂ,
      IntegrableOnUnitInterval g →
      ∃ constant : ℝ,
        0 < constant ∧
          DecouplingInequality
            (fun t : ℝ => t)
            (Curves.modelCurvePhi nu)
            p epsilon delta constant g

/--
Theorem 1.1 surface for arXiv:1812.04760.

This definition is intentionally a theorem surface, not a proof of the
decoupling inequality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelCurve/Variantc10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModelCurve/Variantc10fdfe10b31da3878346083e2fba4877a99d577dced05f6e173b50463af6ecc.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ffbcc86aab3fbd087b4f5c8cdd3657cb64426d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
