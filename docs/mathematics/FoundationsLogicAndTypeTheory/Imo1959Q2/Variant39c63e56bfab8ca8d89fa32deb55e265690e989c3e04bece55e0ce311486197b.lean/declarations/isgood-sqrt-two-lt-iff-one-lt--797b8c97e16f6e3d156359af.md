# IsGood.sqrt_two_lt_iff_one_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c369b228-5fde-9629-d3b0-2d2f31989467",
  "kind": "theorem",
  "lexical_name": "IsGood.sqrt_two_lt_iff_one_lt",
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
  "slug": "isgood-sqrt-two-lt-iff-one-lt--797b8c97e16f6e3d156359af",
  "source": {
    "blob": "317b6a8a7350a06ae8db14f3f91b451b5851de5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:797b8c97e16f6e3d156359af5b06d8a978f849b96b4cfe1584a5db5c931214e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c369b228-5fde-9629-d3b0-2d2f31989467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGood.sqrt_two_lt_iff_one_lt (h : IsGood x A) : sqrt 2 < A ↔ 1 < x :=
  ⟨fun hA ↦ not_le.1 fun hx ↦ hA.ne' <| h.eq_sqrt_two_iff_le_one.2 hx, h.sqrt_two_lt_of_one_lt⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant39c63e56bfab8ca8d89fa32deb55e265690e989c3e04bece55e0ce311486197b.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317b6a8a7350a06ae8db14f3f91b451b5851de5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
