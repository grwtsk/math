# commuting_units_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae4dce2e90b3f7d12aa3edfd487a0bb9eb972a4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/Audit.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51f4b328-5017-e1ef-74ce-3da9d177ff46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:316d6427-c246-344f-ac09-c52350844b51",
  "kind": "theorem",
  "lexical_name": "commuting_units_consumer",
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
  "slug": "commuting-units-consumer--a40857a4886b8e92946cb0da",
  "source": {
    "blob": "ae4dce2e90b3f7d12aa3edfd487a0bb9eb972a4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 16,
    "path": "GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/Audit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40857a4886b8e92946cb0dab57b85da2e1a8cfddd3b4396071722720775f635",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrence8ba6004f7ec513ead4654959.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:316d6427-c246-344f-ac09-c52350844b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commuting_units_consumer {R : Type u} [CommRing R]
    (c₂ s₂ c₁ s₁ : R) (h₂ : c₂^2+s₂^2=1) (h₁ : c₁^2+s₁^2=1) :
    Commute (rotationUnit c₂ s₂ h₂) (rotationUnit c₁ s₁ h₁) :=
  rotationUnit_commute c₂ s₂ c₁ s₁ h₂ h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Algebra/LinearAlgebra/CommonJ/Checks/Audit__SourceOccurrence8ba6004f7ec513ead4654959.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/Audit.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae4dce2e90b3f7d12aa3edfd487a0bb9eb972a4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
