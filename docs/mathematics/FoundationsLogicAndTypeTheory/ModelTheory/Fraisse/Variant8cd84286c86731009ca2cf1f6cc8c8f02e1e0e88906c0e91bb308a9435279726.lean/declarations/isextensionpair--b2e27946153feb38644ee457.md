# isExtensionPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fa871b92a9defdd97c080622ce4965535e25d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdc60862-5e07-ce25-b799-5cebd9758e7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8946c0f-34c5-43d6-c2fe-ffaa147568f3",
  "kind": "theorem",
  "lexical_name": "isExtensionPair",
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
  "slug": "isextensionpair--b2e27946153feb38644ee457",
  "source": {
    "blob": "3fa871b92a9defdd97c080622ce4965535e25d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e27946153feb38644ee457de1874ea25a08a0b8ebb15a137fd37b275a26362",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8946c0f-34c5-43d6-c2fe-ffaa147568f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isExtensionPair : L.IsExtensionPair M N := by
  intro ⟨f, f_FG⟩ m
  let S := f.dom ⊔ closure L {m}
  have S_FG : S.FG := f_FG.sup (Substructure.fg_closure_singleton _)
  have S_in_age_N : ⟨S, inferInstance⟩ ∈ L.age N := by
    rw [hN.age, ← hM.age]
    exact ⟨(fg_iff_structure_fg S).1 S_FG, ⟨subtype _⟩⟩
  haveI nonempty_S_N : Nonempty (S ↪[L] N) := S_in_age_N.2
  let ⟨g, g_eq⟩ := hN.ultrahomogeneous.extend_embedding (f.dom.fg_iff_structure_fg.1 f_FG)
    ((subtype f.cod).comp f.toEquiv.toEmbedding) (inclusion (le_sup_left : _ ≤ S))
  refine ⟨⟨⟨S, g.toHom.range, g.equivRange⟩, S_FG⟩,
    subset_closure.trans (le_sup_right : _ ≤ S) (mem_singleton m), ⟨le_sup_left, ?_⟩⟩
  ext
  simp [S, Subtype.mk_le_mk, PartialEquiv.le_def, g_eq]

/-- The Fraïssé limit of a class is unique, in that any two Fraïssé limits are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa871b92a9defdd97c080622ce4965535e25d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
