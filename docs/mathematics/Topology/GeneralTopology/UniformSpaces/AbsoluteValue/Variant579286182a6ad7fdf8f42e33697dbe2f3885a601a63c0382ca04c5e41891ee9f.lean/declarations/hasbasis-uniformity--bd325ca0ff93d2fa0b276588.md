# hasBasis_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130bc37b-50ef-b239-db1c-5c5cebd05c98",
  "kind": "theorem",
  "lexical_name": "hasBasis_uniformity",
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
  "slug": "hasbasis-uniformity--bd325ca0ff93d2fa0b276588",
  "source": {
    "blob": "a38f4ca3ff6715c8622c2f5eb63c62fa2e101dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd325ca0ff93d2fa0b276588d25488e327f35340885c78033d9f50f5e2f9e01f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130bc37b-50ef-b239-db1c-5c5cebd05c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_uniformity :
    𝓤[abv.uniformSpace].HasBasis ((0 : 𝕜) < ·) fun ε => { p : R × R | abv (p.2 - p.1) < ε } :=
  UniformSpace.hasBasis_ofFun (exists_gt _) _ _ _ _ _

end AbsoluteValue
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38f4ca3ff6715c8622c2f5eb63c62fa2e101dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
