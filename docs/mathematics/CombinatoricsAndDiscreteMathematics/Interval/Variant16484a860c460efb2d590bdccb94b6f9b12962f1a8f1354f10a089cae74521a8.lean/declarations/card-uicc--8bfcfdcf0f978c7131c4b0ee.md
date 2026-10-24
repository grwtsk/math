# card_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b40a7b5e4d6a33b9e98897a063e4475ccd40557f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf850445-ac5b-4f95-9842-ed056e7d4327",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3537696-7fa3-3c62-9b59-f38c166bfebc",
  "kind": "theorem",
  "lexical_name": "card_uIcc",
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
  "slug": "card-uicc--8bfcfdcf0f978c7131c4b0ee",
  "source": {
    "blob": "b40a7b5e4d6a33b9e98897a063e4475ccd40557f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfcfdcf0f978c7131c4b0ee46250c909b5f6f72b12dd5ab46077d2a842755b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3537696-7fa3-3c62-9b59-f38c166bfebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_uIcc : (uIcc f g).card = ∏ i in f.support ∪ g.support, (uIcc (f i) (g i)).card := by
  rw [←support_inf_union_support_sup]; exact card_Icc _ _
#align dfinsupp.card_uIcc DFinsupp.card_uIcc

end Lattice

section CanonicallyOrdered

variable [DecidableEq ι] [∀ i, DecidableEq (α i)]

variable [∀ i, CanonicallyOrderedAddMonoid (α i)] [∀ i, LocallyFiniteOrder (α i)]

variable (f : Π₀ i, α i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant16484a860c460efb2d590bdccb94b6f9b12962f1a8f1354f10a089cae74521a8.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40a7b5e4d6a33b9e98897a063e4475ccd40557f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
