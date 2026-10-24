# partSize_eq_one_of_range_emb_eq_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77d189da-5d25-9388-368a-bb7964e3362a",
  "kind": "lemma",
  "lexical_name": "partSize_eq_one_of_range_emb_eq_singleton",
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
  "slug": "partsize-eq-one-of-range-emb-eq-singleton--17a2ce2e7e74de3098202664",
  "source": {
    "blob": "c8c28377120d3ec14b65b3626ccc62a2a7736aef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 251,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17a2ce2e7e74de30982026647c37db6c4b5f81827586f51d55695f9fdd43bf12",
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

Occurrence: `result:77d189da-5d25-9388-368a-bb7964e3362a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partSize_eq_one_of_range_emb_eq_singleton
    (c : OrderedFinpartition n) {i : Fin c.length} {j : Fin n}
    (hc : range (c.emb i) = {j}) :
    c.partSize i = 1 := by
  have : Fintype.card (range (c.emb i)) = Fintype.card (Fin (c.partSize i)) :=
    card_range_of_injective (c.emb_strictMono i).injective
  simpa [hc] using this.symm

/-- If the left-most part is not `{0}`, then the part containing `0` has at least two elements:
either because it's the left-most part, and then it's not just `0` by assumption, or because it's
not the left-most part and then, by increasingness of maximal elements in parts, it contains
a positive element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant65666678328380de492df568892f12ac52a255bce923c7dca1af4eef1e332f44.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c28377120d3ec14b65b3626ccc62a2a7736aef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
