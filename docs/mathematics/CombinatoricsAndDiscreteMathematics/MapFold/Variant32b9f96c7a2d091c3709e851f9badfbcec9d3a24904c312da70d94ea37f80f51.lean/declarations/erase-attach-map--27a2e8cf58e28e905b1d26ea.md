# erase_attach_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0714a00d2b16cf54a45b25bf0de9979f4fd7bfb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd38b5cb-c059-cea2-090f-9441c2e153d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba53d953-213f-cdc2-534a-5d50b6287ee3",
  "kind": "lemma",
  "lexical_name": "erase_attach_map",
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
  "slug": "erase-attach-map--27a2e8cf58e28e905b1d26ea",
  "source": {
    "blob": "0714a00d2b16cf54a45b25bf0de9979f4fd7bfb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a2e8cf58e28e905b1d26ea67b9b17ef387f2739ad62493eeaa884650bca25c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba53d953-213f-cdc2-534a-5d50b6287ee3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma erase_attach_map (s : Multiset α) (f : α → β) (x : {x // x ∈ s}) :
    (s.attach.erase x).map (fun j : {x // x ∈ s} ↦ f j) = (s.erase x).map f := by
  simp only [← Function.comp_apply (f := f)]
  rw [← map_map, erase_attach_map_val]

end

/-! ### Subtraction -/

section sub
variable [DecidableEq α] {s t : Multiset α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variant32b9f96c7a2d091c3709e851f9badfbcec9d3a24904c312da70d94ea37f80f51.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0714a00d2b16cf54a45b25bf0de9979f4fd7bfb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
