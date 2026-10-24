# groupoid_of_pregroupoid_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5c08996-b2f8-55bd-f4e4-eea59c23d4da",
  "kind": "theorem",
  "lexical_name": "groupoid_of_pregroupoid_le",
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
  "slug": "groupoid-of-pregroupoid-le--0700b34b40ab71d07380f8c2",
  "source": {
    "blob": "aa88b98ac85accab9df7b4be012ac92bd37c4ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0700b34b40ab71d07380f8c24d74658ca549d3b5ee14e275c26f57ffe93e1a3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c08996-b2f8-55bd-f4e4-eea59c23d4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem groupoid_of_pregroupoid_le (PG₁ PG₂ : Pregroupoid H)
    (h : ∀ f s, PG₁.property f s → PG₂.property f s) : PG₁.groupoid ≤ PG₂.groupoid := by
  refine StructureGroupoid.le_iff.2 fun e he ↦ ?_
  rw [mem_groupoid_of_pregroupoid] at he ⊢
  exact ⟨h _ _ he.1, h _ _ he.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa88b98ac85accab9df7b4be012ac92bd37c4ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
