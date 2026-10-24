# map_of_mul_left_rel_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae76116e-1edb-361e-1eea-f94ee6c737f9",
  "kind": "theorem",
  "lexical_name": "map_of_mul_left_rel_one",
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
  "slug": "map-of-mul-left-rel-one--eb48e782ec143f1091bac523",
  "source": {
    "blob": "2e85153085a2a9a4befadf559b9a13ac81ad47ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 645,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb48e782ec143f1091bac523ad337ea1b7c8a646cd29dcab46c06930648d7a33",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae76116e-1edb-361e-1eea-f94ee6c737f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_of_mul_left_rel_one [Monoid M] (c : Con M)
    (f : M → M) (hf : ∀ x, c (f x * x) 1) {x y} (h : c x y) : c (f x) (f y) := by
  simp only [← Con.eq, coe_one, coe_mul] at *
  have hf' : ∀ x : M, (x : c.Quotient) * f x = 1 := fun x ↦
    calc
      (x : c.Quotient) * f x = f (f x) * f x * (x * f x) := by simp [hf]
      _ = f (f x) * (f x * x) * f x := by simp_rw [mul_assoc]
      _ = 1 := by simp [hf]
  have : (⟨_, _, hf' x, hf x⟩ : c.Quotientˣ) = ⟨_, _, hf' y, hf y⟩ := Units.ext h
  exact congr_arg Units.inv this

end Monoids

section Groups

variable [Group M] (c : Con M)

/-- Multiplicative congruence relations preserve inversion. -/
@[to_additive /-- Additive congruence relations preserve negation. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant8c261d24f6156a028e1c8a998d01c63b54f16b249874124a251445f8f4b2c7a3.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e85153085a2a9a4befadf559b9a13ac81ad47ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
