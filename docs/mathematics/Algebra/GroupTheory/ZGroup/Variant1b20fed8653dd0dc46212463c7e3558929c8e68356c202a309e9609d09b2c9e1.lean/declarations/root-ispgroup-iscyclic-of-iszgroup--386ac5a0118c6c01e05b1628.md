# _root_.IsPGroup.isCyclic_of_isZGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d17c801-75a6-6bda-0f13-b933595ad613",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:095951e1-84f6-def9-d495-bff9a4e8f1ea",
  "kind": "theorem",
  "lexical_name": "_root_.IsPGroup.isCyclic_of_isZGroup",
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
  "slug": "root-ispgroup-iscyclic-of-iszgroup--386ac5a0118c6c01e05b1628",
  "source": {
    "blob": "a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:386ac5a0118c6c01e05b162880f041be52a297e08763b83dc6dbe3903a4c927c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095951e1-84f6-def9-d495-bff9a4e8f1ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsPGroup.isCyclic_of_isZGroup [IsZGroup G] {p : ℕ} [Fact p.Prime]
    {P : Subgroup G} (hP : IsPGroup p P) : IsCyclic P := by
  obtain ⟨Q, hQ⟩ := hP.exists_le_sylow
  exact Subgroup.isCyclic_of_le hQ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant1b20fed8653dd0dc46212463c7e3558929c8e68356c202a309e9609d09b2c9e1.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a91576f8eb05c5858a7b2f5cf1a6ca10b4aebf55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
