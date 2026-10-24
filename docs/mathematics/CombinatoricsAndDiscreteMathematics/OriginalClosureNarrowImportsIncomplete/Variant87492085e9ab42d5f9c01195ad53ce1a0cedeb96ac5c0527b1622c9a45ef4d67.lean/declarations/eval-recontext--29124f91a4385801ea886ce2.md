# eval_recontext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5630,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2640ad7-7a80-71a2-ac78-9a00528235a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:747e760f-c638-289d-d32c-166cf8101639",
  "kind": "theorem",
  "lexical_name": "eval_recontext",
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
  "slug": "eval-recontext--29124f91a4385801ea886ce2",
  "source": {
    "blob": "c43dd61c35d3d36651c01f53530ca36ac91fcb76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5651,
    "line": 5630,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29124f91a4385801ea886ce2bebe64c1256cf6db46d8bc11af4e66c8c1ac6a3d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747e760f-c638-289d-d32c-166cf8101639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5630–5651.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_recontext {Γ Δ : List (Expr S)} {A : Expr S} {s : S}
    (hA : HasType P Γ A (.sort s)) (hc : ContextEquivalent P Γ Δ)
    (σ : Nat → Expr S) (θ : Bits) : eval Ω C Γ A σ θ = eval Ω C Δ A σ θ := by
  induction A generalizing Γ Δ s σ θ with
  | pi D E ihD ihE =>
    obtain ⟨a,b,c,hD,hE,_,_⟩ := hA.generation_pi
    have hp : Profile P Γ (.pi D E) = Profile P Δ (.pi D E) := Set.ext (fun s => hc.typing _ _)
    rw [eval_pi,eval_pi,hp]
    congr 1
    apply congrArg₂ (RawProduct Ω D E σ) (ihD hD hc σ θ)
    funext n bit
    exact ihE hE (hc.cons hD) _ _
  | var i =>
    have hp : Profile P Γ (.var i) = Profile P Δ (.var i) := Set.ext (fun s => hc.typing _ _)
    simp only [eval,hp]
  | sort s => rw [eval_sort,eval_sort]
  | app f n ihf ihn =>
    have hp : Profile P Γ (.app f n) = Profile P Δ (.app f n) := Set.ext (fun s => hc.typing _ _)
    simp only [eval,hp]
  | lam D m ihD ihm => exact False.elim hA.lambda_cannot_have_sort_type

include hw in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant87492085e9ab42d5f9c01195ad53ce1a0cedeb96ac5c0527b1622c9a45ef4d67.lean#L5630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43dd61c35d3d36651c01f53530ca36ac91fcb76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
