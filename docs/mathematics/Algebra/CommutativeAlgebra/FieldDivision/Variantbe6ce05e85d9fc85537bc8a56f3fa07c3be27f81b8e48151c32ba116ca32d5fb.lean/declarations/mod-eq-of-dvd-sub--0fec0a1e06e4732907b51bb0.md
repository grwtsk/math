# mod_eq_of_dvd_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d348966645e5ccb84849fe1909107ca263ffa6cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 727,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be6ce05e85d9fc85537bc8a56f3fa07c3be27f81b8e48151c32ba116ca32d5fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8953015a-272f-3764-6779-4e1bd4203416",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fde1b1bd-5507-1a7c-1f57-80943b5a77c0",
  "kind": "theorem",
  "lexical_name": "mod_eq_of_dvd_sub",
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
  "slug": "mod-eq-of-dvd-sub--0fec0a1e06e4732907b51bb0",
  "source": {
    "blob": "d348966645e5ccb84849fe1909107ca263ffa6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 727,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variantbe6ce05e85d9fc85537bc8a56f3fa07c3be27f81b8e48151c32ba116ca32d5fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fec0a1e06e4732907b51bb04658673428896e49d913c16993b1f1bbef84fce6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FieldDivision/Variantbe6ce05e85d9fc85537bc8a56f3fa07c3be27f81b8e48151c32ba116ca32d5fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde1b1bd-5507-1a7c-1f57-80943b5a77c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_eq_of_dvd_sub {p₁ p₂ q : R[X]} (h : q ∣ p₁ - p₂) : p₁ % q = p₂ % q := by
  obtain rfl | hq := eq_or_ne q 0
  · simpa [sub_eq_zero] using h
  simp_rw [Polynomial.mod_def]
  apply Polynomial.modByMonic_eq_of_dvd_sub (by simp [Polynomial.Monic.def, hq])
  rw [mul_comm]
  exact (Polynomial.C_mul_dvd (by simpa using hq)).mpr h

end Field

end Polynomial

namespace Irreducible

variable {F : Type*} [DivisionSemiring F] {f : F[X]}

/-- An irreducible polynomial over a field must have positive degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FieldDivision/Variantbe6ce05e85d9fc85537bc8a56f3fa07c3be27f81b8e48151c32ba116ca32d5fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variantbe6ce05e85d9fc85537bc8a56f3fa07c3be27f81b8e48151c32ba116ca32d5fb.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d348966645e5ccb84849fe1909107ca263ffa6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
