# IsClosed.mem_of_ge_of_forall_exists_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cdd2a0c-897d-d7a6-3c57-d3397bddd001",
  "kind": "theorem",
  "lexical_name": "IsClosed.mem_of_ge_of_forall_exists_lt",
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
  "slug": "isclosed-mem-of-ge-of-forall-exists-lt--c277c67551a28155bddf08ed",
  "source": {
    "blob": "c5bf572783901ffd21b3561e225ac461290c80b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c277c67551a28155bddf08ed9b95c4fd0421545bd6991935575613f3a44545d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cdd2a0c-897d-d7a6-3c57-d3397bddd001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.mem_of_ge_of_forall_exists_lt {a b : α} {s : Set α} (hs : IsClosed (s ∩ Icc a b))
    (hb : b ∈ s) (hab : a ≤ b) (hgt : ∀ x ∈ s ∩ Ioc a b, (s ∩ Ico a x).Nonempty) : a ∈ s := by
  suffices OrderDual.toDual a ∈ ofDual ⁻¹' s by aesop
  have : IsClosed (OrderDual.ofDual ⁻¹' (s ∩ Icc a b)) := hs
  rw [preimage_inter, ← Icc_toDual] at this
  apply this.mem_of_ge_of_forall_exists_gt (by simp_all) (by simp_all) (fun x hx ↦ ?_)
  rw [Ico_toDual, ← preimage_inter, ← Equiv.image_symm_eq_preimage, mem_image] at hx
  aesop

/-- A "continuous induction principle" for a closed interval: if a set `s` meets `[a, b]`
on a closed subset, contains `b`, and for any `a ≤ y < x ≤ b`, `x ∈ s`, the set `s ∩ [y, x)`
is not empty, then `[a, b] ⊆ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bf572783901ffd21b3561e225ac461290c80b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
