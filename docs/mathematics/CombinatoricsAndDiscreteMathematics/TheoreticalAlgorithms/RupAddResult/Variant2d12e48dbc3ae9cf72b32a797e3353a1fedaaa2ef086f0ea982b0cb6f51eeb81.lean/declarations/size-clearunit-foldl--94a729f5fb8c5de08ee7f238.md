# size_clearUnit_foldl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:999b67cb-8625-4160-9945-b4a115e0a1d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ac6143b-d168-232e-67c7-9eff7cb6e632",
  "kind": "theorem",
  "lexical_name": "size_clearUnit_foldl",
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
  "slug": "size-clearunit-foldl--94a729f5fb8c5de08ee7f238",
  "source": {
    "blob": "fe8acc5a5be5740e022569f4427ed8c3582f9bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94a729f5fb8c5de08ee7f238ee9619140c52a026fb3b88225757cb7f2a53c5b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ac6143b-d168-232e-67c7-9eff7cb6e632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_clearUnit_foldl {α : Type u} (assignments : Array Assignment)
    (f : Array Assignment → α → Array Assignment) (f_preserves_size :
    ∀ arr : Array Assignment, ∀ a : α, (f arr a).size = arr.size) (l : List α) :
  Array.size (List.foldl f assignments l) = Array.size assignments := by
  have hb : assignments.size = assignments.size := rfl
  have hl (assignments' : Array Assignment) (hsize : assignments'.size = assignments.size) (a : α) (_ : a ∈ l) :
    (f assignments' a).size = assignments.size := by rw [f_preserves_size assignments' a, hsize]
  exact List.foldlRecOn l f hb hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe8acc5a5be5740e022569f4427ed8c3582f9bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
