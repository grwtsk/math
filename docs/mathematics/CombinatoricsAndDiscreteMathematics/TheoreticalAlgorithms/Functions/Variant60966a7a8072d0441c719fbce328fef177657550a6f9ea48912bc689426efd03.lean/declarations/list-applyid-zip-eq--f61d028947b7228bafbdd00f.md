# List.applyId_zip_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:055b990f-153e-cb19-0d2e-24b22f026e04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cc4dfee-6a06-0477-b37e-8ec5418445a7",
  "kind": "theorem",
  "lexical_name": "List.applyId_zip_eq",
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
  "slug": "list-applyid-zip-eq--f61d028947b7228bafbdd00f",
  "source": {
    "blob": "36046a297dc7d6c498c9c3b851fb473f7714c06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f61d028947b7228bafbdd00f14b0ea0530a872fb14b4610c32a3a76c1ca7587d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cc4dfee-6a06-0477-b37e-8ec5418445a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem List.applyId_zip_eq [DecidableEq α] {xs ys : List α} (h₀ : List.Nodup xs)
    (h₁ : xs.length = ys.length) (x y : α) (i : ℕ) (h₂ : xs[i]? = some x) :
    List.applyId.{u} (xs.zip ys) x = y ↔ ys[i]? = some y := by
  induction xs generalizing ys i with
  | nil => cases h₂
  | cons x' xs xs_ih =>
    cases i
    · simp only [length_cons, lt_add_iff_pos_left, add_pos_iff, Nat.lt_add_one, or_true,
        getElem?_eq_getElem, getElem_cons_zero, Option.some.injEq] at h₂
      subst h₂
      cases ys
      · cases h₁
      · simp
    · cases ys
      · cases h₁
      · obtain - | ⟨h₀, h₁⟩ := h₀
        simp only [getElem?_cons_succ, zip_cons_cons, applyId_cons] at h₂ ⊢
        rw [if_neg]
        · apply xs_ih <;> solve_by_elim [Nat.succ.inj]
        · apply h₀; apply List.mem_of_getElem? h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variant60966a7a8072d0441c719fbce328fef177657550a6f9ea48912bc689426efd03.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36046a297dc7d6c498c9c3b851fb473f7714c06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
