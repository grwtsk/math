# isIsotypic_submodule_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d5f9f88b49f4d48c6ac7e3134363ae95a019566",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd59faf9-313e-7910-dfb9-a07abf8f8e41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0870118-6207-2db0-0960-6bf14a67878f",
  "kind": "theorem",
  "lexical_name": "isIsotypic_submodule_iff",
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
  "slug": "isisotypic-submodule-iff--5ecc5d8a75fc5a0fe1bd11ad",
  "source": {
    "blob": "9d5f9f88b49f4d48c6ac7e3134363ae95a019566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ecc5d8a75fc5a0fe1bd11adb6e0bf6fbac2d6e8ff620dc2d3893262b0225c54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0870118-6207-2db0-0960-6bf14a67878f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIsotypic_submodule_iff {N : Submodule R M} :
    IsIsotypic R N ↔ ∀ m ≤ N, [IsSimpleModule R m] → IsIsotypicOfType R N m := by
  rw [Subtype.forall', ← (Submodule.MapSubtype.relIso N).forall_congr_right]
  have e := Submodule.equivMapOfInjective _ N.subtype_injective
  simp_rw [Submodule.MapSubtype.relIso, Equiv.coe_fn_mk, ← (e _).isSimpleModule_iff,
    ← (e _).isIsotypicOfType_iff_type, IsIsotypic]

section Finsupp

variable [IsSemisimpleModule R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d5f9f88b49f4d48c6ac7e3134363ae95a019566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
