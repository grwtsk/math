# rectangle_two_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e49230ae-f698-cc03-fb6e-49c29fe63a71",
  "kind": "theorem",
  "lexical_name": "rectangle_two_split",
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
  "slug": "rectangle-two-split--7e3b1b336774bf8f116bc8af",
  "source": {
    "blob": "2a66d6da3caf3b1e5827c4f1e155dfe0deb86ef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbdfea1025985cf1754ebfa86c84e57ef151e91bb5796c2c23dfe9017d9515618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3b1b336774bf8f116bc8af32474505867522a7480e992af9b456b87b72e239",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbdfea1025985cf1754ebfa86c84e57ef151e91bb5796c2c23dfe9017d9515618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e49230ae-f698-cc03-fb6e-49c29fe63a71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_two_split (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F -
      2 * rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (2 * q)) +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) := by
  rw [rectangle_two_split_left]
  rw [rectangle_symm _ (Icc 1 N) F, rectangle_two_split_left]
  rw [rectangle_symm _ (Icc 1 N) (fun q ↦ F (2 * q)), rectangle_two_split_left]
  have he : (fun q ↦ F (2 * (2 * q))) = (fun q ↦ F (4 * q)) := by
    funext q
    congr 1
    omega
  rw [he]
  rw [rectangle_symm ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
    ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))]
  ring

/-- Splitting odd rows preserves the strict lower and closed upper boundary endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbdfea1025985cf1754ebfa86c84e57ef151e91bb5796c2c23dfe9017d9515618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JointBoundaryTransport/Variantbdfea1025985cf1754ebfa86c84e57ef151e91bb5796c2c23dfe9017d9515618.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a66d6da3caf3b1e5827c4f1e155dfe0deb86ef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
