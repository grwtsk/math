# prodMk_sup'_sup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b456830ca2d8845c2c25bdbb182126a7e860ff9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd07aca90beb2410195d29a339cf6f60407bbbead9f98ce767e37fa9b45e7e7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ed4936e-39ca-73d8-838f-fb22a96d064b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ea6c020-9e73-c205-8fd7-ce3f9fb2c09a",
  "kind": "lemma",
  "lexical_name": "prodMk_sup'_sup'",
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
  "slug": "prodmk-sup-sup--28546e90d86a21d5ebdd9af1",
  "source": {
    "blob": "9b456830ca2d8845c2c25bdbb182126a7e860ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantfd07aca90beb2410195d29a339cf6f60407bbbead9f98ce767e37fa9b45e7e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28546e90d86a21d5ebdd9af1b43dcbb7927e2791f75f9fe6789a38fbac3aac25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variantfd07aca90beb2410195d29a339cf6f60407bbbead9f98ce767e37fa9b45e7e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea6c020-9e73-c205-8fd7-ce3f9fb2c09a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodMk_sup'_sup' (hs : s.Nonempty) (ht : t.Nonempty) (f : ι → α) (g : κ → β) :
    (sup' s hs f, sup' t ht g) = sup' (s ×ˢ t) (hs.product ht) (Prod.map f g) :=
  eq_of_forall_ge_iff fun i ↦ by
    obtain ⟨a, ha⟩ := hs
    obtain ⟨b, hb⟩ := ht
    simp only [Prod.map, sup'_le_iff, mem_product, and_imp, Prod.forall, Prod.le_def]
    exact ⟨by simp_all, fun h ↦ ⟨fun i hi ↦ (h _ _ hi hb).1, fun j hj ↦ (h _ _ ha hj).2⟩⟩

/-- See also `Finset.prodMk_sup'_sup'`. -/
@[to_dual -- (attr := simp) -- TODO: Why does `Prod.map_apply` simplify the LHS?
/-- See also `Finset.prodMk_inf'_inf'`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variantfd07aca90beb2410195d29a339cf6f60407bbbead9f98ce767e37fa9b45e7e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantfd07aca90beb2410195d29a339cf6f60407bbbead9f98ce767e37fa9b45e7e7c.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b456830ca2d8845c2c25bdbb182126a7e860ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
