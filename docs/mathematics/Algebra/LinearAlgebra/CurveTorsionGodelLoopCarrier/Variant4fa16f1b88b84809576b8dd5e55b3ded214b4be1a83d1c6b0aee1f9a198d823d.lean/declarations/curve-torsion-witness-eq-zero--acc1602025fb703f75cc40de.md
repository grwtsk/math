# curve_torsion_witness_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a436d58027668c55d9743c43c4c677564914d9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88a550ec-6ce8-1ad4-e448-7b4949f21517",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:822e99fc-8969-94e4-8a77-5fcb8fa08b99",
  "kind": "theorem",
  "lexical_name": "curve_torsion_witness_eq_zero",
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
  "slug": "curve-torsion-witness-eq-zero--acc1602025fb703f75cc40de",
  "source": {
    "blob": "0a436d58027668c55d9743c43c4c677564914d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc1602025fb703f75cc40def2f77ae107ec4c9df5182ab7654a9cc6ca2a5503",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:822e99fc-8969-94e4-8a77-5fcb8fa08b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curve_torsion_witness_eq_zero
    {Point : Type u} {G : CurveGroupModel Point}
    (T : CurveTorsionWitness G) :
    G.nsmul T.order T.point = G.zero :=
  T.nsmul_eq_zero

/-- Recursive finite transition iterate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CurveTorsionGodelLoopCarrier/Variant4fa16f1b88b84809576b8dd5e55b3ded214b4be1a83d1c6b0aee1f9a198d823d.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a436d58027668c55d9743c43c4c677564914d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
