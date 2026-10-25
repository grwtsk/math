# eq_vadd_iff_vsub_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18421081-eb22-6b7f-4be9-bca94f08396c",
  "kind": "theorem",
  "lexical_name": "eq_vadd_iff_vsub_eq",
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
  "slug": "eq-vadd-iff-vsub-eq--23420b7dc92a7c0cb3e90467",
  "source": {
    "blob": "a9b3b8958624d318bdc6b57a463df6b9f58418aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant47ec1fcfd9ca7bd18332c8a215eae257767bff49f3d68d03a96c2b97e6e03e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23420b7dc92a7c0cb3e904671fad92966144f4c57b690ed602eda9bc4a3b8593",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant47ec1fcfd9ca7bd18332c8a215eae257767bff49f3d68d03a96c2b97e6e03e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18421081-eb22-6b7f-4be9-bca94f08396c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_vadd_iff_vsub_eq (p1 : P) (g : G) (p2 : P) : p1 = g +ᵥ p2 ↔ p1 -ᵥ p2 = g :=
  ⟨fun h => h.symm ▸ vadd_vsub _ _, fun h => h ▸ (vsub_vadd _ _).symm⟩
#align eq_vadd_iff_vsub_eq eq_vadd_iff_vsub_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant47ec1fcfd9ca7bd18332c8a215eae257767bff49f3d68d03a96c2b97e6e03e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AddTorsor/Variant47ec1fcfd9ca7bd18332c8a215eae257767bff49f3d68d03a96c2b97e6e03e29.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9b3b8958624d318bdc6b57a463df6b9f58418aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
