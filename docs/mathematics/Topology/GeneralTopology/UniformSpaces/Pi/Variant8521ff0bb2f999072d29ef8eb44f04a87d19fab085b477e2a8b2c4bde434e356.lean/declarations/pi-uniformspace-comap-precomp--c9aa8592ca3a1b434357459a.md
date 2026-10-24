# Pi.uniformSpace_comap_precomp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f72ff53d-baeb-1e35-e805-2f5d560c81cf",
  "kind": "lemma",
  "lexical_name": "Pi.uniformSpace_comap_precomp'",
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
  "slug": "pi-uniformspace-comap-precomp--c9aa8592ca3a1b434357459a",
  "source": {
    "blob": "132ac49b25b5c5558a173eacad5d8d8967610e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9aa8592ca3a1b434357459a4ec7cdf3909784bb22e4dcbc1c27645c3dfc952a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f72ff53d-baeb-1e35-e805-2f5d560c81cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi.uniformSpace_comap_precomp' (φ : ι' → ι) :
    UniformSpace.comap (fun g i' ↦ g (φ i')) (Pi.uniformSpace (fun i' ↦ α (φ i'))) =
    ⨅ i', UniformSpace.comap (eval (φ i')) (U (φ i')) := by
  simp [Pi.uniformSpace_eq, UniformSpace.comap_iInf, ← UniformSpace.comap_comap, comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `132ac49b25b5c5558a173eacad5d8d8967610e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
