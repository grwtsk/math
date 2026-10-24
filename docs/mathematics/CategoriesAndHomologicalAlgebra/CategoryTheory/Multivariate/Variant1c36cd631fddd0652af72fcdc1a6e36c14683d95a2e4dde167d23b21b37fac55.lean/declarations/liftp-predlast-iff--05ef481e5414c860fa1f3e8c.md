# LiftP_PredLast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0cff0c97596472f824e2cb9be39c8615c660d267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:107d9748-9327-de86-4ac8-04c0f60b15a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acd31b4e-7e2a-259e-47da-996534e3b1ec",
  "kind": "theorem",
  "lexical_name": "LiftP_PredLast_iff",
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
  "slug": "liftp-predlast-iff--05ef481e5414c860fa1f3e8c",
  "source": {
    "blob": "0cff0c97596472f824e2cb9be39c8615c660d267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 167,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05ef481e5414c860fa1f3e8c0606e5b566353de214470ece45814b8c05d68df8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd31b4e-7e2a-259e-47da-996534e3b1ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LiftP_PredLast_iff {β} (P : β → Prop) (x : F (α ::: β)) :
    LiftP' (PredLast' _ P) x ↔ LiftP (PredLast _ P) x := by
  dsimp only [LiftP, LiftP']
  apply exists_iff_exists_of_mono F (f _ n α) (g _ n α)
  · ext i ⟨x, _⟩
    cases i <;> rfl
  · intros
    rw [MvFunctor.map_map]
    dsimp +unfoldPartialApp [(· ⊚ ·)]
    suffices (fun i => Subtype.val) = (fun i x => (MvFunctor.f P n α i x).val) by rw [this]
    ext i ⟨x, _⟩
    cases i <;> rfl

open Function

variable (rr : β → β → Prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multivariate/Variant1c36cd631fddd0652af72fcdc1a6e36c14683d95a2e4dde167d23b21b37fac55.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cff0c97596472f824e2cb9be39c8615c660d267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
