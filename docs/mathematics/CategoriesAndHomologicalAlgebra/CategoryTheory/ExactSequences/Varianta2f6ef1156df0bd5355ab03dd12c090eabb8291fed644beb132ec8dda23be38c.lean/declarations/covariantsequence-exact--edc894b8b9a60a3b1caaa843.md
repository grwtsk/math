# covariantSequence_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df95b3b2-036e-534e-e406-f4727b9108a9",
  "kind": "lemma",
  "lexical_name": "covariantSequence_exact",
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
  "slug": "covariantsequence-exact--edc894b8b9a60a3b1caaa843",
  "source": {
    "blob": "fce80314f7f2b00a96524d071b4f821965cad152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edc894b8b9a60a3b1caaa843e28fef5e0534af3c2e7a0d9abf8b65fc5669192c",
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

Occurrence: `result:df95b3b2-036e-534e-e406-f4727b9108a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covariantSequence_exact :
    (covariantSequence X hS n₀ n₁ h).Exact :=
  exact_of_δ₀ (covariant_sequence_exact₂' X hS n₀).exact_toComposableArrows
    (exact_of_δ₀ (covariant_sequence_exact₃' X hS n₀ n₁ h).exact_toComposableArrows
      (exact_of_δ₀ (covariant_sequence_exact₁' X hS n₀ n₁ h).exact_toComposableArrows
        (covariant_sequence_exact₂' X hS n₁).exact_toComposableArrows))

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce80314f7f2b00a96524d071b4f821965cad152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
