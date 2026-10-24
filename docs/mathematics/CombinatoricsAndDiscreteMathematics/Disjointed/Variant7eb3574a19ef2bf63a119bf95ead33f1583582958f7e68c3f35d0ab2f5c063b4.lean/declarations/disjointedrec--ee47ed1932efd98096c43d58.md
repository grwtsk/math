# disjointedRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91dd66f9-7d74-ffe5-6ff5-7aa75ed813eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acdace18-28cb-863e-a9a6-529d8badfec8",
  "kind": "lemma",
  "lexical_name": "disjointedRec",
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
  "slug": "disjointedrec--ee47ed1932efd98096c43d58",
  "source": {
    "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee47ed1932efd98096c43d58567e965f189783bee038ab6f7e034414aa5d8e6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acdace18-28cb-863e-a9a6-529d8badfec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjointedRec {f : ι → α} {p : α → Prop} (hdiff : ∀ ⦃t i⦄, p t → p (t \ f i)) :
    ∀ ⦃i⦄, p (f i) → p (disjointed f i) := by
  classical
  intro i hpi
  rw [disjointed]
  suffices ∀ (s : Finset ι), p (f i \ s.sup f) from this _
  intro s
  induction s using Finset.induction with
  | empty => simpa only [sup_empty, sdiff_bot] using hpi
  | insert _ _ ht IH =>
    rw [sup_insert, sup_comm, ← sdiff_sdiff]
    exact hdiff IH

end Preorder

section PartialOrder -- the index type is a partial order

variable [PartialOrder ι] [LocallyFiniteOrderBot ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9abe3994e3b5c08a479e04b7d87aff9288e9d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
