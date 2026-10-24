# Equiv.locallyFinite_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df7b0dc3-823e-8c32-cd25-ec000a2742ed",
  "kind": "theorem",
  "lexical_name": "Equiv.locallyFinite_comp_iff",
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
  "slug": "equiv-locallyfinite-comp-iff--7768c3686f0c4b7c4b15397f",
  "source": {
    "blob": "4e42360a4fc044a5334a3c51083cbafd27ab75c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7768c3686f0c4b7c4b15397f2002b109b3d58111637d1b9a3a5f037e704047de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df7b0dc3-823e-8c32-cd25-ec000a2742ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.locallyFinite_comp_iff (e : ι' ≃ ι) : LocallyFinite (f ∘ e) ↔ LocallyFinite f :=
  ⟨fun h => by simpa only [comp_def, e.apply_symm_apply] using h.comp_injective e.symm.injective,
    fun h => h.comp_injective e.injective⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e42360a4fc044a5334a3c51083cbafd27ab75c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
