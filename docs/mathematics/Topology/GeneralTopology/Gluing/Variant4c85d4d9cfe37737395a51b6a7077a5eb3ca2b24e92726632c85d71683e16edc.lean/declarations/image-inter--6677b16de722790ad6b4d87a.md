# image_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a46934351b58f0379216e854e2a13907ab7297b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c1b4adf-5027-18bc-17d2-74a533b03887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:505eee1e-ec35-3b40-2671-83e4a9ca4b1c",
  "kind": "theorem",
  "lexical_name": "image_inter",
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
  "slug": "image-inter--6677b16de722790ad6b4d87a",
  "source": {
    "blob": "9a46934351b58f0379216e854e2a13907ab7297b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6677b16de722790ad6b4d87a429eaf5016a3700c266bc7d85a378d01e3e70419",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:505eee1e-ec35-3b40-2671-83e4a9ca4b1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_inter (i j : D.J) :
    Set.range (𝖣.ι i) ∩ Set.range (𝖣.ι j) = Set.range (D.f i j ≫ 𝖣.ι _) := by
  ext x
  constructor
  · rintro ⟨⟨x₁, eq₁⟩, ⟨x₂, eq₂⟩⟩
    obtain ⟨y, e₁, -⟩ := (D.ι_eq_iff_rel _ _ _ _).mp (eq₁.trans eq₂.symm)
    · subst eq₁
      exact ⟨y, by simp [e₁]⟩
  · rintro ⟨x, hx⟩
    refine ⟨⟨D.f i j x, hx⟩, ⟨D.f j i (D.t _ _ x), ?_⟩⟩
    rw [D.glue_condition_apply]
    exact hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant4c85d4d9cfe37737395a51b6a7077a5eb3ca2b24e92726632c85d71683e16edc.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a46934351b58f0379216e854e2a13907ab7297b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
