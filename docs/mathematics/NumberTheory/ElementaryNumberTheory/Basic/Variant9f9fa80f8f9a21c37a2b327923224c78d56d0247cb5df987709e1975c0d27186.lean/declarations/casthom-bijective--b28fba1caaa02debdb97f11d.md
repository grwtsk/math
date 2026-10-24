# castHom_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35339cd2-f195-6c86-a0dd-a62f60fe5ffb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c2834f3-f2cc-a2ac-b011-ae8eb80bafbf",
  "kind": "theorem",
  "lexical_name": "castHom_bijective",
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
  "slug": "casthom-bijective--b28fba1caaa02debdb97f11d",
  "source": {
    "blob": "e8439286e7193cad4ff3402dbea7cff2af16dda3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 416,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28fba1caaa02debdb97f11d00bba81fb154c7cda682bdafa718622e75c001b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c2834f3-f2cc-a2ac-b011-ae8eb80bafbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem castHom_bijective [Fintype R] (h : Fintype.card R = n) :
    Function.Bijective (ZMod.castHom (dvd_refl n) R) := by
  haveI : NeZero n :=
    ⟨by
      intro hn
      rw [hn] at h
      exact (Fintype.card_eq_zero_iff.mp h).elim' 0⟩
  rw [Fintype.bijective_iff_injective_and_card, ZMod.card, h, eq_self_iff_true, and_true_iff]
  apply ZMod.castHom_injective
#align zmod.cast_hom_bijective ZMod.castHom_bijective

/-- The unique ring isomorphism between `ZMod n` and a ring `R`
of characteristic `n` and cardinality `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant9f9fa80f8f9a21c37a2b327923224c78d56d0247cb5df987709e1975c0d27186.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8439286e7193cad4ff3402dbea7cff2af16dda3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
