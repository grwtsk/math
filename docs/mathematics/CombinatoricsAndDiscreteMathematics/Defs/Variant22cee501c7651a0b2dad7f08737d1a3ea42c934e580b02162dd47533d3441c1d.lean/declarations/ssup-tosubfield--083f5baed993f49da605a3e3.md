# sSup_toSubfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0866ddb92a1c8f35e8e723f3b4380413ff2fb5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22cee501c7651a0b2dad7f08737d1a3ea42c934e580b02162dd47533d3441c1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:812620db-ca7d-1779-e848-2c4df9a0c103",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93c43bfd-4654-500a-bd5d-7d1cb5fe95d5",
  "kind": "theorem",
  "lexical_name": "sSup_toSubfield",
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
  "slug": "ssup-tosubfield--083f5baed993f49da605a3e3",
  "source": {
    "blob": "c0866ddb92a1c8f35e8e723f3b4380413ff2fb5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant22cee501c7651a0b2dad7f08737d1a3ea42c934e580b02162dd47533d3441c1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:083f5baed993f49da605a3e3420e316ecb97cbb9743b7fb417f2b48f62eafb99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variant22cee501c7651a0b2dad7f08737d1a3ea42c934e580b02162dd47533d3441c1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93c43bfd-4654-500a-bd5d-7d1cb5fe95d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sSup_toSubfield (S : Set (IntermediateField F E)) (hS : S.Nonempty) :
    (sSup S).toSubfield = sSup (toSubfield '' S) := by
  have h : toSubfield '' S = Subfield.closure '' (SetLike.coe '' S) := by
    rw [Set.image_image]
    congr! with x
    exact x.toSubfield.closure_eq.symm
  rw [h, sSup_image, ← Subfield.closure_sUnion, sSup_def, adjoin_toSubfield]
  congr 1
  rw [Set.union_eq_right]
  rintro _ ⟨x, rfl⟩
  obtain ⟨y, hy⟩ := hS
  simp only [Set.mem_sUnion, Set.mem_image, exists_exists_and_eq_and, SetLike.mem_coe]
  exact ⟨y, hy, algebraMap_mem y x⟩

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variant22cee501c7651a0b2dad7f08737d1a3ea42c934e580b02162dd47533d3441c1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant22cee501c7651a0b2dad7f08737d1a3ea42c934e580b02162dd47533d3441c1d.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0866ddb92a1c8f35e8e723f3b4380413ff2fb5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
