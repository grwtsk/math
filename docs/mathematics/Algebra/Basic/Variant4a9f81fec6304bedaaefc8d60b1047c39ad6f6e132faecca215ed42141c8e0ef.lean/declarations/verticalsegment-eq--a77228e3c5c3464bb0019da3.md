# verticalSegment_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44570136-dbbd-e487-d50e-e96d5aea8c5d",
  "kind": "lemma",
  "lexical_name": "verticalSegment_eq",
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
  "slug": "verticalsegment-eq--a77228e3c5c3464bb0019da3",
  "source": {
    "blob": "290077ba337683c651e935e1c1fbbcda971f7c39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 888,
    "line": 872,
    "path": "GRWTSK/Algebra/Basic/Variant4a9f81fec6304bedaaefc8d60b1047c39ad6f6e132faecca215ed42141c8e0ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a77228e3c5c3464bb0019da3b53eb1a09a76860f2815142f81239033d740a11c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4a9f81fec6304bedaaefc8d60b1047c39ad6f6e132faecca215ed42141c8e0ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44570136-dbbd-e487-d50e-e96d5aea8c5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–888.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma verticalSegment_eq (a b₁ b₂ : ℝ) :
    (fun (y : ℝ) ↦ a + y * I) '' [[b₁, b₂]] = {a} ×ℂ [[b₁, b₂]] := by
  rw [← preimage_equivRealProd_prod]
  ext x
  constructor
  · intro hx
    obtain ⟨x₁, hx₁, hx₁'⟩ := hx
    simp [← hx₁', mem_preimage, mem_prod, hx₁]
  · intro hx
    simp only [equivRealProd_apply, singleton_prod, mem_image, Prod.mk.injEq,
      exists_eq_right_right, mem_preimage] at hx
    obtain ⟨x₁, hx₁, hx₁', hx₁''⟩ := hx
    refine ⟨x.im, x₁, by simp⟩

end Segments

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4a9f81fec6304bedaaefc8d60b1047c39ad6f6e132faecca215ed42141c8e0ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4a9f81fec6304bedaaefc8d60b1047c39ad6f6e132faecca215ed42141c8e0ef.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290077ba337683c651e935e1c1fbbcda971f7c39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
