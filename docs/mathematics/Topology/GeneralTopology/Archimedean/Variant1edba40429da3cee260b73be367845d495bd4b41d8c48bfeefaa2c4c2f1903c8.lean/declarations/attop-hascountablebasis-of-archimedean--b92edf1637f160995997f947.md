# atTop_hasCountableBasis_of_archimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:988393b8-ffe1-5b6d-91ab-c4aef7dbdc79",
  "kind": "theorem",
  "lexical_name": "atTop_hasCountableBasis_of_archimedean",
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
  "slug": "attop-hascountablebasis-of-archimedean--b92edf1637f160995997f947",
  "source": {
    "blob": "bce43f28cc1b383a8996b53539d51b5168afc779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b92edf1637f160995997f947c1793237e66d2ea12bf8f9495bfd7d41ab23de65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:988393b8-ffe1-5b6d-91ab-c4aef7dbdc79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atTop_hasCountableBasis_of_archimedean [StrictOrderedSemiring R] [Archimedean R] :
    (atTop : Filter R).HasCountableBasis (fun _ : ℕ => True) fun n => Ici n :=
  ⟨atTop_hasAntitoneBasis_of_archimedean.1, to_countable _⟩
#align at_top_countable_basis_of_archimedean atTop_hasCountableBasis_of_archimedean

-- porting note: todo: generalize to a `StrictOrderedRing`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant1edba40429da3cee260b73be367845d495bd4b41d8c48bfeefaa2c4c2f1903c8.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bce43f28cc1b383a8996b53539d51b5168afc779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
