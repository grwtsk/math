# antidiagonalOfLocallyFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8065ea6e5b99ea658bc3c1cee25c93e034d0037551da2ec5d73bca5d03434b3c",
  "kind": "abbrev",
  "lexical_name": "antidiagonalOfLocallyFinite",
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
  "slug": "antidiagonaloflocallyfinite--e44c1b0529e4d2f17103a6b9",
  "source": {
    "blob": "84d79bc25debecd5fdfdd8644d627348f1cb9c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 193,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e44c1b0529e4d2f17103a6b911abc9ae06cb11e9a64f836f059d0134a3868c56",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8065ea6e5b99ea658bc3c1cee25c93e034d0037551da2ec5d73bca5d03434b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev antidiagonalOfLocallyFinite : HasAntidiagonal A where
  antidiagonal n := {uv ∈ Iic n ×ˢ Iic n | uv.fst + uv.snd = n}
  mem_antidiagonal {n} {a} := by
    simp only [mem_filter, and_iff_right_iff_imp]
    intro h
    simp [← h]

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d79bc25debecd5fdfdd8644d627348f1cb9c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
