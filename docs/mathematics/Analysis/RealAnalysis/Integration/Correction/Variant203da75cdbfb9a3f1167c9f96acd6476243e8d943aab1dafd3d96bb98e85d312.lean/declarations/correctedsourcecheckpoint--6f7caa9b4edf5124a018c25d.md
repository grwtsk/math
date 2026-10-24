# CorrectedSourceCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73b07ebdeeba84ca8d721eb8e255007d804dd235bb6914c72540903459165622",
  "kind": "def",
  "lexical_name": "CorrectedSourceCheckpoint",
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
  "slug": "correctedsourcecheckpoint--6f7caa9b4edf5124a018c25d",
  "source": {
    "blob": "5701cb76301ba951c69e2a21d9b910bb43098311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f7caa9b4edf5124a018c25d49737382c712b316f09070e2880fef2fa1f16884",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73b07ebdeeba84ca8d721eb8e255007d804dd235bb6914c72540903459165622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CorrectedSourceCheckpoint : Prop :=
  ∀ h : UniformLowerBound,
    ∃ C : ℝ, 0 ≤ C ∧
      (∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A) ∧
      (∀ s : ℂ, 1 < s.re →
        IntegrableOn
          (fun A : ℝ ↦
            Complex.exp (-s * A) *
              (correctedSource C A : ℂ))
          (Ioi 1) ∧
        (∫ A in Ioi (1 : ℝ),
          Complex.exp (-s * A) *
            (correctedSource C A : ℂ)) =
          correctedTransform C s) ∧
      MeromorphicOn (correctedTransform C)
        {s : ℂ | 0 < s.re} ∧
      (∀ σ : ℝ, 0 < σ →
        AnalyticAt ℂ (correctedTransform C) (σ : ℂ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant203da75cdbfb9a3f1167c9f96acd6476243e8d943aab1dafd3d96bb98e85d312.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5701cb76301ba951c69e2a21d9b910bb43098311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
