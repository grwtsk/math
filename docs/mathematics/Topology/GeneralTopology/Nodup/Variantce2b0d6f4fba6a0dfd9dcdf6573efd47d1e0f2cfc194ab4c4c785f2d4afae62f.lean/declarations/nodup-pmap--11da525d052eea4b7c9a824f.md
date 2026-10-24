# Nodup.pmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e1e57eb-4d05-02d6-1d0f-5e5dd5d4587c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b189473e-49bb-7743-7e61-915652b0da25",
  "kind": "theorem",
  "lexical_name": "Nodup.pmap",
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
  "slug": "nodup-pmap--11da525d052eea4b7c9a824f",
  "source": {
    "blob": "147ed8a497c50fa83015d166c92b94f8557240ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11da525d052eea4b7c9a824fff347ac80a14f64c2b56923edac2ceed88035957",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b189473e-49bb-7743-7e61-915652b0da25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.pmap {p : α → Prop} {f : ∀ a, p a → β} {l : List α} {H}
    (hf : ∀ a ha b hb, f a ha = f b hb → a = b) (h : Nodup l) : Nodup (pmap f l H) := by
  rw [pmap_eq_map_attach]
  exact h.attach.map fun ⟨a, ha⟩ ⟨b, hb⟩ h => by congr; exact hf a (H _ ha) b (H _ hb) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nodup/Variantce2b0d6f4fba6a0dfd9dcdf6573efd47d1e0f2cfc194ab4c4c785f2d4afae62f.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147ed8a497c50fa83015d166c92b94f8557240ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
