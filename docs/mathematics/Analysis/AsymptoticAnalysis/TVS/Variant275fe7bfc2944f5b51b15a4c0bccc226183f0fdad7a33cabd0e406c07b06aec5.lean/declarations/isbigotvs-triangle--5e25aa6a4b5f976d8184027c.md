# IsBigOTVS.triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8adefea9-4ad3-d0de-88aa-ebdb59d7ccbb",
  "kind": "theorem",
  "lexical_name": "IsBigOTVS.triangle",
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
  "slug": "isbigotvs-triangle--5e25aa6a4b5f976d8184027c",
  "source": {
    "blob": "e63d2fe0ba18b4bef643d14ef335e32f12d9de78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 539,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e25aa6a4b5f976d8184027c0e3efd86a235d4603fc8df2afdf0d9aa9a452e97",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8adefea9-4ad3-d0de-88aa-ebdb59d7ccbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigOTVS.triangle [ContinuousAdd E] [ContinuousSMul 𝕜 E]
    {f₁ f₂ f₃ : α → E} {g : α → F} {l : Filter α}
    (h₁ : (f₁ - f₂) =O[𝕜; l] g) (h₂ : (f₂ - f₃) =O[𝕜; l] g) : (f₁ - f₃) =O[𝕜; l] g := by
  simpa using h₁.add h₂

section NegLeft

variable [ContinuousNeg E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63d2fe0ba18b4bef643d14ef335e32f12d9de78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
