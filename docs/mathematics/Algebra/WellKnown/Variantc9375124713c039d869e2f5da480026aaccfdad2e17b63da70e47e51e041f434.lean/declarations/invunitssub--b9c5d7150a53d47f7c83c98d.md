# invUnitsSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd3d118a62b242a43706fa38fcc4e73660ef7c45d519024426dd67f531177ed7",
  "kind": "def",
  "lexical_name": "invUnitsSub",
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
  "slug": "invunitssub--b9c5d7150a53d47f7c83c98d",
  "source": {
    "blob": "cda712d7caf5b0d45f0524dda7ffd0239edaab14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9c5d7150a53d47f7c83c98d1fbd7a55242259fba141e8f51e96582a2b3ed745",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd3d118a62b242a43706fa38fcc4e73660ef7c45d519024426dd67f531177ed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invUnitsSub (u : Rˣ) : PowerSeries R :=
  mk fun n => 1 /ₚ u ^ (n + 1)
#align power_series.inv_units_sub PowerSeries.invUnitsSub

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Variantc9375124713c039d869e2f5da480026aaccfdad2e17b63da70e47e51e041f434.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda712d7caf5b0d45f0524dda7ffd0239edaab14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
