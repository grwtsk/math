# toRingFilterBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea36fe8394ceb2e5fecafb4736891d8aa40fc2bb4fce1494b94797ff045f805",
  "kind": "def",
  "lexical_name": "toRingFilterBasis",
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
  "slug": "toringfilterbasis--194c7bfcda34faecc3a0585c",
  "source": {
    "blob": "1f57b93827036112f888d959dc0b0635b8560d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 77,
    "path": "GRWTSK/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:194c7bfcda34faecc3a0585cef4071a7235df1720b6f0933f21b907a28787b0d",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea36fe8394ceb2e5fecafb4736891d8aa40fc2bb4fce1494b94797ff045f805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRingFilterBasis [Nonempty ι] {B : ι → AddSubgroup A} (hB : RingSubgroupsBasis B) :
    RingFilterBasis A where
  sets := { U | ∃ i, U = B i }
  nonempty := by
    inhabit ι
    exact ⟨B default, default, rfl⟩
  inter_sets := by
    rintro _ _ ⟨i, rfl⟩ ⟨j, rfl⟩
    obtain ⟨k, hk⟩ := hB.inter i j
    use B k
    constructor
    · use k
    · exact hk
  zero' := by
    rintro _ ⟨i, rfl⟩
    exact (B i).zero_mem
  add' := by
    rintro _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · rintro x ⟨y, y_in, z, z_in, rfl⟩
      exact (B i).add_mem y_in z_in
  neg' := by
    rintro _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · intro x x_in
      exact (B i).neg_mem x_in
  conj' := by
    rintro x₀ _ ⟨i, rfl⟩
    use B i
    constructor
    · use i
    · simp
  mul' := by
    rintro _ ⟨i, rfl⟩
    obtain ⟨k, hk⟩ := hB.mul i
    use B k
    constructor
    · use k
    · exact hk
  mul_left' := by
    rintro x₀ _ ⟨i, rfl⟩
    obtain ⟨k, hk⟩ := hB.leftMul x₀ i
    use B k
    constructor
    · use k
    · exact hk
  mul_right' := by
    rintro x₀ _ ⟨i, rfl⟩
    obtain ⟨k, hk⟩ := hB.rightMul x₀ i
    use B k
    constructor
    · use k
    · exact hk

variable [Nonempty ι] {B : ι → AddSubgroup A} (hB : RingSubgroupsBasis B)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant968acb1b1caed1a3acdab98f1edfccc6be152e84024dfa673bbbc378f15c1ddd.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f57b93827036112f888d959dc0b0635b8560d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
