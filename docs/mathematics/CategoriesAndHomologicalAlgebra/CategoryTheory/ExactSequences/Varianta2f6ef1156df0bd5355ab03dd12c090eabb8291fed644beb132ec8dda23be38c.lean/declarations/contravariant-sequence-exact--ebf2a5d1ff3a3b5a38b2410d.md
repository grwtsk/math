# contravariant_sequence_exact₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a267cefc-6cc9-b10f-f8d1-b93fb59f8712",
  "kind": "lemma",
  "lexical_name": "contravariant_sequence_exact₃",
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
  "slug": "contravariant-sequence-exact--ebf2a5d1ff3a3b5a38b2410d",
  "source": {
    "blob": "fce80314f7f2b00a96524d071b4f821965cad152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebf2a5d1ff3a3b5a38b2410d19612681f1ba7333c2f2c2da3787041eb471e7ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a267cefc-6cc9-b10f-f8d1-b93fb59f8712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contravariant_sequence_exact₃ {n₁ : ℕ} (x₃ : Ext S.X₃ Y n₁)
    (hx₃ : (mk₀ S.g).comp x₃ (zero_add n₁) = 0) {n₀ : ℕ} (hn₀ : 1 + n₀ = n₁) :
    ∃ (x₁ : Ext S.X₁ Y n₀), hS.extClass.comp x₁ hn₀ = x₃ := by
  have := contravariant_sequence_exact₃' hS Y n₀ n₁ hn₀
  rw [ShortComplex.ab_exact_iff] at this
  exact this x₃ hx₃

end ContravariantSequence

end Ext

end Abelian

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce80314f7f2b00a96524d071b4f821965cad152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
