# attach_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47deed55-60cf-03d8-c27e-29d94b4577bd",
  "kind": "theorem",
  "lexical_name": "attach_insert",
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
  "slug": "attach-insert--521cc58ea0c71bbb5b3d67ec",
  "source": {
    "blob": "afa5c6c1770d50e9ed5fbc757f64ba337bac65cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 600,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521cc58ea0c71bbb5b3d67ec6366b28d7c472d77a558f8e3446f59d69e40f5b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47deed55-60cf-03d8-c27e-29d94b4577bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attach_insert [DecidableEq α] {a : α} {s : Finset α} :
    attach (insert a s) =
      insert (⟨a, mem_insert_self a s⟩ : { x // x ∈ insert a s })
        ((attach s).image fun x => ⟨x.1, mem_insert_of_mem x.2⟩) :=
  ext fun ⟨x, hx⟩ =>
    ⟨Or.casesOn (mem_insert.1 hx)
        (fun h : x = a => fun _ => mem_insert.2 <| Or.inl <| Subtype.eq h) fun h : x ∈ s => fun _ =>
        mem_insert_of_mem <| mem_image.2 <| ⟨⟨x, h⟩, mem_attach _ _, Subtype.eq rfl⟩,
      fun _ => Finset.mem_attach _ _⟩
#align finset.attach_insert Finset.attach_insert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant521de4835a5ad7c4ac3950d7a0a6a2dd94fddcc4bbd6c959ba2f4371c2cd4809.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa5c6c1770d50e9ed5fbc757f64ba337bac65cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
