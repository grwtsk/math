# finiteNonnegative_two_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e85d39b0f73a443ca3cd0465429847825193472b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:157567d6-58e5-10bb-eeb8-958a9d772fac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e77400f2-3d4a-e5ed-aafc-17b4a035e678",
  "kind": "theorem",
  "lexical_name": "finiteNonnegative_two_iff",
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
  "slug": "finitenonnegative-two-iff--f95314f88b83c35826bc5921",
  "source": {
    "blob": "e85d39b0f73a443ca3cd0465429847825193472b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f95314f88b83c35826bc5921361b4ad539c00cf6835048ccb6288c67affde943",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77400f2-3d4a-e5ed-aafc-17b4a035e678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteNonnegative_two_iff (M : Matrix (Fin 2) (Fin 2) ℝ) :
    Toeplitz.FiniteNonnegative M ↔ squareNonnegative2 M := by
  constructor
  · intro h
    constructor
    · intro i j
      let r : Fin 1 ↪o Fin 2 := OrderEmbedding.ofStrictMono (fun _ => i) (by
        intro u v huv
        exact False.elim (by have hu := u.isLt; have hv := v.isLt; omega))
      let c : Fin 1 ↪o Fin 2 := OrderEmbedding.ofStrictMono (fun _ => j) (by
        intro u v huv
        exact False.elim (by have hu := u.isLt; have hv := v.isLt; omega))
      have hh := h 1 r c
      change 0 ≤ (Matrix.of (fun _ _ : Fin 1 => M i j)).det at hh
      simpa only [Matrix.det_unique, Matrix.of_apply] using hh
    · exact h 2 (OrderEmbedding.id _) (OrderEmbedding.id _)
  · rintro ⟨he, hd⟩ k r c
    have hk : k ≤ 2 := by
      simpa using Fintype.card_le_of_injective r r.injective
    interval_cases k
    · change 0 ≤ (Matrix.of (fun i j : Fin 0 => M (r i) (c j))).det
      simp
    · change 0 ≤ (Matrix.of (fun i j : Fin 1 => M (r i) (c j))).det
      simpa only [Matrix.det_unique, Matrix.of_apply, Fin.default_eq_zero] using he (r 0) (c 0)
    · have hr : ∀ i : Fin 2, r i = i := by
        intro i
        have hlt := r.strictMono (by decide : (0 : Fin 2) < 1)
        have h0 := (r 0).isLt
        have h1 := (r 1).isLt
        apply Fin.ext
        fin_cases i <;> dsimp at * <;> omega
      have hc : ∀ i : Fin 2, c i = i := by
        intro i
        have hlt := c.strictMono (by decide : (0 : Fin 2) < 1)
        have h0 := (c 0).isLt
        have h1 := (c 1).isLt
        apply Fin.ext
        fin_cases i <;> dsimp at * <;> omega
      simpa only [hr, hc] using hd

/-- The existing six-coordinate criterion recognizes the five square-minor inequalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85d39b0f73a443ca3cd0465429847825193472b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
