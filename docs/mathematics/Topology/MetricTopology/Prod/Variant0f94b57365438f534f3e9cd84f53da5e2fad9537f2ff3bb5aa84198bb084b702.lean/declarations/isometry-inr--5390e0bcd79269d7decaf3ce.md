# Isometry.inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea3f380cb7f3b7bbcc7ed001e6194000484a44925b6c538d21ba0e49b0afb0f0",
  "kind": "def",
  "lexical_name": "Isometry.inr",
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
  "slug": "isometry-inr--5390e0bcd79269d7decaf3ce",
  "source": {
    "blob": "079ab8787526947723b72f417daf569188f7b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 73,
    "path": "GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5390e0bcd79269d7decaf3ce434a498b0f066637ed30fc2e3cf30016c36ed606",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea3f380cb7f3b7bbcc7ed001e6194000484a44925b6c538d21ba0e49b0afb0f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Isometry.inr (Q₁ : QuadraticMap R M₁ P) (Q₂ : QuadraticMap R M₂ P) : Q₂ →qᵢ (Q₁.prod Q₂) where
  toLinearMap := LinearMap.inr R _ _
  map_app' m₁ := by simp

variable (M₂) in
/-- `LinearMap.fst` as an isometry, when the second space has the zero quadratic form. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Prod/Variant0f94b57365438f534f3e9cd84f53da5e2fad9537f2ff3bb5aa84198bb084b702.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `079ab8787526947723b72f417daf569188f7b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
