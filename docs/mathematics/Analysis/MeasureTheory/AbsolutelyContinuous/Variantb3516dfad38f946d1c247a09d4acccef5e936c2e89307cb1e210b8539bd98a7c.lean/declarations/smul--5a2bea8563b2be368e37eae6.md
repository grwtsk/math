# smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd53b264-502e-4ab2-3393-ff0736857e73",
  "kind": "theorem",
  "lexical_name": "smul",
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
  "slug": "smul--5a2bea8563b2be368e37eae6",
  "source": {
    "blob": "b0624a535d1c3f5a6ab6b58bdad5a71699861b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 102,
    "path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2bea8563b2be368e37eae63e5b2f9e0586b4ec16955eda4d867f67d89f3076",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd53b264-502e-4ab2-3393-ff0736857e73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem smul [SMul R ℝ≥0∞] [IsScalarTower R ℝ≥0∞ ℝ≥0∞] (h : μ ≪ ν) (c : R) :
    c • μ ≪ c • ν := by
  intro s hνs
  rw [smul_apply, ← smul_one_smul ℝ≥0∞, smul_eq_mul, mul_eq_zero] at hνs ⊢
  exact hνs.imp_right fun hs ↦ h hs

@[deprecated (since := "2024-11-14")] protected alias smul_both := AbsolutelyContinuous.smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variantb3516dfad38f946d1c247a09d4acccef5e936c2e89307cb1e210b8539bd98a7c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0624a535d1c3f5a6ab6b58bdad5a71699861b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
