# boundarySignedMangoldtWork_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cff18ba-99c7-a2bf-9f68-b5e3a74c2a1b",
  "kind": "theorem",
  "lexical_name": "boundarySignedMangoldtWork_intervalIntegrable",
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
  "slug": "boundarysignedmangoldtwork-intervalintegrable--0f9f4065c337065ae4a75bfa",
  "source": {
    "blob": "4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 189,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f9f4065c337065ae4a75bfa73ab950b4e116d64d7c860e7230a908ec8ca6d0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cff18ba-99c7-a2bf-9f68-b5e3a74c2a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundarySignedMangoldtWork_intervalIntegrable {A : ℝ} (hA : 1 ≤ A) (a b c : ℝ) :
    IntervalIntegrable (fun y => boundaryWorkKernel A y *
      (mangoldtLogError (2*A-y) - (a+b*y+c*y^2))) volume 0 (4*A) := by
  simp_rw [mul_sub]
  exact (boundary_mangoldt_intervalIntegrable hA).sub
    (boundary_polynomial_intervalIntegrable hA a b c)

/-- The complete reflected interval and arbitrary quadratic subtraction retain the signed work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFullRealMangoldt/Variant95ed2770f8e6a95910d8230151cd0c56fb6ae8d633ca95b6cfaf212b5556a4fd.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f2857db4156cbe0355e3b2f65cdbcbfe2ebe0dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
