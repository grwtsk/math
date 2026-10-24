# irreducible_of_coprime'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a86f59-e861-4c26-1e50-4f3bd30b9262",
  "kind": "theorem",
  "lexical_name": "irreducible_of_coprime'",
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
  "slug": "irreducible-of-coprime--d65bdb77a08e84900e5eb46f",
  "source": {
    "blob": "1c758074efe732915e64206e666ccc12ee0914b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 30,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variant6dedf4b979be0862d0803c97e9f10613bf346ed1a023e8eaa0d2e1920a3f6e20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d65bdb77a08e84900e5eb46fee1b896bdccc21e16ea73eb366d332cc874d8911",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/UnitTrinomial/Variant6dedf4b979be0862d0803c97e9f10613bf346ed1a023e8eaa0d2e1920a3f6e20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75a86f59-e861-4c26-1e50-4f3bd30b9262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_of_coprime' (hp : IsUnitTrinomial p)
    (h : ∀ z : ℂ, ¬(aeval z p = 0 ∧ aeval z (mirror p) = 0)) : Irreducible p := by
  refine hp.irreducible_of_coprime fun q hq hq' => ?_
  suffices ¬0 < q.natDegree by
    rcases hq with ⟨p, rfl⟩
    replace hp := hp.leadingCoeff_isUnit
    rw [leadingCoeff_mul] at hp
    replace hp := isUnit_of_mul_isUnit_left hp
    rw [not_lt, Nat.le_zero] at this
    rwa [eq_C_of_natDegree_eq_zero this, isUnit_C, ← this]
  intro hq''
  rw [natDegree_pos_iff_degree_pos] at hq''
  rw [← degree_map_eq_of_injective (algebraMap ℤ ℂ).injective_int] at hq''
  obtain ⟨z, hz⟩ := Complex.exists_root hq''
  rw [IsRoot, eval_map, ← aeval_def] at hz
  refine h z ⟨?_, ?_⟩
  · obtain ⟨g', hg'⟩ := hq
    rw [hg', aeval_mul, hz, zero_mul]
  · obtain ⟨g', hg'⟩ := hq'
    rw [hg', aeval_mul, hz, zero_mul]

end Polynomial.IsUnitTrinomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/UnitTrinomial/Variant6dedf4b979be0862d0803c97e9f10613bf346ed1a023e8eaa0d2e1920a3f6e20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variant6dedf4b979be0862d0803c97e9f10613bf346ed1a023e8eaa0d2e1920a3f6e20.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c758074efe732915e64206e666ccc12ee0914b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
