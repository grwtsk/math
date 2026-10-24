# second_scaledProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e501350caf156b468233ad7ec8bed00798e7f437",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c24df84-7277-da66-e65f-dd1da425a7ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdd1322e-ca56-7f9c-a3a0-f0ae9a696449",
  "kind": "theorem",
  "lexical_name": "second_scaledProfile",
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
  "slug": "second-scaledprofile--c06a33fbc84b77f1cf7dba97",
  "source": {
    "blob": "e501350caf156b468233ad7ec8bed00798e7f437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06a33fbc84b77f1cf7dba97e64054c44395eedaf1ea3f08b74c171382c4e6a2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdd1322e-ca56-7f9c-a3a0-f0ae9a696449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_scaledProfile {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (A x : ℝ) :
    deriv (deriv (scaledProfile h A)) x =
      deriv (deriv h) (x / A) / (A ^ 2 * Real.sqrt A) := by
  have heq : deriv (scaledProfile h A) =
      fun y ↦ deriv h (y / A) / (A * Real.sqrt A) := by
    funext y
    exact deriv_scaledProfile (hc.differentiable (by norm_num)) A y
  rw [heq]
  have hd := ((hc.differentiable_deriv_two (x / A)).hasDerivAt.comp x
    ((hasDerivAt_id x).div_const A)).div_const (A * Real.sqrt A)
  change HasDerivAt (fun y ↦ deriv h (y / A) / (A * Real.sqrt A))
    (deriv (deriv h) (x / A) * (1 / A) / (A * Real.sqrt A)) x at hd
  rw [hd.deriv]
  ring

/-- Explicit operator formula for every positive scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyNormalization/Variant7ee63634170775f5bc28c8835a0d65a81af080cfd4511be74ce63c4707994d82.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e501350caf156b468233ad7ec8bed00798e7f437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
