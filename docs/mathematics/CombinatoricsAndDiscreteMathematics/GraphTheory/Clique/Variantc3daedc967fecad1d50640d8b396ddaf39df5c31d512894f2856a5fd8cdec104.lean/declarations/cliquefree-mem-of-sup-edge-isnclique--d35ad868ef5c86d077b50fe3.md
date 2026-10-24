# CliqueFree.mem_of_sup_edge_isNClique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed84123-2bdc-0243-4a61-fde44155e5ed",
  "kind": "lemma",
  "lexical_name": "CliqueFree.mem_of_sup_edge_isNClique",
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
  "slug": "cliquefree-mem-of-sup-edge-isnclique--d35ad868ef5c86d077b50fe3",
  "source": {
    "blob": "843f959c778bbdec52556ef6939b803f0b1292ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 558,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d35ad868ef5c86d077b50fe308c0b051f8f7b73f24a6d2b9932ba506da2686c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed84123-2bdc-0243-4a61-fde44155e5ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CliqueFree.mem_of_sup_edge_isNClique {x y : α} {t : Finset α} {n : ℕ} (h : G.CliqueFree n)
    (hc : (G ⊔ edge x y).IsNClique n t) : x ∈ t := by
  by_contra hf
  have ht : (t : Set α) \ {x} = t := sdiff_eq_left.mpr <| Set.disjoint_singleton_right.mpr hf
  exact h t ⟨ht ▸ hc.1.sdiff_of_sup_edge, hc.2⟩

/-- Adding an edge increases the clique number by at most one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variantc3daedc967fecad1d50640d8b396ddaf39df5c31d512894f2856a5fd8cdec104.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `843f959c778bbdec52556ef6939b803f0b1292ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
