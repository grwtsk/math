# trivialOnSet_le_isContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d63a26111503e39fd358f5ce307e543f8cc22561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ea8c64e-129b-afd6-1220-dfdfe46cc00c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b788a906-d1d6-4f9a-fe30-0de4497767a1",
  "kind": "lemma",
  "lexical_name": "trivialOnSet_le_isContinuous",
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
  "slug": "trivialonset-le-iscontinuous--45a7ec6c3914528b8078b6c7",
  "source": {
    "blob": "d63a26111503e39fd358f5ce307e543f8cc22561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45a7ec6c3914528b8078b6c72fcca2cc1e22ab741466af82c5e93625a9a1833a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b788a906-d1d6-4f9a-fe30-0de4497767a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trivialOnSet_le_isContinuous (H : OpenSubgroup G) :
    trivialOnSet FintypeCat.{w} H ≤ isContinuous FintypeCat.{w} G := by
  intro R h
  constructor
  let s : G ⧸ H.toSubgroup → G := Function.surjInv Quotient.mk_surjective
  have hs (g : G) : ∃ (x : H), s g = g * x :=
    ⟨⟨g⁻¹ * s g, QuotientGroup.eq.mp (Function.rightInverse_surjInv _ _).symm⟩, by simp⟩
  let φ (x : (G ⧸ H.toSubgroup) × R.V) : R.V := s x.1 • x.2
  have : (fun (x : G × ((forget₂ _ TopCat).obj R)) ↦ x.1 • x.2) = fun x ↦ φ ⟨x.1, x.2⟩ := by
    ext ⟨g, v⟩
    obtain ⟨x, eq⟩ := hs g
    simp [φ, eq, ← R.ρ_apply_eq_smul, h _ x.prop]
  rw [this]
  fun_prop

/-- An action of a topological group on a finite set is continuous if and only if it is trivial
when restricted to some open subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ContAction/Variant222c2a9a209e52671d4d54512e575856e86d5408c5c444dfa7015cb3ba6d2779.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63a26111503e39fd358f5ce307e543f8cc22561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
