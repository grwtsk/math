# tendsto_subtype_rng

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71697a82-faf7-ae45-ccdf-e0aff8c36f79",
  "kind": "theorem",
  "lexical_name": "tendsto_subtype_rng",
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
  "slug": "tendsto-subtype-rng--d625f9972caec080a126a3f9",
  "source": {
    "blob": "a9c192d25453c8a13928c86bc3a19c4c17859579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1104,
    "line": 1100,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d625f9972caec080a126a3f912975da98a4b4ad9ec299a5b43725e4080e9d03c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71697a82-faf7-ae45-ccdf-e0aff8c36f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1100–1104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_subtype_rng {β : Type*} {p : α → Prop} {b : Filter β} {f : β → Subtype p} :
    ∀ {a : Subtype p}, Tendsto f b (𝓝 a) ↔ Tendsto (fun x => (f x : α)) b (𝓝 (a : α))
  | ⟨a, ha⟩ => by rw [nhds_subtype_eq_comap, tendsto_comap_iff]; rfl
#align tendsto_subtype_rng tendsto_subtype_rng

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant5cd1966caafc0000f476fd308ac5ba7cf48a3c36629b5e8a4f6a73f7b8db23c9.lean#L1100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c192d25453c8a13928c86bc3a19c4c17859579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
