# cooper_unsat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8941836b-a287-c1ae-0d0c-2c824cd386f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3a268557-ec27-f38c-cd8c-7f41119c6ce4",
  "kind": "theorem",
  "lexical_name": "cooper_unsat",
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
  "slug": "cooper-unsat--5c4e99ed04cc72ec14622328",
  "source": {
    "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1857,
    "line": 1842,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c4e99ed04cc72ec14622328c4a1b833da75eba68b5626bcad03386c30ce8490",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a268557-ec27-f38c-cd8c-7f41119c6ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1842–1857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cooper_unsat (ctx : Context) (p₁ p₂ p₃ : Poly) (d : Int) (α β : Int)
   : cooper_unsat_cert p₁ p₂ p₃ d α β →
     p₁.denote' ctx ≤ 0 → p₂.denote' ctx ≤ 0 → d ∣ p₃.denote' ctx → False := by
  unfold cooper_unsat_cert <;> cases p₁ <;> cases p₂ <;> cases p₃ <;> simp only [Poly.casesOnAdd,
    Bool.false_eq_true, Poly.denote'_add, false_implies]
  rename_i k₁ x p₁ k₂ y p₂ c z p₃
  cases p₁ <;> cases p₂ <;> cases p₃ <;> simp only [Poly.casesOnNum, Int.reduceNeg,
    Bool.and'_eq_and, Int.beq'_eq, Nat.beq_eq, Bool.and_eq_true, decide_eq_true_eq,
    and_imp, Bool.false_eq_true, false_implies, Poly.denote]
  rename_i a b e
  intro _ _ _ _; subst k₁ k₂ y z
  intro h₁ h₃ h₆; generalize Var.denote ctx x = x'
  intro h₄ h₅ h₂
  rw [Int.one_mul] at h₅
  exact cooper_unsat' h₁ h₂ h₃ h₄ h₅ h₆

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean#L1842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43335f1fbd938bca5e0516fa91279a56144dc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
