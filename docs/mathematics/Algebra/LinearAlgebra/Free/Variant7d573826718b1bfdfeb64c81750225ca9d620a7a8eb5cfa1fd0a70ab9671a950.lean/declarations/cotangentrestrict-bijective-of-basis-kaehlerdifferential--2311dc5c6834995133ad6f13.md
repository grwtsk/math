# cotangentRestrict_bijective_of_basis_kaehlerDifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "096f39902714991dee8ac7298012b125b26c055b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d573826718b1bfdfeb64c81750225ca9d620a7a8eb5cfa1fd0a70ab9671a950.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24d539d7-4d36-1e1f-b656-553909feb218",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8df6b030-4c1f-a68b-67cb-7daf71f489d0",
  "kind": "lemma",
  "lexical_name": "cotangentRestrict_bijective_of_basis_kaehlerDifferential",
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
  "slug": "cotangentrestrict-bijective-of-basis-kaehlerdifferential--2311dc5c6834995133ad6f13",
  "source": {
    "blob": "096f39902714991dee8ac7298012b125b26c055b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant7d573826718b1bfdfeb64c81750225ca9d620a7a8eb5cfa1fd0a70ab9671a950.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2311dc5c6834995133ad6f13c307f3ed0a1fe154145f484a2f25b60a52177c80",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant7d573826718b1bfdfeb64c81750225ca9d620a7a8eb5cfa1fd0a70ab9671a950.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8df6b030-4c1f-a68b-67cb-7daf71f489d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cotangentRestrict_bijective_of_basis_kaehlerDifferential
    (huv : IsCompl (Set.range v) (Set.range u)) (b : Module.Basis κ S (Ω[S⁄R]))
    (hb : ∀ k, b k = (D R S) (P.val (v k))) [Subsingleton (H1Cotangent R S)] :
    Function.Bijective (cotangentRestrict P hu) := by
  refine P.cotangentRestrict_bijective_of_isCompl _ huv ?_ ?_
  · simp_rw [← hb]
    exact b.span_eq
  · apply disjoint_ker_toKaehler_of_linearIndependent
    simp_rw [← hb]
    exact b.linearIndependent

end Generators

namespace PreSubmersivePresentation

open Generators

variable (P : PreSubmersivePresentation R S ι σ) [Finite σ]

set_option backward.isDefEq.respectTransparency.types false in
/-- To show a pre-submersive presentation with kernel `I = (fᵢ)` is submersive, it suffices to show
that the images of the `fᵢ` form a basis of `I/I²` and that the restricted
cotangent complex `I/I² → S ⊗[R] (Ω[R[Xᵢ]⁄R]) = ⊕ᵢ S → ⊕ⱼ S` is bijective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant7d573826718b1bfdfeb64c81750225ca9d620a7a8eb5cfa1fd0a70ab9671a950.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant7d573826718b1bfdfeb64c81750225ca9d620a7a8eb5cfa1fd0a70ab9671a950.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096f39902714991dee8ac7298012b125b26c055b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
