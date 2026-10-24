# top_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:362b4a2f-8342-a77b-60d7-ef3ae13a0693",
  "kind": "theorem",
  "lexical_name": "top_continuous",
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
  "slug": "top-continuous--c34c393dbcbecebb9ac50470",
  "source": {
    "blob": "a61cda59f861e627e095c95b94074e82194c9ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 521,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c34c393dbcbecebb9ac50470a30fdabd5a9a9ee4bc376814baab498fe302b55e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:362b4a2f-8342-a77b-60d7-ef3ae13a0693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem top_continuous : Continuous (⊤ : α →o β) := by
  intro c; apply eq_of_forall_ge_iff; intro z
  simp only [OrderHom.instTopOrderHom_top, OrderHom.const_coe_coe, Function.const, top_le_iff,
    ωSup_le_iff, Chain.map_coe, Function.comp, forall_const]
#align complete_lattice.top_continuous CompleteLattice.top_continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaCompletePartialOrder/Variant823d7005f8a773efd42b3e53b05d4239e9416bed882da1f82a33c128f4a67206.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61cda59f861e627e095c95b94074e82194c9ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
