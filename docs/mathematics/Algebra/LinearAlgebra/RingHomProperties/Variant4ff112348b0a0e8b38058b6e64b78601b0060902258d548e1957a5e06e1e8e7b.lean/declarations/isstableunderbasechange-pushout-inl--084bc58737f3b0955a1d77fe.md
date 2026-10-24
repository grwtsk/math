# IsStableUnderBaseChange.pushout_inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12fa441bbc803c5c2fe8a98902c25218897ae8c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4ff112348b0a0e8b38058b6e64b78601b0060902258d548e1957a5e06e1e8e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72543081-9fa1-5641-784a-4fc4e7cd62a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27699034-d405-5be7-82ad-03cbbdf35439",
  "kind": "theorem",
  "lexical_name": "IsStableUnderBaseChange.pushout_inl",
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
  "slug": "isstableunderbasechange-pushout-inl--084bc58737f3b0955a1d77fe",
  "source": {
    "blob": "12fa441bbc803c5c2fe8a98902c25218897ae8c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/RingHomProperties/Variant4ff112348b0a0e8b38058b6e64b78601b0060902258d548e1957a5e06e1e8e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:084bc58737f3b0955a1d77fed1168c43082bf0d16fe3339676939f762e36a39b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RingHomProperties/Variant4ff112348b0a0e8b38058b6e64b78601b0060902258d548e1957a5e06e1e8e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27699034-d405-5be7-82ad-03cbbdf35439`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsStableUnderBaseChange.pushout_inl (hP : RingHom.IsStableUnderBaseChange @P)
    (hP' : RingHom.RespectsIso @P) {R S T : CommRingCat} (f : R ⟶ S) (g : R ⟶ T) (H : P g.hom) :
    P (pushout.inl _ _ : S ⟶ pushout f g).hom := by
  let := f.hom.toAlgebra
  let := g.hom.toAlgebra
  rw [← show _ = pushout.inl f g from
      colimit.isoColimitCocone_ι_inv ⟨_, CommRingCat.pushoutCoconeIsColimit R S T⟩ WalkingSpan.left,
    CommRingCat.hom_comp, hP'.cancel_right_isIso]
  dsimp only [CommRingCat.pushoutCocone_inl, PushoutCocone.ι_app_left]
  apply hP R T S (S ⊗[R] T)
  exact H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RingHomProperties/Variant4ff112348b0a0e8b38058b6e64b78601b0060902258d548e1957a5e06e1e8e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RingHomProperties/Variant4ff112348b0a0e8b38058b6e64b78601b0060902258d548e1957a5e06e1e8e7b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12fa441bbc803c5c2fe8a98902c25218897ae8c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
