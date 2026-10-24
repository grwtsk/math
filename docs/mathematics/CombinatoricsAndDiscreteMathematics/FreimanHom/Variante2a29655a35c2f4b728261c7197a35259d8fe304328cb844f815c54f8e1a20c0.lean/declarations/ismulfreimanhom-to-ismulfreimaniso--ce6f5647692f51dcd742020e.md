# IsMulFreimanHom.to_isMulFreimanIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba65dc03-8a3d-b109-da3d-c51aa1d4858c",
  "kind": "lemma",
  "lexical_name": "IsMulFreimanHom.to_isMulFreimanIso",
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
  "slug": "ismulfreimanhom-to-ismulfreimaniso--ce6f5647692f51dcd742020e",
  "source": {
    "blob": "4cb906e0fa03f924d0eea354f33a3a4aed81348e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce6f5647692f51dcd742020e2297f200fcfd690af7e244cdde848e60dcdc5aa6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba65dc03-8a3d-b109-da3d-c51aa1d4858c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMulFreimanHom.to_isMulFreimanIso {g : β → α} (h : InvOn g f A B)
    (hf : IsMulFreimanHom n A B f) (hg : IsMulFreimanHom n B A g) :
    IsMulFreimanIso n A B f where
  bijOn := h.bijOn hf.mapsTo hg.mapsTo
  map_prod_eq_map_prod s t hsA htA hs ht := by
    refine ⟨fun h' => ?_, hf.map_prod_eq_map_prod hsA htA hs ht⟩
    have : (map g (map f s)).prod = (map g (map f t)).prod := by
      have := hf.mapsTo
      apply hg.map_prod_eq_map_prod <;> simp_all [MapsTo]
    rwa [map_map, map_congr rfl fun x hx => ?g1, map_id, map_map,
      map_congr rfl fun x hx => ?g2, map_id] at this
    case g1 => exact h.1 (hsA hx)
    case g2 => exact h.1 (htA hx)

/-- If `f` is a multiplicative Freiman isomorphism from `A` to `B`, then `f.invFunOn A` is
a multiplicative Freiman isomorphism from `B` to `A`. -/
@[to_additive /-- If `f` is an additive Freiman isomorphism from `A` to `B`, then `f.invFunOn A` is
an additive Freiman isomorphism from `B` to `A`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FreimanHom/Variante2a29655a35c2f4b728261c7197a35259d8fe304328cb844f815c54f8e1a20c0.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb906e0fa03f924d0eea354f33a3a4aed81348e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
