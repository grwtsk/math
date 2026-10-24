# symmetricIcc_eq_symmetricIoo_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c91eca18-c3d2-0b52-cb11-8851de22c0fb",
  "kind": "lemma",
  "lexical_name": "symmetricIcc_eq_symmetricIoo_int",
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
  "slug": "symmetricicc-eq-symmetricioo-int--896a2cd5a76cb9e59b98cb2a",
  "source": {
    "blob": "b971869a87b0905ca1a9861fd54e6cae42b036c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/ConditionalInt/Variant1013ce8991c36d6f0ebc1a8303f263b71120e5ef472256d9c5931fc8b84dcf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:896a2cd5a76cb9e59b98cb2a244030418abdc067f329ac3ba03b92ad71740ee4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConditionalInt/Variant1013ce8991c36d6f0ebc1a8303f263b71120e5ef472256d9c5931fc8b84dcf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c91eca18-c3d2-0b52-cb11-8851de22c0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma symmetricIcc_eq_symmetricIoo_int : symmetricIcc ℤ = symmetricIoo ℤ := by
  simp only [symmetricIcc, symmetricIoo, mk.injEq]
  ext s
  simp only [← Nat.map_cast_int_atTop, Filter.map_map, Filter.mem_map, mem_atTop_sets,
    Set.mem_preimage, comp_apply]
  refine ⟨fun ⟨a, ha⟩ ↦ ⟨a + 1, fun b hb ↦ ?_⟩, fun ⟨a, ha⟩ ↦ ⟨a - 1, fun b hb ↦ ?_⟩⟩ <;>
  [convert! ha (b - 1) (by grind) using 1; convert! ha (b + 1) (by grind) using 1] <;>
  simp [Finset.ext_iff] <;> grind

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConditionalInt/Variant1013ce8991c36d6f0ebc1a8303f263b71120e5ef472256d9c5931fc8b84dcf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConditionalInt/Variant1013ce8991c36d6f0ebc1a8303f263b71120e5ef472256d9c5931fc8b84dcf49.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b971869a87b0905ca1a9861fd54e6cae42b036c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
