# Frequently.forall_exists_of_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78a7172c9a4767ae8952dc879f3af8c0a529d01f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3edab954-2f39-b14a-0c20-41490ad08485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d63fc440-39f9-e6b7-f0f4-d41a8ea65c7a",
  "kind": "theorem",
  "lexical_name": "Frequently.forall_exists_of_atTop",
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
  "slug": "frequently-forall-exists-of-attop--92c1122256558c0254797da6",
  "source": {
    "blob": "78a7172c9a4767ae8952dc879f3af8c0a529d01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92c1122256558c0254797da6d083ada7c6eda6e81805f12c423f0ba68a977eb8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d63fc440-39f9-e6b7-f0f4-d41a8ea65c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Frequently.forall_exists_of_atTop [Preorder α] {p : α → Prop}
    (h : ∃ᶠ x in atTop, p x) (a : α) : ∃ b ≥ a, p b := by
  rw [Filter.Frequently] at h
  contrapose! h
  exact (eventually_ge_atTop a).mono h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant2a512091da00bd267f418e912133435a7a1cc7f7b12ef0305085a011ac24b91b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a7172c9a4767ae8952dc879f3af8c0a529d01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
