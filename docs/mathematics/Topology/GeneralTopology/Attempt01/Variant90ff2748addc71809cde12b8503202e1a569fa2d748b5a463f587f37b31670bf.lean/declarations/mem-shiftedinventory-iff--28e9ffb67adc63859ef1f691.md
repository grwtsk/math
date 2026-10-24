# mem_shiftedInventory_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06a2725c-5175-85ce-56c8-e4b3e1a2efbf",
  "kind": "theorem",
  "lexical_name": "mem_shiftedInventory_iff",
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
  "slug": "mem-shiftedinventory-iff--28e9ffb67adc63859ef1f691",
  "source": {
    "blob": "c5580ffd34c7725332eb75cb6665ace3f9d750d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28e9ffb67adc63859ef1f691d8daf04c5440e79448fa9549bb80303a50fc430a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a2725c-5175-85ce-56c8-e4b3e1a2efbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_shiftedInventory_iff (N : ℕ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory N ↔ p.val^(k+2) ≤ N := by
  constructor
  · intro h
    exact (mem_filter.mp h).2
  · intro h
    have hpN : p.val ≤ N := by
      have hpk : p.val ≤ p.val^(k+2) := by
        conv_lhs => rw [←pow_one p.val]
        exact Nat.pow_le_pow_right p.property.one_lt.le (by omega)
      exact hpk.trans h
    have hkN : k ≤ N := by
      have hpow := (Nat.lt_pow_self p.property.one_lt (n:=k+2)).le.trans h
      omega
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_subtype.mpr (mem_range.mpr (by omega)),mem_range.mpr (by omega)⟩,h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant90ff2748addc71809cde12b8503202e1a569fa2d748b5a463f587f37b31670bf.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5580ffd34c7725332eb75cb6665ace3f9d750d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
