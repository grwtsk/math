# primitive_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9f7eb60-27cd-d317-ef08-9fe5972f2fa1",
  "kind": "theorem",
  "lexical_name": "primitive_integrable",
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
  "slug": "primitive-integrable--4d108ee361bf6e36ad2a06c0",
  "source": {
    "blob": "81332504016ea7584e081ecc596ef7c1a311a7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variantd36481b892758199e0c0a3b331e7e960a2332ef5c0824e82c3c5fe2202183850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d108ee361bf6e36ad2a06c0d138706241d6339be76b4fbe88ee836dd47c04c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variantd36481b892758199e0c0a3b331e7e960a2332ef5c0824e82c3c5fe2202183850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f7eb60-27cd-d317-ef08-9fe5972f2fa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_integrable {t : ℝ} (ht : 0 ≤ t) :
    IntervalIntegrable (fun s : ℝ =>
      Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) volume 0 t := by
  have he : (fun s : ℝ => Real.exp (s/2)*(mangoldtLogError s+Real.eulerMascheroniConstant)) =
      fun s => mangoldtLogPrefix s*Real.exp (s/2) +
        Real.exp (s/2)*(Real.eulerMascheroniConstant-s) := by
    funext s
    unfold mangoldtLogError
    ring
  rw [he]
  exact (prefix_weight_integrable 0 t ht).add
    ((by fun_prop : Continuous (fun s : ℝ => Real.exp (s/2)*
      (Real.eulerMascheroniConstant-s))).intervalIntegrable 0 t)

/-- Exact original finite inventory, with all prime powers and both constants retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt03/Variantd36481b892758199e0c0a3b331e7e960a2332ef5c0824e82c3c5fe2202183850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt03/Variantd36481b892758199e0c0a3b331e7e960a2332ef5c0824e82c3c5fe2202183850.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81332504016ea7584e081ecc596ef7c1a311a7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
