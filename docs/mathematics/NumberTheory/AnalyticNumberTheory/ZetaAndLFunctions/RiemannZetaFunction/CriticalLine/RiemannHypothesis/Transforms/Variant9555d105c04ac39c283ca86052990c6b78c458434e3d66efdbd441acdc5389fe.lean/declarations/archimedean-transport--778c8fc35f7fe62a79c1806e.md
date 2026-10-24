# archimedean_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b4646d4-2b4a-2b3f-299c-ec92473ac937",
  "kind": "theorem",
  "lexical_name": "archimedean_transport",
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
  "slug": "archimedean-transport--778c8fc35f7fe62a79c1806e",
  "source": {
    "blob": "1a43a2268cb9ffd5d36054c7408f6055147e2325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:778c8fc35f7fe62a79c1806ec949182e5d7cdce41cecd9b6f083cb4a892c8ca8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4646d4-2b4a-2b3f-299c-ec92473ac937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedean_transport (A : ℝ) (hA : 1 ≤ A) :
    (1 / (2 * Real.pi) : ℂ) *
      (∫ ξ : ℝ, Zeta23.paperFT (complexCorrelation A) ξ * (Zeta23.EF.gammaBracket ξ : ℂ)) =
      (((∫ ξ, archimedeanMultiplier ξ * Complex.normSq
        (sourceFourier (actualTest A) ξ)) / (2 * Real.pi) : ℝ) : ℂ) := by
  have heq : (fun ξ : ℝ ↦ Zeta23.paperFT (complexCorrelation A) ξ *
      (Zeta23.EF.gammaBracket ξ : ℂ)) =
      (fun ξ : ℝ ↦ ((archimedeanMultiplier ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ) : ℝ) : ℂ)) := by
    funext ξ
    rw [paperFT_on_real A ξ hA, gammaBracket_eq_source]
    push_cast
    ring
  rw [heq, integral_complex_ofReal]
  push_cast
  ring

/-- The full natural-number prime family is finite at the original strict cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transforms/Variant9555d105c04ac39c283ca86052990c6b78c458434e3d66efdbd441acdc5389fe.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43a2268cb9ffd5d36054c7408f6055147e2325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
