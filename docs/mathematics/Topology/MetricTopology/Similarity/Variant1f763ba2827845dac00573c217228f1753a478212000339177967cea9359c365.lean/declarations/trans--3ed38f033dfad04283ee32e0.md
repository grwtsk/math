# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dfe75be-b455-536f-304d-5cba62c059bc",
  "kind": "lemma",
  "lexical_name": "trans",
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
  "slug": "trans--3ed38f033dfad04283ee32e0",
  "source": {
    "blob": "ab890f4deded1822842b0a8244cca9a509f203b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed38f033dfad04283ee32e0317180e342ec1e2d731e2b35bd36a25f92c58b7e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dfe75be-b455-536f-304d-5cba62c059bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[trans] protected lemma trans (h₁ : v₁ ∼ v₂) (h₂ : v₂ ∼ v₃) : v₁ ∼ v₃ := by
  rcases h₁ with ⟨r₁, hr₁, h₁⟩; rcases h₂ with ⟨r₂, hr₂, h₂⟩
  refine ⟨r₁ * r₂, mul_ne_zero hr₁ hr₂, fun _ _ => ?_⟩
  rw [ENNReal.coe_mul, mul_assoc, h₁, h₂]

/-- Change the index set ι to an index ι' that maps to ι. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Similarity/Variant1f763ba2827845dac00573c217228f1753a478212000339177967cea9359c365.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab890f4deded1822842b0a8244cca9a509f203b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
