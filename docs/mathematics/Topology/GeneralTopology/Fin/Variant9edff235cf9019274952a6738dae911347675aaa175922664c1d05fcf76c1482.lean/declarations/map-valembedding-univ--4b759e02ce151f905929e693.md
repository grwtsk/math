# map_valEmbedding_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db1a4d0d-7579-10b9-f29e-5cb090ae7113",
  "kind": "theorem",
  "lexical_name": "map_valEmbedding_univ",
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
  "slug": "map-valembedding-univ--4b759e02ce151f905929e693",
  "source": {
    "blob": "a24ee41a45ef298e7a77a4b35b6e399c8e080619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 36,
    "path": "GRWTSK/Topology/GeneralTopology/Fin/Variant9edff235cf9019274952a6738dae911347675aaa175922664c1d05fcf76c1482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b759e02ce151f905929e6934d80d4b9b075cbe5b9d280371f83c883e27c3b6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fin/Variant9edff235cf9019274952a6738dae911347675aaa175922664c1d05fcf76c1482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db1a4d0d-7579-10b9-f29e-5cb090ae7113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem map_valEmbedding_univ :
    (Finset.univ : Finset (Fin n)).map Fin.valEmbedding = Iio n := by
  ext
  simp [orderIsoSubtype.symm.surjective.exists, OrderIso.symm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fin/Variant9edff235cf9019274952a6738dae911347675aaa175922664c1d05fcf76c1482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fin/Variant9edff235cf9019274952a6738dae911347675aaa175922664c1d05fcf76c1482.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a24ee41a45ef298e7a77a4b35b6e399c8e080619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
