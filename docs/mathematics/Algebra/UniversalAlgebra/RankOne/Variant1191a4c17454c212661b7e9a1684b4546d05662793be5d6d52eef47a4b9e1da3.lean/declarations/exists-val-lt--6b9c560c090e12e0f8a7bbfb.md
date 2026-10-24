# exists_val_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34e24ceff7ab2be991953c1ca88b516b1b4d6561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05786a71-dabf-998b-8965-c96887d5c123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46b06033-a807-df72-25ee-30c96ca8b88e",
  "kind": "theorem",
  "lexical_name": "exists_val_lt",
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
  "slug": "exists-val-lt--6b9c560c090e12e0f8a7bbfb",
  "source": {
    "blob": "34e24ceff7ab2be991953c1ca88b516b1b4d6561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 147,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b9c560c090e12e0f8a7bbfbbfe3e16a6d32d4153c3635f8d4db1244500732b9",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46b06033-a807-df72-25ee-30c96ca8b88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_val_lt {γ : ℝ≥0} (hγ : γ ≠ 0) : ∃ x ≠ 0, RankOne.hom v (v.restrict x) < γ := by
  have hγ_pos : 0 < γ := pos_iff_ne_zero.mpr hγ
  obtain ⟨x, h⟩ := NNReal.exists_lt_of_strictMono (RankOne.strictMono v.restrict) hγ_pos
  obtain ⟨k, hk⟩ := ValueGroup₀.restrict₀_surjective _ x.val
  refine ⟨k, ?_, ?_⟩
  · simp only [restrict₀_apply, MonoidWithZeroHom.coe_ofClass, restrict_def, map_eq_zero] at hk
    by_contra h0
    rw [dite_eq_left (by simp [h0]), eq_comm] at hk
    simp at hk
  · convert! h
    simp only [restrict_RankOne_hom_eq, coe_comp, Function.comp_apply, ← hk]
    congr 1
    exact (embedding_restrict₀ k).symm

end Restrict

end RankOne

namespace RankLeOne

variable {K : Type*} [DivisionRing K] (v : Valuation K Γ₀) [RankLeOne v]

/-- If a valuation has rank at most one and is non trivial,
then it has rank one -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant1191a4c17454c212661b7e9a1684b4546d05662793be5d6d52eef47a4b9e1da3.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34e24ceff7ab2be991953c1ca88b516b1b4d6561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
