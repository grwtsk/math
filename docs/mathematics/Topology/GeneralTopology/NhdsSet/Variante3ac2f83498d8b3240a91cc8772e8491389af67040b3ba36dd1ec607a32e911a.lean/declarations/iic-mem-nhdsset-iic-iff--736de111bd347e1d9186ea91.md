# Iic_mem_nhdsSet_Iic_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5499ebb2-419c-c8d0-b629-291d9cc636ee",
  "kind": "theorem",
  "lexical_name": "Iic_mem_nhdsSet_Iic_iff",
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
  "slug": "iic-mem-nhdsset-iic-iff--736de111bd347e1d9186ea91",
  "source": {
    "blob": "c26d6c04d2f124da0e74bbe6a43dbd12ca347cc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736de111bd347e1d9186ea91a2d9e6b0dae4ae8241d8d6c61eb2e5a59ed8a9a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5499ebb2-419c-c8d0-b629-291d9cc636ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iic_mem_nhdsSet_Iic_iff {a b : α} [NeBot (𝓝[>] b)] : Iic a ∈ 𝓝ˢ (Iic b) ↔ b < a :=
  (hasBasis_nhdsSet_Iic_Iic b).mem_iff.trans
    ⟨fun ⟨_c, hbc, hca⟩ ↦ hbc.trans_le (Iic_subset_Iic.1 hca), fun h ↦ ⟨_, h, Subset.rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variante3ac2f83498d8b3240a91cc8772e8491389af67040b3ba36dd1ec607a32e911a.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26d6c04d2f124da0e74bbe6a43dbd12ca347cc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
