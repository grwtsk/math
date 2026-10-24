# Monoid.exponent_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e0aa1d56772413a72fd3aec68bd4027a5ac2537",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:726da97d-51c6-d78e-d3d6-eb31eeb60d08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fd0f854-484e-46f9-d01b-26fa1146843d",
  "kind": "theorem",
  "lexical_name": "Monoid.exponent_prod",
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
  "slug": "monoid-exponent-prod--6fa53844e5a9676080df4bea",
  "source": {
    "blob": "8e0aa1d56772413a72fd3aec68bd4027a5ac2537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 577,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fa53844e5a9676080df4bea43e9a9a4f356fe4031b1c961ed46f7ed5b0bea8b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fd0f854-484e-46f9-d01b-26fa1146843d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monoid.exponent_prod {M₁ M₂ : Type*} [Monoid M₁] [Monoid M₂] :
    exponent (M₁ × M₂) = lcm (exponent M₁) (exponent M₂) := by
  refine dvd_antisymm ?_ (lcm_dvd ?_ ?_)
  · refine exponent_dvd_of_forall_pow_eq_one fun g ↦ ?_
    ext1
    · rw [Prod.pow_fst, Prod.fst_one, ← orderOf_dvd_iff_pow_eq_one]
      exact dvd_trans (Monoid.order_dvd_exponent (g.1)) <| dvd_lcm_left _ _
    · rw [Prod.pow_snd, Prod.snd_one, ← orderOf_dvd_iff_pow_eq_one]
      exact dvd_trans (Monoid.order_dvd_exponent (g.2)) <| dvd_lcm_right _ _
  · exact MonoidHom.exponent_dvd (f := MonoidHom.fst M₁ M₂) Prod.fst_surjective
  · exact MonoidHom.exponent_dvd (f := MonoidHom.snd M₁ M₂) Prod.snd_surjective

end PiProd

/-! # Properties of monoids with exponent two -/

section ExponentTwo

section Monoid

variable [Monoid G]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variantb6a245aa532b1a7c5e04cb6f52ed02f778a3649d8effa883afff2e0303999c38.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0aa1d56772413a72fd3aec68bd4027a5ac2537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
