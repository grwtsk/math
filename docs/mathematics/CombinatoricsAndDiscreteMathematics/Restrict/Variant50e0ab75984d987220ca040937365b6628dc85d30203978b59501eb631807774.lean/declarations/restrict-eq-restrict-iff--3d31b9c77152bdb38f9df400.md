# restrict_eq_restrict_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "245149ebad2f6e9bc434db4a967fe5291f7a5819",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbed5a9d-577c-e177-a0ce-4ed36212dce6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcd3de3d-797f-275c-52c9-80de9727aac4",
  "kind": "theorem",
  "lexical_name": "restrict_eq_restrict_iff",
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
  "slug": "restrict-eq-restrict-iff--3d31b9c77152bdb38f9df400",
  "source": {
    "blob": "245149ebad2f6e9bc434db4a967fe5291f7a5819",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d31b9c77152bdb38f9df4009aa767cdf6cf0619b47b986f219f10fd8fe00ace",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcd3de3d-797f-275c-52c9-80de9727aac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_eq_restrict_iff (M M' : Matroid α) (X : Set α) :
    M ↾ X = M' ↾ X ↔ ∀ I, I ⊆ X → (M.Indep I ↔ M'.Indep I) := by
  refine ⟨fun h I hIX ↦ ?_, fun h ↦ ext_indep rfl fun I (hI : I ⊆ X) ↦ ?_⟩
  · rw [← and_iff_left (a := (M.Indep I)) hIX, ← and_iff_left (a := (M'.Indep I)) hIX,
      ← restrict_indep_iff, h, restrict_indep_iff]
  rw [restrict_indep_iff, and_iff_left hI, restrict_indep_iff, and_iff_left hI, h _ hI]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Restrict/Variant50e0ab75984d987220ca040937365b6628dc85d30203978b59501eb631807774.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245149ebad2f6e9bc434db4a967fe5291f7a5819` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
