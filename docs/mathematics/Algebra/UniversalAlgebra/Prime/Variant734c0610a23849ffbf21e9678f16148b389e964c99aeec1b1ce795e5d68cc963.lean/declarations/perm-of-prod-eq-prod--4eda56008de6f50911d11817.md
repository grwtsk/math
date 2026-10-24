# perm_of_prod_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85a53a4daaf90b6bf64fa008e0e2b81d7d74c23a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/734c0610a23849ffbf21e9678f16148b389e964c99aeec1b1ce795e5d68cc963.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e5ed5c3-4e43-f763-07ae-13be9b7415d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10a8ed54-3996-27f5-0bff-734f79bdd049",
  "kind": "theorem",
  "lexical_name": "perm_of_prod_eq_prod",
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
  "slug": "perm-of-prod-eq-prod--4eda56008de6f50911d11817",
  "source": {
    "blob": "85a53a4daaf90b6bf64fa008e0e2b81d7d74c23a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 52,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prime/Variant734c0610a23849ffbf21e9678f16148b389e964c99aeec1b1ce795e5d68cc963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eda56008de6f50911d1181776adc7ce7df477e6639cb8ea137ade8cb68f8bba",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prime/Variant734c0610a23849ffbf21e9678f16148b389e964c99aeec1b1ce795e5d68cc963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10a8ed54-3996-27f5-0bff-734f79bdd049`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_of_prod_eq_prod :
    ∀ {l₁ l₂ : List M}, l₁.prod = l₂.prod → (∀ p ∈ l₁, Prime p) → (∀ p ∈ l₂, Prime p) → Perm l₁ l₂
  | [], [], _, _, _ => Perm.nil
  | [], a :: l, h₁, _, h₃ =>
    have ha : a ∣ 1 := prod_nil (M := M) ▸ h₁.symm ▸ (prod_cons (l := l)).symm ▸ dvd_mul_right _ _
    absurd ha (Prime.not_dvd_one (h₃ a mem_cons_self))
  | a :: l, [], h₁, h₂, _ =>
    have ha : a ∣ 1 := prod_nil (M := M) ▸ h₁ ▸ (prod_cons (l := l)).symm ▸ dvd_mul_right _ _
    absurd ha (Prime.not_dvd_one (h₂ a mem_cons_self))
  | a :: l₁, b :: l₂, h, hl₁, hl₂ => by
    classical
      have hl₁' : ∀ p ∈ l₁, Prime p := fun p hp => hl₁ p (mem_cons_of_mem _ hp)
      have hl₂' : ∀ p ∈ (b :: l₂).erase a, Prime p := fun p hp => hl₂ p (mem_of_mem_erase hp)
      have ha : a ∈ b :: l₂ :=
        mem_list_primes_of_dvd_prod (hl₁ a mem_cons_self) hl₂
          (h ▸ by rw [prod_cons]; exact dvd_mul_right _ _)
      have hb : b :: l₂ ~ a :: (b :: l₂).erase a := perm_cons_erase ha
      have hl : prod l₁ = prod ((b :: l₂).erase a) :=
        (mul_right_inj' (hl₁ a mem_cons_self).ne_zero).1 <| by
          rwa [← prod_cons, ← prod_cons, ← hb.prod_eq]
      exact Perm.trans ((perm_of_prod_eq_prod hl hl₁' hl₂').cons _) hb.symm

end CancelCommMonoidWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prime/Variant734c0610a23849ffbf21e9678f16148b389e964c99aeec1b1ce795e5d68cc963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prime/Variant734c0610a23849ffbf21e9678f16148b389e964c99aeec1b1ce795e5d68cc963.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a53a4daaf90b6bf64fa008e0e2b81d7d74c23a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
