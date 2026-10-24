# lapMatrix_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdc200d3-601d-5e72-6c9c-a07f27ca0d4e",
  "kind": "theorem",
  "lexical_name": "lapMatrix_top",
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
  "slug": "lapmatrix-top--d2417dc2da0134d85d4b5bdd",
  "source": {
    "blob": "f211046e228ee9f5ae10ef17a259a3df5c378792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 168,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2417dc2da0134d85d4b5bdd3b3340510bd430b44958983210742870397a0986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc200d3-601d-5e72-6c9c-a07f27ca0d4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lapMatrix_top [AddGroupWithOne R] :
    (⊤ : SimpleGraph V).lapMatrix R = Fintype.card V - .of 1 := by
  ext i j
  rcases eq_or_ne i j with rfl | h
  · simp [lapMatrix, Nat.cast_pred <| Fintype.card_pos_iff.mpr ⟨i⟩, sub_eq_add_neg]
  · simp [lapMatrix, Matrix.natCast_apply, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f211046e228ee9f5ae10ef17a259a3df5c378792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
