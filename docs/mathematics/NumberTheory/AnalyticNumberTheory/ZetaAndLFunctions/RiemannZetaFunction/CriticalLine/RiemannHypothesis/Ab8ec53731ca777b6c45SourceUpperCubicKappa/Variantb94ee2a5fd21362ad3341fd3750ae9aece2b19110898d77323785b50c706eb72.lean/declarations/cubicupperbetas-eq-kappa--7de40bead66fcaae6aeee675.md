# cubicUpperBetas_eq_kappa

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d86704f-8080-1c3d-4d48-99afb32cc5c1",
  "kind": "theorem",
  "lexical_name": "cubicUpperBetas_eq_kappa",
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
  "slug": "cubicupperbetas-eq-kappa--7de40bead66fcaae6aeee675",
  "source": {
    "blob": "b015c593e415f4fe6684333c550121b5c611f056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ab8ec53731ca777b6c45SourceUpperCubicKappa/Variantb94ee2a5fd21362ad3341fd3750ae9aece2b19110898d77323785b50c706eb72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7de40bead66fcaae6aeee675d0574402eb9c90710912febe6ec2431b8a93d08f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ab8ec53731ca777b6c45SourceUpperCubicKappa/Variantb94ee2a5fd21362ad3341fd3750ae9aece2b19110898d77323785b50c706eb72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d86704f-8080-1c3d-4d48-99afb32cc5c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubicUpperBetas_eq_kappa :
    cubicUpperBeta0 = upperCubicKappa 1 ∧
      cubicUpperBeta1 = upperCubicKappa 2 ∧
      cubicUpperBeta2 = upperCubicKappa 3 / 2 ∧
      cubicUpperBeta3 = upperCubicKappa 4 / 6 := by
  simp only [upperCubicKappa_eq_moments, Nat.cast_ofNat, Nat.reduceSub]
  unfold cubicUpperBeta0 cubicUpperBeta1 cubicUpperBeta2 cubicUpperBeta3
  constructor
  · ring
  constructor
  · ring
  constructor <;> ring

/-- The independently specified main term retains all literal signed kappa jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ab8ec53731ca777b6c45SourceUpperCubicKappa/Variantb94ee2a5fd21362ad3341fd3750ae9aece2b19110898d77323785b50c706eb72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Ab8ec53731ca777b6c45SourceUpperCubicKappa/Variantb94ee2a5fd21362ad3341fd3750ae9aece2b19110898d77323785b50c706eb72.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b015c593e415f4fe6684333c550121b5c611f056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
