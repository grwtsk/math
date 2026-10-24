# orthogonalComplement_eq_orthogonalComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bac9736-ad33-7d91-519d-53d9681535e2",
  "kind": "theorem",
  "lexical_name": "orthogonalComplement_eq_orthogonalComplement",
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
  "slug": "orthogonalcomplement-eq-orthogonalcomplement--9c6875d1034b024eabd61de3",
  "source": {
    "blob": "645ecd35577ed338fe39a1b3125d43595865111b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6875d1034b024eabd61de3dd9e84271943f04ff60e24b9056e48a8b37fe81a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bac9736-ad33-7d91-519d-53d9681535e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonalComplement_eq_orthogonalComplement {L : Submodule 𝕜 E} [K.HasOrthogonalProjection]
    [L.HasOrthogonalProjection] : Kᗮ = Lᗮ ↔ K = L :=
  ⟨fun h ↦ by simpa using congr(Submodule.orthogonal $(h)),
    fun h ↦ congr(Submodule.orthogonal $(h))⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Submodule/Variant7d59dbf5a38fe0c6065d6ad9834e59ca3ac33558c6f8642846ce60d74195deb4.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `645ecd35577ed338fe39a1b3125d43595865111b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
