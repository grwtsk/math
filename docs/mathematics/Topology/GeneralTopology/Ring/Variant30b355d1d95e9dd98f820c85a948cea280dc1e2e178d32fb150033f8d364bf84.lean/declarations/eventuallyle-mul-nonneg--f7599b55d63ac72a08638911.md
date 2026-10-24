# EventuallyLE.mul_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3de2104d-e8d9-fe3e-84e3-30edaa8af67f",
  "kind": "theorem",
  "lexical_name": "EventuallyLE.mul_nonneg",
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
  "slug": "eventuallyle-mul-nonneg--f7599b55d63ac72a08638911",
  "source": {
    "blob": "b8264f0a0b66b96753a79160481fe9d3c22ef714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7599b55d63ac72a086389111dba0ff77d7a975eaacf95b7ad427d3af3b10e18",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de2104d-e8d9-fe3e-84e3-30edaa8af67f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyLE.mul_nonneg [Semiring β] [PartialOrder β] [IsOrderedRing β]
    {l : Filter α} {f g : α → β} (hf : 0 ≤ᶠ[l] f)
    (hg : 0 ≤ᶠ[l] g) : 0 ≤ᶠ[l] f * g := by filter_upwards [hf, hg] with x using _root_.mul_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ring/Variant30b355d1d95e9dd98f820c85a948cea280dc1e2e178d32fb150033f8d364bf84.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8264f0a0b66b96753a79160481fe9d3c22ef714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
