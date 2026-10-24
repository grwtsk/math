# rootMultiplicity_eq_nat_find_of_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddfedbd9-1c42-6b5f-2b8e-f0cf70407489",
  "kind": "theorem",
  "lexical_name": "rootMultiplicity_eq_nat_find_of_nonzero",
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
  "slug": "rootmultiplicity-eq-nat-find-of-nonzero--5bc9bf458267c8f868075b5c",
  "source": {
    "blob": "951f7c94a3e6309326aa3aafd74c3def3350f5c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 519,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variant111653d2ed64cc8fc6da6cf63c93b728b7349e3b2106f1e6271e920d708938ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc9bf458267c8f868075b5c61cc58881f3df8c2a40895a58de697f2f7f208bc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variant111653d2ed64cc8fc6da6cf63c93b728b7349e3b2106f1e6271e920d708938ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfedbd9-1c42-6b5f-2b8e-f0cf70407489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootMultiplicity_eq_nat_find_of_nonzero [DecidableEq R] {p : R[X]} (p0 : p ≠ 0) {a : R} :
    letI : DecidablePred fun n : ℕ => ¬(X - C a) ^ (n + 1) ∣ p := fun n =>
      have := decidableDvdMonic p ((monic_X_sub_C a).pow (n + 1))
      inferInstanceAs (Decidable ¬_)
    rootMultiplicity a p = Nat.find (finiteMultiplicity_X_sub_C a p0) := by
  dsimp [rootMultiplicity]
  cases Subsingleton.elim ‹DecidableEq R› (Classical.decEq R)
  rw [dif_neg p0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variant111653d2ed64cc8fc6da6cf63c93b728b7349e3b2106f1e6271e920d708938ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variant111653d2ed64cc8fc6da6cf63c93b728b7349e3b2106f1e6271e920d708938ff.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `951f7c94a3e6309326aa3aafd74c3def3350f5c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
