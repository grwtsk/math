# HasSummableGeomSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64c81b02e03ab3f0fdd96bbf743609adaf1ab55266565d5c25b977769068362f",
  "kind": "class",
  "lexical_name": "HasSummableGeomSeries",
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
  "slug": "hassummablegeomseries--b1ff94ec4381fa9d7cafff56",
  "source": {
    "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 280,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1ff94ec4381fa9d7cafff56d53bfd1a6eab41ed7008902b32832839d83d1bda",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64c81b02e03ab3f0fdd96bbf743609adaf1ab55266565d5c25b977769068362f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasSummableGeomSeries (K : Type*) [NonUnitalNormedRing K] : Prop where
  summable_geometric_of_norm_lt_one : ∀ (ξ : K), ‖ξ‖ < 1 → Summable ((· * ξ)^[·] ξ)

-- this lemma should be removed (and unnecessary) once we have a `Pow G ℕ+` instance for semigroups
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b033d8917bbd2c274f2bb55e6b07c46c9204db5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
