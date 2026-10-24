# ncard_primesOver_mul_ncard_primesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c0d9b3e-1737-21e5-9c8f-ffa7b3c27f25",
  "kind": "theorem",
  "lexical_name": "ncard_primesOver_mul_ncard_primesOver",
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
  "slug": "ncard-primesover-mul-ncard-primesover--c12a9c96e53f4773d45f411c",
  "source": {
    "blob": "8c89b4a440226e6a070fd925a209d45476953946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 252,
    "path": "GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c12a9c96e53f4773d45f411c94c6acb1fae1954ec1dee24937c044edecbe2b45",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c0d9b3e-1737-21e5-9c8f-ffa7b3c27f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_primesOver_mul_ncard_primesOver :
    (p.primesOver B).ncard * (P.primesOver C).ncard = (p.primesOver C).ncard := by
  have : Algebra.IsIntegral A C := isInvariant.isIntegral A C GAC
  have : Algebra.IsIntegral B C := Algebra.IsIntegral.tower_top A
  let f := restrictHom GAC G A B C
  let H := (stabilizer G P).comap f
  have key (Q Q' : Ideal C) [Q.LiesOver P] [Q'.LiesOver P] g (hg : g • Q = Q') : g ∈ H := by
    simpa [← restrictHom_smul_under GAC G A, ← over_def _ P, H] using congr_arg (under B) hg
  obtain ⟨Q, _, _⟩ := (inferInstance : Nonempty (P.primesOver C))
  have : Q.LiesOver p := .trans Q P p
  have orbit_eq : orbit H Q = P.primesOver C := by
    ext Q'
    constructor
    · rintro ⟨g, rfl : g • Q = Q'⟩
      refine ⟨inferInstance, ?_⟩
      rw [liesOver_iff, H.smul_def, ← restrictHom_smul_under GAC G A B C, ← Q.over_def P]
      exact g.2.symm
    · rintro ⟨_, _⟩
      have : Q'.LiesOver p := .trans Q' P p
      obtain ⟨g, hg⟩ :=
        IsInvariant.exists_smul_of_under_eq A C GAC Q Q' ((Q.over_def p).symm.trans (Q'.over_def p))
      exact ⟨⟨g, key Q Q' g hg.symm⟩, by simpa [Subgroup.smul_def] using hg.symm⟩
  have stabilizer_eq : stabilizer H Q = (stabilizer GAC Q).subgroupOf H := by
    simp [Subgroup.ext_iff, Subgroup.mem_subgroupOf]
  rw [← IsInvariant.orbit_eq_primesOver A B G p P, ← index_stabilizer,
    ← orbit_eq, ← index_stabilizer, stabilizer_eq, ← Subgroup.relIndex,
    ← IsInvariant.orbit_eq_primesOver A C GAC p Q, ← index_stabilizer,
    ← (stabilizer G P).index_comap_of_surjective (restrictHom_surjective GAC G A B C),
    mul_comm, Subgroup.relIndex_mul_index]
  exact key Q Q

end tower

section inertia

variable {R S G : Type*} [CommRing R] [CommRing S] [Algebra R S] [Group G]
  [MulSemiringAction G S] [IsGaloisGroup G R S] [Finite G]

open scoped Pointwise

open Algebra

attribute [local instance] Ideal.Quotient.field in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant61d1f756eab390340e44ef64e08aa14a3ec1356a15e735b86b0047e74c02177f.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c89b4a440226e6a070fd925a209d45476953946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
