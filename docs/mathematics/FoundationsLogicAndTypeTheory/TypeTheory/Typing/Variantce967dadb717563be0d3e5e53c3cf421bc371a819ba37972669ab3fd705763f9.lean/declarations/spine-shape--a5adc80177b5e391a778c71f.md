# spine_shape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81143f00-4706-7d34-6caa-668db34772b4",
  "kind": "theorem",
  "lexical_name": "spine_shape",
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
  "slug": "spine-shape--a5adc80177b5e391a778c71f",
  "source": {
    "blob": "f4ffcb8fa7e62a6140045b92e39336cde4867cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5adc80177b5e391a778c71fa11b5409c8bf58b0c28eba42d59d0b50abeba3d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81143f00-4706-7d34-6caa-668db34772b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spine_shape {M T : Expr S} (h : HasType P Γ M T) :
    (∃ s, M = .sort s) ∨ Neutral M ∨ (∃ A B, M = .pi A B) ∨
      (∃ A b ns, M = (Expr.lam A b).apps ns) := by
  induction M generalizing T with
  | var n => exact .inr (.inl (.var n))
  | sort s => exact .inl ⟨s,rfl⟩
  | lam A b => exact .inr (.inr (.inr ⟨A,b,[],rfl⟩))
  | pi A B => exact .inr (.inr (.inl ⟨A,B,rfl⟩))
  | app f a ihf iha =>
    obtain ⟨D,E,hf,_,_⟩ := h.generation_app
    rcases ihf hf with ⟨s,rfl⟩ | hn | ⟨A,B,rfl⟩ | ⟨A,b,ns,rfl⟩
    · exact False.elim hf.sort_cannot_have_product_type
    · exact .inr (.inl (.app hn))
    · exact False.elim hf.product_cannot_have_product_type
    · exact .inr (.inr (.inr ⟨A,b,ns ++ [a],by simp only [Expr.apps_append,Expr.apps]⟩))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variantce967dadb717563be0d3e5e53c3cf421bc371a819ba37972669ab3fd705763f9.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ffcb8fa7e62a6140045b92e39336cde4867cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
