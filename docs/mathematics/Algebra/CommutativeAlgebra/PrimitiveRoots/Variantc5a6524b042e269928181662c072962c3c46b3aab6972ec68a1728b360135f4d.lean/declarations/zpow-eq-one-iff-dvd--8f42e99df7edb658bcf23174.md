# zpow_eq_one_iff_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b5111a7-e273-11bb-0557-452b5d82923a",
  "kind": "theorem",
  "lexical_name": "zpow_eq_one_iff_dvd",
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
  "slug": "zpow-eq-one-iff-dvd--8f42e99df7edb658bcf23174",
  "source": {
    "blob": "217096023fbc613883b9a611910c5833baf089ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 363,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f42e99df7edb658bcf231741d9607f102c0faad3d4f001a735d6d123726bb2b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b5111a7-e273-11bb-0557-452b5d82923a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zpow_eq_one_iff_dvd (h : IsPrimitiveRoot ζ k) (l : ℤ) : ζ ^ l = 1 ↔ (k : ℤ) ∣ l := by
  by_cases h0 : 0 ≤ l
  · lift l to ℕ using h0; exact_mod_cast h.pow_eq_one_iff_dvd l
  · have : 0 ≤ -l := (Int.neg_pos_of_neg <| Int.lt_of_not_ge h0).le
    lift -l to ℕ using this with l' hl'
    rw [← dvd_neg, ← hl']
    norm_cast
    rw [← h.pow_eq_one_iff_dvd, ← inv_inj, ← zpow_neg, ← hl', zpow_natCast, inv_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217096023fbc613883b9a611910c5833baf089ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
