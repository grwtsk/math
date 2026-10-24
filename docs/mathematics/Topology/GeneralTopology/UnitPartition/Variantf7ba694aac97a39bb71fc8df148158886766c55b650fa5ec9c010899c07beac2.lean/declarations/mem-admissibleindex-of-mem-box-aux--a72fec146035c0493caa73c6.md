# mem_admissibleIndex_of_mem_box_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:015c612f-0394-bf29-e3c4-6ba46c680e3e",
  "kind": "theorem",
  "lexical_name": "mem_admissibleIndex_of_mem_box_aux₂",
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
  "slug": "mem-admissibleindex-of-mem-box-aux--a72fec146035c0493caa73c6",
  "source": {
    "blob": "3af570881246cfb1f2e43a1449c16fc587faac05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a72fec146035c0493caa73c6e7bf130f46fc61d7be72557b54b6065ee767db20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:015c612f-0394-bf29-e3c4-6ba46c680e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_admissibleIndex_of_mem_box_aux₂ (x : ℝ) (a : ℤ) :
    x ≤ a ↔ (⌈n * x⌉ - 1 + 1) / (n : ℝ) ≤ a := by
  have h : 0 < (n : ℝ) := Nat.cast_pos.mpr <| n.pos_of_neZero
  rw [sub_add_cancel, div_le_iff₀' h,
    show (n : ℝ) * a = (n * a : ℤ) by norm_cast,
    Int.cast_le, Int.ceil_le, Int.cast_mul, Int.cast_natCast, mul_le_mul_left h]

/-- If `B : BoxIntegral.Box` has integral vertices and contains the point `x`, then the index of
`x` is admissible for `B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnitPartition/Variantf7ba694aac97a39bb71fc8df148158886766c55b650fa5ec9c010899c07beac2.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3af570881246cfb1f2e43a1449c16fc587faac05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
