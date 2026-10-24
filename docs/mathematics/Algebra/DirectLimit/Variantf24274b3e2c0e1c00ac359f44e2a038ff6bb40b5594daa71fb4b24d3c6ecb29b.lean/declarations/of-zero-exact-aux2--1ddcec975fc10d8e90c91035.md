# of.zero_exact_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718f8d26-7a5b-e8eb-93b0-f27a79876aa1",
  "kind": "theorem",
  "lexical_name": "of.zero_exact_aux2",
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
  "slug": "of-zero-exact-aux2--1ddcec975fc10d8e90c91035",
  "source": {
    "blob": "3b9f0d236c2253f0260e5e04c2eec13a1a259f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 491,
    "path": "GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ddcec975fc10d8e90c91035c24ed44096bc3da2294af575f16156dd91dd2a95",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718f8d26-7a5b-e8eb-93b0-f27a79876aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of.zero_exact_aux2 {x : FreeCommRing (Σi, G i)} {s t} (hxs : IsSupported x s) {j k}
    (hj : ∀ z : Σi, G i, z ∈ s → z.1 ≤ j) (hk : ∀ z : Σi, G i, z ∈ t → z.1 ≤ k) (hjk : j ≤ k)
    (hst : s ⊆ t) :
    f' j k hjk (lift (fun ix : s => f' ix.1.1 j (hj ix ix.2) ix.1.2) (restriction s x)) =
      lift (fun ix : t => f' ix.1.1 k (hk ix ix.2) ix.1.2) (restriction t x) := by
  refine' Subring.InClosure.recOn hxs _ _ _ _
  · rw [(restriction _).map_one, (FreeCommRing.lift _).map_one, (f' j k hjk).map_one,
      (restriction _).map_one, (FreeCommRing.lift _).map_one]
  · -- porting note: Lean 3 had `(FreeCommRing.lift _).map_neg` but I needed to replace it with
  -- `RingHom.map_neg` to get the rewrite to compile
    rw [(restriction _).map_neg, (restriction _).map_one, RingHom.map_neg,
      (FreeCommRing.lift _).map_one, (f' j k hjk).map_neg, (f' j k hjk).map_one,
      -- porting note: similarly here I give strictly less information
      (restriction _).map_neg, (restriction _).map_one, RingHom.map_neg,
      (FreeCommRing.lift _).map_one]
  · rintro _ ⟨p, hps, rfl⟩ n ih
    rw [(restriction _).map_mul, (FreeCommRing.lift _).map_mul, (f' j k hjk).map_mul, ih,
      (restriction _).map_mul, (FreeCommRing.lift _).map_mul, restriction_of, dif_pos hps, lift_of,
      restriction_of, dif_pos (hst hps), lift_of]
    dsimp only
    -- porting note: Lean 3 could get away with far fewer hints for inputs in the line below
    have := DirectedSystem.map_map (fun i j h => f' i j h) (hj p hps) hjk
    dsimp only at this
    rw [this]
  · rintro x y ihx ihy
    rw [(restriction _).map_add, (FreeCommRing.lift _).map_add, (f' j k hjk).map_add, ihx, ihy,
      (restriction _).map_add, (FreeCommRing.lift _).map_add]
#align ring.direct_limit.of.zero_exact_aux2 Ring.DirectLimit.of.zero_exact_aux2

variable {G f f'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variantf24274b3e2c0e1c00ac359f44e2a038ff6bb40b5594daa71fb4b24d3c6ecb29b.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9f0d236c2253f0260e5e04c2eec13a1a259f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
