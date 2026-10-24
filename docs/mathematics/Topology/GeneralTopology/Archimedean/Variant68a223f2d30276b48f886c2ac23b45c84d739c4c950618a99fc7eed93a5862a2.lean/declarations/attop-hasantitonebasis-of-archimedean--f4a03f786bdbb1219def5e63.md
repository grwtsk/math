# atTop_hasAntitoneBasis_of_archimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fc54d64-7364-b6a5-cefd-0b9a3e9e5c5b",
  "kind": "theorem",
  "lexical_name": "atTop_hasAntitoneBasis_of_archimedean",
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
  "slug": "attop-hasantitonebasis-of-archimedean--f4a03f786bdbb1219def5e63",
  "source": {
    "blob": "334f836fcb839132c661c409183b0aabe4d60a77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a03f786bdbb1219def5e639bb72fcb4745e12f6481dbeab2193a168aae308c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fc54d64-7364-b6a5-cefd-0b9a3e9e5c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atTop_hasAntitoneBasis_of_archimedean [Semiring R] [PartialOrder R] [IsOrderedRing R]
    [Archimedean R] :
    (atTop : Filter R).HasAntitoneBasis fun n : ℕ => Ici n :=
  hasAntitoneBasis_atTop.comp_mono Nat.mono_cast tendsto_natCast_atTop_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334f836fcb839132c661c409183b0aabe4d60a77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
