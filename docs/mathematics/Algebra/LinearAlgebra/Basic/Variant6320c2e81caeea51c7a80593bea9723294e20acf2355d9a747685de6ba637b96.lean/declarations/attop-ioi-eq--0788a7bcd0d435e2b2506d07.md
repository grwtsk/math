# atTop_Ioi_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73cfaa73e701cda04d853936b34747ea3786f8b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f587b0fb-aa71-50b9-5682-fc077f21ff2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b6578ee-b025-3c0e-6271-cbfc6d98d495",
  "kind": "theorem",
  "lexical_name": "atTop_Ioi_eq",
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
  "slug": "attop-ioi-eq--0788a7bcd0d435e2b2506d07",
  "source": {
    "blob": "73cfaa73e701cda04d853936b34747ea3786f8b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 286,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0788a7bcd0d435e2b2506d078b6cc66aac8ce539f9e6c317f9b565d3cc08bd15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b6578ee-b025-3c0e-6271-cbfc6d98d495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atTop_Ioi_eq [Preorder α] [IsDirectedOrder α] (a : α) :
    atTop = comap ((↑) : Ioi a → α) atTop := by
  rcases isEmpty_or_nonempty (Ioi a) with h | ⟨⟨b, hb⟩⟩
  · subsingleton
  · rw [← map_val_atTop_of_Ici_subset (Ici_subset_Ioi.2 hb), comap_map Subtype.coe_injective]

/-- The `atTop` filter for `↑(Ici a)` comes from the `atTop` filter in the ambient order. -/
@[to_dual
/-- The `atBot` filter for `↑(Iic a)` comes from the `atBot` filter in the ambient order. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73cfaa73e701cda04d853936b34747ea3786f8b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
