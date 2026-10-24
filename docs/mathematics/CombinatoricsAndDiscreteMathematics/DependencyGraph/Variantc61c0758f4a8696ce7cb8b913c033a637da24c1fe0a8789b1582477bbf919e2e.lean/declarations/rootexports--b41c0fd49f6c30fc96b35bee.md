# RootExports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5a216b794eebbbdff3b2e4b0d201efb1695cd9b3b2827ee6bbd57ea867ac3a4",
  "kind": "def",
  "lexical_name": "RootExports",
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
  "slug": "rootexports--b41c0fd49f6c30fc96b35bee",
  "source": {
    "blob": "e27da6af2452f986a7fce03825b9d0ae741cfbdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 195,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b41c0fd49f6c30fc96b35bee0d25ac17b017955e9de49246499640f36522b0bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5a216b794eebbbdff3b2e4b0d201efb1695cd9b3b2827ee6bbd57ea867ac3a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RootExports
    {G : DependencyGraph}
    (t : Tenant G)
    (Exports : G.ProjectId → Type v) :=
  ∀ p, p ∈ t.roots → Exports p

/-- Restrict a full tenant environment to its roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27da6af2452f986a7fce03825b9d0ae741cfbdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
