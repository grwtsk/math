# hasDerivAt_corrector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bbd685a-5534-04e7-def5-53808a8df7d2",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_corrector",
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
  "slug": "hasderivat-corrector--a06f8fd8e8f29dd675f512fa",
  "source": {
    "blob": "c6843b65185653d9ec6136475dcd4275e45fb25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a06f8fd8e8f29dd675f512fa188883898b4f5e0ac89d4507356e0dc3020b90bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bbd685a-5534-04e7-def5-53808a8df7d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_corrector {w C c : ℝ → ℝ} {s C' b : ℝ}
    (hw : HasDerivAt w (w s / 2) s) (hC : HasDerivAt C C' s)
    (hc : HasDerivAt c b s) :
    HasDerivAt (fun t ↦ w t * (C t + 4 * c t + 8 * b))
      (w s / 2 * (C s + 4 * c s + 8 * b) + w s * (C' + 4 * b)) s := by
  have h := hw.mul ((hC.add (hc.const_mul 4)).add_const (8 * b))
  exact h.congr_deriv (g' := w s / 2 * (C s + 4 * c s + 8 * b) + w s * (C' + 4 * b))
    (by rfl)

/-- Continuous-corrector event identity, before substituting j=Λ(n)/n. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant2544d3e0760f0121faca979f91d90c2a0d633cf2b5bc5ca7c943b8414ab589a6.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6843b65185653d9ec6136475dcd4275e45fb25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
