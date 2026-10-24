# Poly.denoteS_combine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bef07089fb88e27643bc64183b037fa15b9362ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a396094c-296e-0ddb-7749-286394e40ec1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdea9159-1309-b5e7-9560-e0d1e7ab3d3b",
  "kind": "theorem",
  "lexical_name": "Poly.denoteS_combine",
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
  "slug": "poly-denotes-combine--6863510710034ae36361f4e8",
  "source": {
    "blob": "bef07089fb88e27643bc64183b037fa15b9362ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 166,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6863510710034ae36361f4e80966266a3d6c1941503c21e6001bc61b9b663a4c",
  "verification": {
    "reference": "docs/verification/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdea9159-1309-b5e7-9560-e0d1e7ab3d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteS_combine {α} [Semiring α] (ctx : Context α) (p₁ p₂ : Poly)
    : p₁.NonnegCoeffs → p₂.NonnegCoeffs → (combine p₁ p₂).denoteS ctx = p₁.denoteS ctx + p₂.denoteS ctx := by
  unfold combine; generalize hugeFuel = fuel
  fun_induction combine.go
  case case1 => intros; apply denoteS_concat <;> assumption
  case case2 => intro h₁ h₂; cases h₁; cases h₂; simp [denoteS, Int.toNat_add, natCast_add, *]
  case case3 => intro h₁ h₂; cases h₁; simp [denoteS, denoteS_addConst, add_comm, *]
  case case4 => intro h₁ h₂; cases h₂; simp [denoteS, denoteS_addConst, *]
  case case5 k₁ _ _ k₂ _ _ hg _ h ih =>
    intro h₁ h₂
    cases h₁; cases h₂
    simp +zetaDelta at h
    rename_i h₁ h₂ h₃ h₄
    simp [ih h₂ h₄, denoteS, Mon.eq_of_grevlex hg]
    replace h : k₂.toNat + k₁.toNat = 0 := by
      rw [← Int.toNat_add, Int.add_comm, h]; rfl; assumption; assumption
    rw [add_left_comm, ← add_assoc, ← add_assoc, ← right_distrib, ← natCast_add, h]
    simp
  case case6 hg k h ih =>
    intro h₁ h₂
    cases h₁; cases h₂
    simp +zetaDelta
    simp [denoteS, Int.toNat_add, natCast_add, right_distrib, Mon.eq_of_grevlex hg,
      add_left_comm, add_assoc, *]
  case case7 ih =>
    intro h₁ h₂; cases h₁
    rename_i h₁
    simp [denoteS, ih h₁ h₂, add_left_comm, add_assoc]
  case case8 ih =>
    intro h₁ h₂; cases h₂
    rename_i h₂
    simp [denoteS, ih h₁ h₂, add_left_comm, add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef07089fb88e27643bc64183b037fa15b9362ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
