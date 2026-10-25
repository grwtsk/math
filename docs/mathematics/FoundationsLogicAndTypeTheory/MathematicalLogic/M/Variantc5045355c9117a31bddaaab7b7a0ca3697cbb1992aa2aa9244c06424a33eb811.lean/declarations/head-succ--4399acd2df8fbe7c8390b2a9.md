# head_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a55802af1401b592918670a607c98f0339995ae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1edb1a4c-31f0-1e3e-6cd5-950aff2c6b50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09fee6da-aab8-b904-a4f2-a3f4a4f6eb7a",
  "kind": "theorem",
  "lexical_name": "head_succ'",
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
  "slug": "head-succ--4399acd2df8fbe7c8390b2a9",
  "source": {
    "blob": "2a55802af1401b592918670a607c98f0339995ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4399acd2df8fbe7c8390b2a9cfc6009a86379acc48f7c52062d70c235f55c71a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09fee6da-aab8-b904-a4f2-a3f4a4f6eb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem head_succ' (n m : ℕ) (x : ∀ n, CofixA F n) (Hconsistent : AllAgree x) :
    head' (x (succ n)) = head' (x (succ m)) := by
  suffices ∀ n, head' (x (succ n)) = head' (x 1) by simp [this]
  clear m n
  intro n
  cases' h₀ : x (succ n) with _ i₀ f₀
  cases' h₁ : x 1 with _ i₁ f₁
  dsimp only [head']
  induction' n with n n_ih
  · rw [h₁] at h₀
    cases h₀
    trivial
  · have H := Hconsistent (succ n)
    cases' h₂ : x (succ n) with _ i₂ f₂
    rw [h₀, h₂] at H
    apply n_ih (truncate ∘ f₀)
    rw [h₂]
    cases' H with _ _ _ _ _ _ hagree
    congr
    funext j
    dsimp only [comp_apply]
    rw [truncate_eq_of_agree]
    apply hagree
#align pfunctor.approx.head_succ' PFunctor.Approx.head_succ'

end Approx

open Approx

/-- Internal definition for `M`. It is needed to avoid name clashes
between `M.mk` and `M.cases_on` and the declarations generated for
the structure -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a55802af1401b592918670a607c98f0339995ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
