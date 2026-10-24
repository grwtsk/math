# basicOpen_res

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13162cc7c9de50a2bc53b974530bb889fc2dc3c2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:522b6d95-96f1-166f-a32a-01cee6d9f02a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b78222a3-e074-a327-e0c8-2960cd17c18c",
  "kind": "theorem",
  "lexical_name": "basicOpen_res",
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
  "slug": "basicopen-res--aaf273b48e4c45a31296c7a1",
  "source": {
    "blob": "13162cc7c9de50a2bc53b974530bb889fc2dc3c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaf273b48e4c45a31296c7a1528db9405e7bb05da307917b4cf1273ce3f86e74",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78222a3-e074-a327-e0c8-2960cd17c18c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_res {U V : (Opens X)ᵒᵖ} (i : U ⟶ V) (f : X.presheaf.obj U) :
    @basicOpen X (unop V) (X.presheaf.map i f) = unop V ⊓ @basicOpen X (unop U) f := by
  ext x; constructor
  · rintro ⟨hxV, hx⟩
    rw [germ_res_apply' X.presheaf] at hx
    exact ⟨hxV, i.unop.le hxV, hx⟩
  · rintro ⟨hxV, _, hx⟩
    refine ⟨hxV, ?_⟩
    rw [germ_res_apply' X.presheaf]
    exact hx

-- This should fire before `basicOpen_res`.
-- Porting note: this lemma is not in simple normal form because of `basicOpen_res`, as in Lean3
-- it is specifically said "This should fire before `basic_open_res`", this lemma is marked with
-- high priority
@[simp (high)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7440de6bacf7d9735e7cd6898ab61be30961af09a5ff1093599017a691ef158c.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13162cc7c9de50a2bc53b974530bb889fc2dc3c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
