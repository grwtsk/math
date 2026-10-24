# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f1435a2-b3a3-f7dd-2860-dc998dc66850",
  "kind": "theorem",
  "lexical_name": "comp_assoc",
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
  "slug": "comp-assoc--f0c37d85c2ed87cf76713d5e",
  "source": {
    "blob": "25363767b52946564ba4628d4add9ebbaea884ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 121,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c37d85c2ed87cf76713d5ef10aed3696569e2b761781707ea023ac015419c1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f1435a2-b3a3-f7dd-2860-dc998dc66850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_assoc (h : Q₃ →qᵢ Q₄) (g : Q₂ →qᵢ Q₃) (f : Q₁ →qᵢ Q₂) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  ext fun _ => rfl

/-- There is a zero map from any module with the zero form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variantc77d8404536bf1e30dc0ce4217b10dad4809b399d17f400da1bc46d60fcb97ae.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25363767b52946564ba4628d4add9ebbaea884ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
