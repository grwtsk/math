# coeff_bdd_of_roots_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87537892d353db838d46a2848ff912c9edef8b8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90dc1bb4-0d2c-6470-4fd0-015d3031f003",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21ac003d-d47b-b2b0-4017-d1c7b01a8797",
  "kind": "theorem",
  "lexical_name": "coeff_bdd_of_roots_le",
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
  "slug": "coeff-bdd-of-roots-le--3682d581486448341b17d24f",
  "source": {
    "blob": "87537892d353db838d46a2848ff912c9edef8b8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 192,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3682d581486448341b17d24fc00025e590150522e898885d781cafcac6d35b3c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ac003d-d47b-b2b0-4017-d1c7b01a8797`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_bdd_of_roots_le {B : ℝ} {d : ℕ} (f : F →+* K) {p : F[X]} (h1 : p.Monic)
    (h2 : Splits f p) (h3 : p.natDegree ≤ d) (h4 : ∀ z ∈ (map f p).roots, ‖z‖ ≤ B) (i : ℕ) :
    ‖(map f p).coeff i‖ ≤ max B 1 ^ d * d.choose (d / 2) := by
  obtain hB | hB := le_or_lt 0 B
  · apply (coeff_le_of_roots_le i h1 h2 h4).trans
    calc
      _ ≤ max B 1 ^ (p.natDegree - i) * p.natDegree.choose i := by gcongr; apply le_max_left
      _ ≤ max B 1 ^ d * p.natDegree.choose i := by
        gcongr; apply le_max_right; exact le_trans (Nat.sub_le _ _) h3
      _ ≤ max B 1 ^ d * d.choose (d / 2) := by
        gcongr; exact (i.choose_mono h3).trans (i.choose_le_middle d)
  · rw [eq_one_of_roots_le hB h1 h2 h4, Polynomial.map_one, coeff_one]
    refine' _root_.trans _
      (one_le_mul_of_one_le_of_one_le (one_le_pow_of_one_le (le_max_right B 1) d) _)
    · split_ifs <;> norm_num
    · exact_mod_cast Nat.succ_le_iff.mpr (Nat.choose_pos (d.div_le_self 2))
#align polynomial.coeff_bdd_of_roots_le Polynomial.coeff_bdd_of_roots_le

end Roots

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant2d9f7ceda362e31402148e0203e7bcbc2e4f8737565c0b7b3afa319df823751b.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87537892d353db838d46a2848ff912c9edef8b8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
