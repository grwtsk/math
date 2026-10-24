# mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4109d8d2d8a52b6e268d41b5f9a016917868b37265c466f9835a6e0dd07c3119",
  "kind": "def",
  "lexical_name": "mul",
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
  "slug": "mul--1e79837fe1e7c3cbdaf6fe27",
  "source": {
    "blob": "48625f2f31dd3d25317df6a4a4b43931ae08ecc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 526,
    "path": "GRWTSK/Topology/GeneralTopology/Path/Variant75bc483c44e78b9337d19b2af9d29512e1f5802a89e3987a1deefa977da01b50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e79837fe1e7c3cbdaf6fe274dfe0f01825a377484ba67fed7cb17f28e43d967",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Path/Variant75bc483c44e78b9337d19b2af9d29512e1f5802a89e3987a1deefa977da01b50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4109d8d2d8a52b6e268d41b5f9a016917868b37265c466f9835a6e0dd07c3119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mul [Mul X] [ContinuousMul X] {a₁ b₁ a₂ b₂ : X} (γ₁ : Path a₁ b₁) (γ₂ : Path a₂ b₂) :
    Path (a₁ * a₂) (b₁ * b₂) :=
  (γ₁.prod γ₂).map continuous_mul

/-- Pointwise inversion of paths in a topological group. -/
@[to_additive (attr := simps!) /-- Pointwise negation of paths in a topological group. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Path/Variant75bc483c44e78b9337d19b2af9d29512e1f5802a89e3987a1deefa977da01b50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Path/Variant75bc483c44e78b9337d19b2af9d29512e1f5802a89e3987a1deefa977da01b50.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48625f2f31dd3d25317df6a4a4b43931ae08ecc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
