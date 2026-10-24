# of.zero_exact_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3621e7d-0981-6743-2939-f7eb60311123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2edf0857-5596-778c-4a9e-266164e559bd",
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
  "slug": "of-zero-exact-aux2--a072d732c5726ee783abdfef",
  "source": {
    "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 483,
    "path": "GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a072d732c5726ee783abdfef849e68d952e5074bb4fcae2f1e998e8dbfa982fc",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2edf0857-5596-778c-4a9e-266164e559bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–513.

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

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
