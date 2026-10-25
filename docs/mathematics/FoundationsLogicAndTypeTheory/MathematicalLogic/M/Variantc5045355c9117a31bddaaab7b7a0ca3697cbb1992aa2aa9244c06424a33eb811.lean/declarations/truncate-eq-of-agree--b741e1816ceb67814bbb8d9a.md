# truncate_eq_of_agree

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
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2527565f-0018-d2c6-fe2f-cf8b6aa7ad72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:278c2660-3b8a-0f40-00c4-cfe0e466b85a",
  "kind": "theorem",
  "lexical_name": "truncate_eq_of_agree",
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
  "slug": "truncate-eq-of-agree--b741e1816ceb67814bbb8d9a",
  "source": {
    "blob": "2a55802af1401b592918670a607c98f0339995ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b741e1816ceb67814bbb8d9a05c2096d356c40feb7592bab6c2922072e693f0a",
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

Occurrence: `result:278c2660-3b8a-0f40-00c4-cfe0e466b85a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncate_eq_of_agree {n : ℕ} (x : CofixA F n) (y : CofixA F (succ n)) (h : Agree x y) :
    truncate y = x := by
  induction n <;> cases x <;> cases y
  · rfl
  · -- cases' h with _ _ _ _ _ h₀ h₁
    cases h
    simp only [truncate, Function.comp, true_and_iff, eq_self_iff_true, heq_iff_eq]
    -- porting note: used to be `ext y`
    rename_i n_ih a f y h₁
    suffices (fun x => truncate (y x)) = f
      by simp [this]; try (exact HEq.rfl;)
    funext y

    apply n_ih
    apply h₁
#align pfunctor.approx.truncate_eq_of_agree PFunctor.Approx.truncate_eq_of_agree

variable {X : Type w}

variable (f : X → F.Obj X)

/-- `sCorec f i n` creates an approximation of height `n`
of the final coalgebra of `f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a55802af1401b592918670a607c98f0339995ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
