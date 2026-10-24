# arctan_add_arctan_lt_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f7464f734096ef893093790f9a2fcd2b79c349",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f11a715b-2172-31d9-3c60-91c3b9e84e70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b0055d9-3166-cc0f-d85e-b49aa9df0c18",
  "kind": "lemma",
  "lexical_name": "arctan_add_arctan_lt_pi_div_two",
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
  "slug": "arctan-add-arctan-lt-pi-div-two--0086be78140918bbb5000c2c",
  "source": {
    "blob": "d8f7464f734096ef893093790f9a2fcd2b79c349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0086be78140918bbb5000c2c87439d86682ddea00b03bf3a54d25a2979fecc52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0055d9-3166-cc0f-d85e-b49aa9df0c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma arctan_add_arctan_lt_pi_div_two (h : x * y < 1) : arctan x + arctan y < π / 2 := by
  rcases le_or_gt y 0 with hy | hy
  · rw [← add_zero (π / 2), ← arctan_zero]
    exact add_lt_add_of_lt_of_le (arctan_lt_pi_div_two _) (tanOrderIso.symm.monotone hy)
  · rw [← lt_div_iff₀ hy, ← inv_eq_one_div] at h
    replace h : arctan x < arctan y⁻¹ := tanOrderIso.symm.strictMono h
    rwa [arctan_inv_of_pos hy, lt_tsub_iff_right] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variantde56b57eaef9d532e4f9c639ea83b7935555ecadb42cfd9d07f91f18f9b1af53.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f7464f734096ef893093790f9a2fcd2b79c349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
