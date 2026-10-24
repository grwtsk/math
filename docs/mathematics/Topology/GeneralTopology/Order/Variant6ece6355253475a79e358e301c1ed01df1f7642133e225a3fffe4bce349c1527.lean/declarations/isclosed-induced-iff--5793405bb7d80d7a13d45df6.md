# isClosed_induced_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bb7f454ae5677054c1bf642953a47e5a1a53560",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d4b3a59-3990-e7ec-92ec-8e735df58f2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d2b6051-5f51-503b-7e52-739e0300ac33",
  "kind": "theorem",
  "lexical_name": "isClosed_induced_iff",
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
  "slug": "isclosed-induced-iff--5793405bb7d80d7a13d45df6",
  "source": {
    "blob": "5bb7f454ae5677054c1bf642953a47e5a1a53560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 345,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5793405bb7d80d7a13d45df667ee33b424f3c2525642e84cb18a85a9c0d8388c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d2b6051-5f51-503b-7e52-739e0300ac33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_induced_iff [t : TopologicalSpace β] {s : Set α} {f : α → β} :
    IsClosed[t.induced f] s ↔ ∃ t, IsClosed t ∧ f ⁻¹' t = s := by
  letI := t.induced f
  simp only [← isOpen_compl_iff, isOpen_induced_iff]
  exact compl_surjective.exists.trans (by simp only [preimage_compl, compl_inj_iff])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb7f454ae5677054c1bf642953a47e5a1a53560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
