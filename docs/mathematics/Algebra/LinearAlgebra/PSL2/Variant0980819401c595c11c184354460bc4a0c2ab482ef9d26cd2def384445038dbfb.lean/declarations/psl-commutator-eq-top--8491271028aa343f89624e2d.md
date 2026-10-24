# PSL_commutator_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c9e783f-92d7-2b0f-bc25-3353b53a727d",
  "kind": "lemma",
  "lexical_name": "PSL_commutator_eq_top",
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
  "slug": "psl-commutator-eq-top--8491271028aa343f89624e2d",
  "source": {
    "blob": "e83bb7a6572703ebc90b4a94500e07bfc3acb774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8491271028aa343f89624e2d178bca8e3aa97370d8a57aa21a20d90a76656300",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c9e783f-92d7-2b0f-bc25-3353b53a727d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PSL_commutator_eq_top (hF : ∃ a : F, a ≠ 0 ∧ a ^ 2 ≠ 1) :
    commutator PSL(2, F) = ⊤ := by
  obtain ⟨a, ha, hasq⟩ := hF
  have : Group.IsPerfect SL(2, F) := ⟨SL2.commutator_eq_top ha hasq⟩
  have : Group.IsPerfect (Matrix.ProjectiveSpecialLinearGroup (Fin 2) F) := inferInstance
  exact this.commutator_eq_top

/-- `PSL ι F` is nontrivial whenever `ι` has at least two elements (and `F` is a field,
hence in particular nontrivial). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PSL2/Variant0980819401c595c11c184354460bc4a0c2ab482ef9d26cd2def384445038dbfb.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83bb7a6572703ebc90b4a94500e07bfc3acb774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
