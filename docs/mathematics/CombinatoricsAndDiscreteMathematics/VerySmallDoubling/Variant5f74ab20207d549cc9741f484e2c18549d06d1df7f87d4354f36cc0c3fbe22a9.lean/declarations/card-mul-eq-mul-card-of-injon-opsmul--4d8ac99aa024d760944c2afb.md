# card_mul_eq_mul_card_of_injOn_opSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f1e7b40-4839-ad21-ada9-d90f88517904",
  "kind": "lemma",
  "lexical_name": "card_mul_eq_mul_card_of_injOn_opSMul",
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
  "slug": "card-mul-eq-mul-card-of-injon-opsmul--4d8ac99aa024d760944c2afb",
  "source": {
    "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d8ac99aa024d760944c2afb4dac8d34c188d58de7b5c32e2e589a9dcb9ba4f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f1e7b40-4839-ad21-ada9-d90f88517904`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_mul_eq_mul_card_of_injOn_opSMul {H : Subgroup G} [Fintype H]
    {Z : Finset G} (hZ : (Z : Set G).InjOn ((H : Set G) <• ·)) :
    Fintype.card H * #Z = #(Set.toFinset H * Z) := by
  rw [card_mul_iff.2]
  · simp
  rintro ⟨h₁, z₁⟩ ⟨hh₁, hz₁⟩ ⟨h₂, z₂⟩ ⟨hh₂, hz₂⟩ h
  simp only [Set.coe_toFinset, SetLike.mem_coe] at *
  obtain rfl := hZ hz₁ hz₂ <| (rightCoset_eq_iff _).2 <| by
    simpa [eq_inv_mul_iff_mul_eq.2 h, mul_assoc] using mul_mem (inv_mem hh₂) hh₁
  simp_all

open goldenRatio in
/-- If `A` has doubling `K` strictly less than `φ`, then `A * A⁻¹` is covered by
at most a constant number of cosets of a finite subgroup of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
