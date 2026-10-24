# stoneCechAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bcf1fe47086cbcbfe6fef44e4aab091cf28b199811e7a08aef53b89a8ea998a",
  "kind": "def",
  "lexical_name": "stoneCechAdjunction",
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
  "slug": "stonecechadjunction--94af2fa69d88888b195d61b3",
  "source": {
    "blob": "e9c6c3576a9988a7397427931f876e03d5f83cac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Adjunctions/Variant8ef0db5e32e2e219000cb3256121445208f76b4cc36494ac101b0631576f61c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94af2fa69d88888b195d61b330045adc870d381d1f0ea3567a86ea4de999fc83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adjunctions/Variant8ef0db5e32e2e219000cb3256121445208f76b4cc36494ac101b0631576f61c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bcf1fe47086cbcbfe6fef44e4aab091cf28b199811e7a08aef53b89a8ea998a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def stoneCechAdjunction : typeToStonean ⊣ (forget Stonean) :=
  adjunctionOfEquivLeft (G := forget _) stoneCechEquivalence fun _ _ _ _ _ => rfl

/-- The forgetful functor from Stonean spaces, being a right adjoint, preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adjunctions/Variant8ef0db5e32e2e219000cb3256121445208f76b4cc36494ac101b0631576f61c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adjunctions/Variant8ef0db5e32e2e219000cb3256121445208f76b4cc36494ac101b0631576f61c7.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c6c3576a9988a7397427931f876e03d5f83cac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
