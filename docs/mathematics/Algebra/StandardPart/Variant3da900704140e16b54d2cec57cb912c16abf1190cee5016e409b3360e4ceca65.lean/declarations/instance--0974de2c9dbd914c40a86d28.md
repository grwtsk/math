# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5f032c597d81f6bf85e3b86aa541c3f3fbab4bac6c8521e519270bbcb7fad5d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--0974de2c9dbd914c40a86d28",
  "source": {
    "blob": "d1379dbc8a5c6b9067f47ca62b5bedb507630c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0974de2c9dbd914c40a86d282d62620f9c8b3bd2f8d9ab60a89ba7317d9e85d1",
  "verification": {
    "reference": "docs/verification/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5f032c597d81f6bf85e3b86aa541c3f3fbab4bac6c8521e519270bbcb7fad5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FloorRing (FiniteElement K) :=
  .ofBounded _ fun x ↦ by
    obtain ⟨n, hn⟩ := x.2
    refine ⟨n, (le_abs_self x).trans ?_⟩
    simpa using! hn

end FiniteElement

set_option backward.isDefEq.respectTransparency.types false in
variable (K) in
/-- The residue field of `FiniteElement`. This quotient inherits an order from `K`,
which makes it into a linearly ordered Archimedean field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StandardPart/Variant3da900704140e16b54d2cec57cb912c16abf1190cee5016e409b3360e4ceca65.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1379dbc8a5c6b9067f47ca62b5bedb507630c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
