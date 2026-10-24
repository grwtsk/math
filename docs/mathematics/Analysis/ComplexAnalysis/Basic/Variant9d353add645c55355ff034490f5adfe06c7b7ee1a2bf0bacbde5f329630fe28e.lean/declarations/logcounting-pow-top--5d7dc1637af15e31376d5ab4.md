# logCounting_pow_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bce43950-981d-4eb0-2576-d8807d3aee82",
  "kind": "theorem",
  "lexical_name": "logCounting_pow_top",
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
  "slug": "logcounting-pow-top--5d7dc1637af15e31376d5ab4",
  "source": {
    "blob": "8e72d74008844a6a344e67c6f83a260d8362a838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 648,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d7dc1637af15e31376d5ab4b9ae5f65e2925e770648f34346b2dbd80f2f0436",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce43950-981d-4eb0-2576-d8807d3aee82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem logCounting_pow_top {f : 𝕜 → 𝕜} {n : ℕ} (hf : Meromorphic f) :
    logCounting (f ^ n) ⊤ = n • logCounting f ⊤ := by
  simp [logCounting, divisor_pow hf.meromorphicOn n]

end ValueDistribution

/-!
## Representation by Integrals

For `𝕜 = ℂ`, the theorems below describe the logarithmic counting function in terms of circle
averages.
-/

/--
Over the complex numbers, present the logarithmic counting function attached to the divisor of a
meromorphic function `f` as a circle average over `log ‖f ·‖`.

This is a reformulation of Jensen's formula of complex analysis. See
`MeromorphicOn.circleAverage_log_norm` for Jensen's formula in the original context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e72d74008844a6a344e67c6f83a260d8362a838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
