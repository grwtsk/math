# realPart_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8ecd415-6b92-4c8d-d619-172a0dcdba2b",
  "kind": "theorem",
  "lexical_name": "realPart_smul",
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
  "slug": "realpart-smul--40cc7e0f5fe95ec270e3f9fc",
  "source": {
    "blob": "edc50c8dbe7a317c2ae1809400f1640debda0389",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 468,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40cc7e0f5fe95ec270e3f9fc22106efbb85fd92f87101071e28cf8f348bf12ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8ecd415-6b92-4c8d-d619-172a0dcdba2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realPart_smul (z : ℂ) (a : A) : ℜ (z • a) = z.re • ℜ a - z.im • ℑ a := by
  -- Porting note: was `nth_rw 1 [← re_add_im z]`
  conv_lhs =>
    rw [← re_add_im z]
  simp [-re_add_im, add_smul, ← smul_smul, sub_eq_add_neg]
#align real_part_smul realPart_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant6adbc07194f083863d379f768940d817ed284398b3d32e02f912022c94692f06.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc50c8dbe7a317c2ae1809400f1640debda0389` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
