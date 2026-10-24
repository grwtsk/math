# groupSMul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eef59028-ce1f-63c0-9a7b-0a8e9b3e48b3",
  "kind": "theorem",
  "lexical_name": "groupSMul_apply",
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
  "slug": "groupsmul-apply--93de7f88a0576c29909b2a1b",
  "source": {
    "blob": "41d2abcefab90b5f24162886d18f0ede63aac3d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93de7f88a0576c29909b2a1be3f7ae3b4de1ceb8b26f2515fcf9d937ca1b52d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eef59028-ce1f-63c0-9a7b-0a8e9b3e48b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem groupSMul_apply {G : Type*} [Group G] [DistribMulAction G R] [DistribMulAction G M]
    [IsScalarTower G R M] [SMulCommClass G R M] {v : Basis ι R M} {w : ι → G} (i : ι) :
    v.groupSMul w i = (w • (v : ι → M)) i :=
  mk_apply (LinearIndependent.group_smul v.linearIndependent w)
    (groupSMul_span_eq_top v.span_eq).ge i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d2abcefab90b5f24162886d18f0ede63aac3d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
