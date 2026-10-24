# isFullyInvariant_isotypicComponent

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
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784939a9-8015-7efd-a8bc-6f5557ebc137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b3b647-ad6d-fd10-9674-1aa07f4a052a",
  "kind": "theorem",
  "lexical_name": "isFullyInvariant_isotypicComponent",
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
  "slug": "isfullyinvariant-isotypiccomponent--097ccf65f3363e4a7d4a6750",
  "source": {
    "blob": "9d5f9f88b49f4d48c6ac7e3134363ae95a019566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:097ccf65f3363e4a7d4a675093d824c3123bc7d0c9260fc0cee74e663be21902",
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

Occurrence: `result:d4b3b647-ad6d-fd10-9674-1aa07f4a052a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFullyInvariant_isotypicComponent : (isotypicComponent R M S).IsFullyInvariant :=
  fun f ↦ sSup_le fun m ⟨e⟩ ↦ Submodule.map_le_iff_le_comap.mp <| by
    have := IsSimpleModule.congr e
    rw [← m.range_subtype, ← LinearMap.range_comp]
    obtain inj | eq := (f ∘ₗ m.subtype).injective_or_eq_zero
    · exact le_sSup ⟨.trans (.symm <| LinearEquiv.ofInjective _ inj) e⟩
    · simp_rw [eq, LinearMap.range_zero, bot_le]

end IsSimpleModule

open IsSemisimpleModule in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isotypic/Variant29de3f08220bd00b828e1e4a02c0a9307fe281b775da579f12ce1e51303efe43.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d5f9f88b49f4d48c6ac7e3134363ae95a019566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
