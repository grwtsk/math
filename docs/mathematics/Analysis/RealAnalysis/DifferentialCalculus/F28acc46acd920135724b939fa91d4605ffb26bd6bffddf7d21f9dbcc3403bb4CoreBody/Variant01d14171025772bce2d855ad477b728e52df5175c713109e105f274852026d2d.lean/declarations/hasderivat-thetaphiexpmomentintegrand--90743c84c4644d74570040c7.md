# hasDerivAt_thetaPhiExpMomentIntegrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7660f69e-0042-7c94-a0f2-c6fc3762505b",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiExpMomentIntegrand",
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
  "slug": "hasderivat-thetaphiexpmomentintegrand--90743c84c4644d74570040c7",
  "source": {
    "blob": "20f0a8ce5e6a8b0bf43536932365ed26296f1641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90743c84c4644d74570040c77b8e7b663a28a3822e14743b6f0ab15abd402f71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7660f69e-0042-7c94-a0f2-c6fc3762505b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiExpMomentIntegrand (m : ℕ) (u : ℂ) (t : ℝ) :
    HasDerivAt (fun z => thetaPhiExpMomentIntegrand m z t)
      (thetaPhiExpMomentIntegrand (m + 1) u t) u := by
  have h := ((((hasDerivAt_id u).const_mul 2).mul_const (t : ℂ)).cexp).const_mul
    ((thetaPhi t : ℂ) * (2 * (t : ℂ)) ^ m)
  simpa only [thetaPhiExpMomentIntegrand, pow_succ, id_eq, mul_one, one_mul,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- The exponential moment derivative is justified by a common integrable
bound on a neighborhood of each complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/F28acc46acd920135724b939fa91d4605ffb26bd6bffddf7d21f9dbcc3403bb4CoreBody/Variant01d14171025772bce2d855ad477b728e52df5175c713109e105f274852026d2d.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20f0a8ce5e6a8b0bf43536932365ed26296f1641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
