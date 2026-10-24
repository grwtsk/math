# comp_P_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0281d97dc8393d05387ec5b68fb28f20042e38a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c25f9ef-1cc6-3d71-a0f7-70d93def0c19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:464199c2-05ba-c8f6-5707-3434e996d309",
  "kind": "theorem",
  "lexical_name": "comp_P_eq_self",
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
  "slug": "comp-p-eq-self--eea035bd44100602e861c8da",
  "source": {
    "blob": "c0281d97dc8393d05387ec5b68fb28f20042e38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eea035bd44100602e861c8da5da7cd5910b20c7421bea0041352ac1ebe42a1e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464199c2-05ba-c8f6-5707-3434e996d309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_P_eq_self {Y : C} {n q : ℕ} {φ : Y ⟶ X _⦋n + 1⦌} (v : HigherFacesVanish q φ) :
    φ ≫ (P q).f (n + 1) = φ := by
  induction q with
  | zero =>
    simp only [P_zero]
    apply comp_id
  | succ q hq =>
    simp only [P_succ, comp_add, HomologicalComplex.comp_f, HomologicalComplex.add_f_apply,
      comp_id, ← assoc, hq v.of_succ, add_eq_left]
    by_cases! hqn : n < q
    · exact v.of_succ.comp_Hσ_eq_zero hqn
    · obtain ⟨a, ha⟩ := Nat.le.dest hqn
      have hnaq : n = a + q := by lia
      simp only [v.of_succ.comp_Hσ_eq hnaq, neg_eq_zero, ← assoc]
      have eq := v ⟨a, by lia⟩ (by
        simp only [hnaq, add_assoc]
        rfl)
      simp only [Fin.succ_mk] at eq
      simp only [eq, zero_comp]

end HigherFacesVanish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variant45f37970da0c33386da786605b9d4bc227ebaabe9175653de48da41dbbd61cfa.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0281d97dc8393d05387ec5b68fb28f20042e38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
