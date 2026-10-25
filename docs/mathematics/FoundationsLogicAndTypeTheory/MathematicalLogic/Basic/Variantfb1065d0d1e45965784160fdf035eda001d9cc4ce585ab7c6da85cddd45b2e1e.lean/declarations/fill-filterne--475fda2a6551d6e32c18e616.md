# fill_filterNe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddd435c1736746f9f390f5c6e084ac45d8c0b6b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26bf7e46-40e7-812c-640e-68ffe2267d5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be0b4ef9-ee93-7be3-2246-ca4e8dc2e511",
  "kind": "theorem",
  "lexical_name": "fill_filterNe",
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
  "slug": "fill-filterne--475fda2a6551d6e32c18e616",
  "source": {
    "blob": "ddd435c1736746f9f390f5c6e084ac45d8c0b6b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 528,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:475fda2a6551d6e32c18e616dbdd74d9ada256630bc6d71bed333792d55d45cf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be0b4ef9-ee93-7be3-2246-ca4e8dc2e511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fill_filterNe [DecidableEq α] (a : α) (m : Sym α n) :
    (m.filterNe a).2.fill a (m.filterNe a).1 = m :=
  Sym.ext
    (by
      rw [coe_fill, filterNe, ← val_eq_coe, Subtype.coe_mk, Fin.val_mk]
      ext b; dsimp
      rw [count_add, count_filter, Sym.coe_replicate, count_replicate]
      obtain rfl | h := eq_or_ne a b
      · rw [ite_eq_left rfl, ite_eq_right (not_not.2 rfl), zero_add]
      · rw [ite_eq_left h, ite_eq_right h, add_zero])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfb1065d0d1e45965784160fdf035eda001d9cc4ce585ab7c6da85cddd45b2e1e.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddd435c1736746f9f390f5c6e084ac45d8c0b6b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
