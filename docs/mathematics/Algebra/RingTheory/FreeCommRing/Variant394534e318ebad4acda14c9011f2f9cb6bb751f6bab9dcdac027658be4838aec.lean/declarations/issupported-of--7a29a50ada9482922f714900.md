# isSupported_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19b89e5c-9494-655a-fe92-1ec27992c381",
  "kind": "theorem",
  "lexical_name": "isSupported_of",
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
  "slug": "issupported-of--7a29a50ada9482922f714900",
  "source": {
    "blob": "7b8e179e29b4d3ea7cea9eae39a161f905f2bb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 243,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a29a50ada9482922f714900133b88dbcfd0688b8a18dca499c0b0828d29f238",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19b89e5c-9494-655a-fe92-1ec27992c381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSupported_of {p} {s : Set α} : IsSupported (of p) s ↔ p ∈ s :=
  suffices IsSupported (of p) s → p ∈ s from ⟨this, fun hps => Subring.subset_closure ⟨p, hps, rfl⟩⟩
  fun hps : IsSupported (of p) s => by
  haveI := Classical.decPred s
  have : ∀ x, IsSupported x s →
        ∃ n : ℤ, lift (fun a => if a ∈ s then (0 : ℤ[X]) else Polynomial.X) x = n := by
    intro x hx
    refine' Subring.InClosure.recOn hx _ _ _ _
    · use 1
      rw [RingHom.map_one]
      norm_cast
    · use -1
      rw [RingHom.map_neg, RingHom.map_one, Int.cast_neg, Int.cast_one]
    · rintro _ ⟨z, hzs, rfl⟩ _ _
      use 0
      rw [RingHom.map_mul, lift_of, if_pos hzs, zero_mul]
      norm_cast
    · rintro x y ⟨q, hq⟩ ⟨r, hr⟩
      refine' ⟨q + r, _⟩
      rw [RingHom.map_add, hq, hr]
      norm_cast
  specialize this (of p) hps
  rw [lift_of] at this
  split_ifs at this with h
  · exact h
  exfalso
  apply Ne.symm Int.zero_ne_one
  rcases this with ⟨w, H⟩
  rw [← Polynomial.C_eq_int_cast] at H
  have : Polynomial.X.coeff 1 = (Polynomial.C ↑w).coeff 1 := by rw [H]; rfl
  rwa [Polynomial.coeff_C, if_neg (one_ne_zero : 1 ≠ 0), Polynomial.coeff_X, if_pos rfl] at this
#align free_comm_ring.is_supported_of FreeCommRing.isSupported_of

-- Porting note: Changed `(Subtype.val : s → α)` to `(↑)` in the type
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8e179e29b4d3ea7cea9eae39a161f905f2bb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
