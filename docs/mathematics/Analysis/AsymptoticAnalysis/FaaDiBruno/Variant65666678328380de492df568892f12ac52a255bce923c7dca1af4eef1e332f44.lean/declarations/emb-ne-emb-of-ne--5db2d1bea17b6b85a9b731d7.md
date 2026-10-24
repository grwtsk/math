# emb_ne_emb_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:285c12b2-441f-009b-f764-c2ef3373c453",
  "kind": "lemma",
  "lexical_name": "emb_ne_emb_of_ne",
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
  "slug": "emb-ne-emb-of-ne--5db2d1bea17b6b85a9b731d7",
  "source": {
    "blob": "c8c28377120d3ec14b65b3626ccc62a2a7736aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 195,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db2d1bea17b6b85a9b731d76c7303ad5a71889186abc8c5f9ba6f1283c1f6a5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:285c12b2-441f-009b-f764-c2ef3373c453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma emb_ne_emb_of_ne {i j : Fin c.length} {a : Fin (c.partSize i)} {b : Fin (c.partSize j)}
    (h : i ≠ j) : c.emb i a ≠ c.emb j b :=
  c.emb_injective.ne (a₁ := ⟨i, a⟩) (a₂ := ⟨j, b⟩) (by simp [h])

/-- Given `j : Fin n`, the index of the part to which it belongs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c28377120d3ec14b65b3626ccc62a2a7736aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
