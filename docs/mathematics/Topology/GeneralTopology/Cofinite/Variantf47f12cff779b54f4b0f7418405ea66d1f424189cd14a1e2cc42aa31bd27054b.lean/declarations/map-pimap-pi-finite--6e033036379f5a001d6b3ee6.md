# map_piMap_pi_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c7e16bc-1d64-201f-4c95-52aba7b2d82c",
  "kind": "theorem",
  "lexical_name": "map_piMap_pi_finite",
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
  "slug": "map-pimap-pi-finite--6e033036379f5a001d6b3ee6",
  "source": {
    "blob": "89312a85d0510c3cc3094e43326cdfa4a8027674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e033036379f5a001d6b3ee6856a4ed8830f8c59dcde939bd22ca98df5958f45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c7e16bc-1d64-201f-4c95-52aba7b2d82c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_piMap_pi_finite {α β : ι → Type*} [Finite ι]
    (f : ∀ i, α i → β i) (l : ∀ i, Filter (α i)) :
    map (Pi.map f) (pi l) = pi fun i ↦ map (f i) (l i) :=
  map_piMap_pi (by simp) l

end Filter

open Filter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89312a85d0510c3cc3094e43326cdfa4a8027674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
