# sum_map_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04badc18840eb45f99fbb257b7b53838926021a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a53c3e4d0fbbf9dbefc4b8be46a03fb276250a79942091ee3d9649bfaa6ec6b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03fc60a2-927e-731a-078b-06a3813afa48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10c8a69d-91e4-6689-09c7-75526a225c21",
  "kind": "theorem",
  "lexical_name": "sum_map_tsub",
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
  "slug": "sum-map-tsub--b6618d714921091daf4c2eb8",
  "source": {
    "blob": "04badc18840eb45f99fbb257b7b53838926021a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta53c3e4d0fbbf9dbefc4b8be46a03fb276250a79942091ee3d9649bfaa6ec6b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6618d714921091daf4c2eb8bf2cdcdd7d403f63fbad2ad620dda6bb8fcbe148",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta53c3e4d0fbbf9dbefc4b8be46a03fb276250a79942091ee3d9649bfaa6ec6b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c8a69d-91e4-6689-09c7-75526a225c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_map_tsub [AddCommMonoid M] [PartialOrder M] [ExistsAddOfLE M]
    [AddLeftMono M] [AddLeftReflectLE M] [Sub M]
    [OrderedSub M] (l : Multiset ι) {f g : ι → M} (hfg : ∀ x ∈ l, g x ≤ f x) :
    (l.map fun x ↦ f x - g x).sum = (l.map f).sum - (l.map g).sum :=
  eq_tsub_of_add_eq <| by
    rw [← sum_map_add]
    congr 1
    exact map_congr rfl fun x hx => tsub_add_cancel_of_le <| hfg _ hx

end OrderedSub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta53c3e4d0fbbf9dbefc4b8be46a03fb276250a79942091ee3d9649bfaa6ec6b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta53c3e4d0fbbf9dbefc4b8be46a03fb276250a79942091ee3d9649bfaa6ec6b2.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04badc18840eb45f99fbb257b7b53838926021a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
