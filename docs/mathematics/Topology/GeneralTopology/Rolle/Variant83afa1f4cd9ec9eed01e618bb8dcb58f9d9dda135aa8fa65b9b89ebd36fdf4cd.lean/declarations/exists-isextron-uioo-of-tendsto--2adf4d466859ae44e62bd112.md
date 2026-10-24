# exists_isExtrOn_uIoo_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26a2c0eec3cbd9bff6ca13ace15f6464099ca1fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6462d6e2-7428-8bfa-11a9-9a595221b201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64deda85-1c11-69e2-a509-73219c496ff8",
  "kind": "lemma",
  "lexical_name": "exists_isExtrOn_uIoo_of_tendsto",
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
  "slug": "exists-isextron-uioo-of-tendsto--2adf4d466859ae44e62bd112",
  "source": {
    "blob": "26a2c0eec3cbd9bff6ca13ace15f6464099ca1fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2adf4d466859ae44e62bd11299a4bc1a828cf5b1bb2da6198a63bf25e90062ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64deda85-1c11-69e2-a509-73219c496ff8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isExtrOn_uIoo_of_tendsto (hab : a ≠ b) (hfc : ContinuousOn f (uIoo a b))
    (ha : Tendsto f (𝓝[uIoo a b] a) (𝓝 l)) (hb : Tendsto f (𝓝[uIoo a b] b) (𝓝 l)) :
    ∃ c ∈ uIoo a b, IsExtrOn f (uIoo a b) c := by
  have h : EqOn (extendFrom (uIoo a b) f) f (uIoo a b) := extendFrom_extends hfc
  obtain ⟨c, hc, hfc⟩ : ∃ c ∈ uIoo a b, IsExtrOn (extendFrom (uIoo a b) f) (uIcc a b) c :=
    exists_uIoo_isExtrOn_uIcc hab (continuousOn_uIcc_extendFrom_uIoo hfc ha hb)
      ((eq_lim_at_left_extendFrom_uIoo hab ha).trans (eq_lim_at_right_extendFrom_uIoo hab hb).symm)
  exact ⟨c, hc, (hfc.on_subset uIoo_subset_uIcc_self).congr h (h hc)⟩

/-- If a function `f` is continuous on an unordered open interval
and tends to the same value at its endpoints,
then it has a local extremum on this unordered open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rolle/Variant83afa1f4cd9ec9eed01e618bb8dcb58f9d9dda135aa8fa65b9b89ebd36fdf4cd.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26a2c0eec3cbd9bff6ca13ace15f6464099ca1fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
