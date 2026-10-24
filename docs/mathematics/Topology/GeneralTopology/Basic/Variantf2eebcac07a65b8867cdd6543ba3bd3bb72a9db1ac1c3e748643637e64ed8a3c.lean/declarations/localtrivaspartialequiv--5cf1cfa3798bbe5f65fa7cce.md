# localTrivAsPartialEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:275e3670158c0548c2590bd2a0ebfcff9f70510c6d639b0ed1ea99f8a8a39649",
  "kind": "def",
  "lexical_name": "localTrivAsPartialEquiv",
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
  "slug": "localtrivaspartialequiv--5cf1cfa3798bbe5f65fa7cce",
  "source": {
    "blob": "b2f266a336842e14f979b0f4347fb22826c04ebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 508,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cf1cfa3798bbe5f65fa7cceea7ae098812473121f3b7f9c775f6f21295d9090",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:275e3670158c0548c2590bd2a0ebfcff9f70510c6d639b0ed1ea99f8a8a39649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localTrivAsPartialEquiv (i : ι) : PartialEquiv Z.TotalSpace (B × F) where
  source := Z.proj ⁻¹' Z.baseSet i
  target := Z.baseSet i ×ˢ univ
  invFun p := ⟨p.1, Z.coordChange i (Z.indexAt p.1) p.1 p.2⟩
  toFun p := ⟨p.1, Z.coordChange (Z.indexAt p.1) i p.1 p.2⟩
  map_source' p hp := by
    simpa only [Set.mem_preimage, and_true, Set.mem_univ, Set.prodMk_mem_set_prod_eq] using hp
  map_target' p hp := by
    simpa only [Set.mem_preimage, and_true, Set.mem_univ, Set.mem_prod] using hp
  left_inv' := by
    rintro ⟨x, v⟩ hx
    replace hx : x ∈ Z.baseSet i := hx
    dsimp only
    rw [Z.coordChange_comp, Z.coordChange_self] <;> apply_rules [mem_baseSet_at, mem_inter]
  right_inv' := by
    rintro ⟨x, v⟩ hx
    simp only [prodMk_mem_set_prod_eq, and_true, mem_univ] at hx
    dsimp only
    rw [Z.coordChange_comp, Z.coordChange_self]
    exacts [hx, ⟨⟨hx, Z.mem_baseSet_at _⟩, hx⟩]

variable (i : ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf2eebcac07a65b8867cdd6543ba3bd3bb72a9db1ac1c3e748643637e64ed8a3c.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2f266a336842e14f979b0f4347fb22826c04ebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
