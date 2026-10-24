# isDominant_hom_iff_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1710164f78ead9a02f14875eb40dfe6288a365d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa3edc73-8969-5a56-a078-c0c15a4413fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fccb020b-bac5-321c-3f11-63675bebb613",
  "kind": "lemma",
  "lexical_name": "isDominant_hom_iff_of_equiv",
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
  "slug": "isdominant-hom-iff-of-equiv--5346d8364236aa63c8a5c126",
  "source": {
    "blob": "1710164f78ead9a02f14875eb40dfe6288a365d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5346d8364236aa63c8a5c1269f84d023b837d5e2de00529381e9571d08e868a7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fccb020b-bac5-321c-3f11-63675bebb613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDominant_hom_iff_of_equiv (f g : X.PartialMap Y) (h : f.equiv g) :
    IsDominant f.hom ↔ IsDominant g.hom := by
  obtain ⟨W, hW, hWl, hWr, h⟩ := h
  have e₁ := isDominant_hom_iff_isDominant_restrict_hom f W hW hWl
  have e₂ := isDominant_hom_iff_isDominant_restrict_hom g W hW hWr
  dsimp only [restrict_domain, restrict_hom] at ⊢ e₁ e₂ h
  rw [e₁, h, ← e₂]

end PartialMap

/-- A rational map is dominant if some (equivalently, any) representative partial map has
dominant underlying morphism. -/
@[mk_iff, stacks 0A1Z]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Dominant/Variant60c1873356c27c0b01637ceb8cb1290fa508af146bff767edf59de60cffe376a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1710164f78ead9a02f14875eb40dfe6288a365d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
