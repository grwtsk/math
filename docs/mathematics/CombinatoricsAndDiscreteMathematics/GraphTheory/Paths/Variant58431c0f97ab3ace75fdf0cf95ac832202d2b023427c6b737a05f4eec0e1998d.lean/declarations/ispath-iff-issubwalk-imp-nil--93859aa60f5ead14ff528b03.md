# isPath_iff_isSubwalk_imp_nil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00cdc01c08911f51e54db8dbdcf5cb318c16e500",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 665,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:56d61975-e002-09b9-bde4-88c7c63da82a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbf8bf53-d91d-5819-5912-1ba0e1df1021",
  "kind": "theorem",
  "lexical_name": "isPath_iff_isSubwalk_imp_nil",
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
  "slug": "ispath-iff-issubwalk-imp-nil--93859aa60f5ead14ff528b03",
  "source": {
    "blob": "00cdc01c08911f51e54db8dbdcf5cb318c16e500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 665,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93859aa60f5ead14ff528b0338d3e86ea09ec8dd3f24c27c064837cd1cbb4e70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbf8bf53-d91d-5819-5912-1ba0e1df1021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPath_iff_isSubwalk_imp_nil {u v} {p : G.Walk u v} :
    p.IsPath ↔ ∀ (v : V) (w : G.Walk v v), w.IsSubwalk p → w.Nil := by
  refine ⟨fun hp v w hwp ↦ ?_, fun h ↦ .mk' ?_⟩
  · simp [w.isPath_iff_nil.mp <| isPath_of_isSubwalk hwp hp]
  · refine List.pairwise_iff_getElem.mpr fun i j _ _ _ _ ↦ ?_
    let p' := p.take j |>.drop i
    have : ¬p'.Nil := by grind [nil_drop_iff, take_length]
    have : p'.IsSubwalk p := isSubwalk_drop _ i |>.trans <| p.isSubwalk_take j
    grind [take_getVert, getVert_eq_support_getElem]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Paths/Variant58431c0f97ab3ace75fdf0cf95ac832202d2b023427c6b737a05f4eec0e1998d.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00cdc01c08911f51e54db8dbdcf5cb318c16e500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
