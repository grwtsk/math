# Perm.foldl_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 503,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e8f2376-f801-b446-d605-e7857ab9bac5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b73e8533-4bcd-0704-029b-5c9171cd866f",
  "kind": "theorem",
  "lexical_name": "Perm.foldl_eq'",
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
  "slug": "perm-foldl-eq--5d945e4a8f944ba3f9fdec61",
  "source": {
    "blob": "dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 503,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d945e4a8f944ba3f9fdec6152ef9d155d3bdc76e32755236b3046f89929cbd3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b73e8533-4bcd-0704-029b-5c9171cd866f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Perm.foldl_eq' {f : β → α → β} {l₁ l₂ : List α} (p : l₁ ~ l₂) :
    (∀ x ∈ l₁, ∀ y ∈ l₁, ∀ (z), f (f z x) y = f (f z y) x) → ∀ b, foldl f b l₁ = foldl f b l₂ :=
  perm_induction_on p (fun _H b => rfl)
    (fun x t₁ t₂ _p r H b => r (fun x hx y hy => H _ (.tail _ hx) _ (.tail _ hy)) _)
    (fun x y t₁ t₂ _p r H b => by
      simp only [foldl]
      rw [H x (.tail _ <| .head _) y (.head _)]
      exact r (fun x hx y hy => H _ (.tail _ <| .tail _ hx) _ (.tail _ <| .tail _ hy)) _)
    fun t₁ t₂ t₃ p₁ _p₂ r₁ r₂ H b =>
    Eq.trans (r₁ H b) (r₂ (fun x hx y hy => H _ (p₁.symm.subset hx) _ (p₁.symm.subset hy)) b)
#align list.perm.foldl_eq' List.Perm.foldl_eq'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
