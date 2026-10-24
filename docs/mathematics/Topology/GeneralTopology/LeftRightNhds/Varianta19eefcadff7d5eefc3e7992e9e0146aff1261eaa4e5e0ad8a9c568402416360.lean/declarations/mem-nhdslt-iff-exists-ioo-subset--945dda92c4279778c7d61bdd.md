# mem_nhdsLT_iff_exists_Ioo_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bb2599064b24260bbcb9b8119087d7c943c6ebc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcda5bb2-78c6-3642-ed71-adb6df9c76ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c08f6dfb-0580-cedf-90e7-620734384c4e",
  "kind": "theorem",
  "lexical_name": "mem_nhdsLT_iff_exists_Ioo_subset",
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
  "slug": "mem-nhdslt-iff-exists-ioo-subset--945dda92c4279778c7d61bdd",
  "source": {
    "blob": "5bb2599064b24260bbcb9b8119087d7c943c6ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:945dda92c4279778c7d61bdd1a952cb576121dd81d6ef7b9953e8c6656d3840f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c08f6dfb-0580-cedf-90e7-620734384c4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_nhdsLT_iff_exists_Ioo_subset [NoMinOrder α] {a : α} {s : Set α} :
    s ∈ 𝓝[<] a ↔ ∃ l ∈ Iio a, Ioo l a ⊆ s :=
  let ⟨_, h⟩ := exists_lt a
  mem_nhdsLT_iff_exists_Ioo_subset' h

@[deprecated (since := "2024-12-22")]
alias mem_nhdsWithin_Iio_iff_exists_Ioo_subset := mem_nhdsLT_iff_exists_Ioo_subset

/-- A set is a neighborhood of `a` within `(-∞, a)` if and only if it contains an interval `[l, a)`
with `l < a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2599064b24260bbcb9b8119087d7c943c6ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
