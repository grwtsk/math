# abs_sub_le_sub_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f9fd68d4e094bdd90370796d90ad12605cb8497",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:014e642d-4f86-23b8-a31e-86cfa716eeef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:500977c3-c5d1-84e8-900a-48556f493588",
  "kind": "lemma",
  "lexical_name": "abs_sub_le_sub_of_le",
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
  "slug": "abs-sub-le-sub-of-le--ba1020c8ce8bb039527b4314",
  "source": {
    "blob": "8f9fd68d4e094bdd90370796d90ad12605cb8497",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba1020c8ce8bb039527b4314b473cf2b1a9ccc9aa3e24cad1b4c3d36113fccfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:500977c3-c5d1-84e8-900a-48556f493588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_sub_le_sub_of_le {f : α → ℝ} {s : Set α} (hf : LocallyBoundedVariationOn f s)
    {a b c : α} (as : a ∈ s) (bs : b ∈ s) (cs : c ∈ s) (bc : b ≤ c) :
    |f c - f b| ≤ variationOnFromTo f s a c - variationOnFromTo f s a b := calc
  _ = dist (f b) (f c) := by rw [dist_comm, Real.dist_eq]
  _ ≤ variationOnFromTo f s b c := by
    rw [variationOnFromTo.eq_of_le f s bc, dist_edist]
    apply ENNReal.toReal_mono (hf b c bs cs)
    apply eVariationOn.edist_le f
    exacts [⟨bs, le_rfl, bc⟩, ⟨cs, bc, le_rfl⟩]
  _ = variationOnFromTo f s a c - variationOnFromTo f s a b := by
    rw [← variationOnFromTo.add hf as bs cs, add_sub_cancel_left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variantd3c7af9a617a16e6d8a99fe3ef5b4b9b6b3c4c0a44b5949c30249a9bb5487f9e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9fd68d4e094bdd90370796d90ad12605cb8497` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
