# analytic_extended_ownership_reduces_to_internal_without_trusted_external

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85e6bea0-90f9-18b5-44a6-b626493f30a3",
  "kind": "theorem",
  "lexical_name": "analytic_extended_ownership_reduces_to_internal_without_trusted_external",
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
  "slug": "analytic-extended-ownership-reduces-to-internal-without-trusted-external--7915a1d7fc3b38adb3699c9c",
  "source": {
    "blob": "4e5fcc311c01bb61f4efcc74d22b0a1f23076764",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7915a1d7fc3b38adb3699c9cceb7e52a155ff6c34f12a4c0a7916d0bdf1dee94",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85e6bea0-90f9-18b5-44a6-b626493f30a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem analytic_extended_ownership_reduces_to_internal_without_trusted_external
    {Γ : BoundaryCalculus.AnalyticContext}
    {b : AnalyticBoundaryKind}
    {q : BoundaryCalculus.AnalyticClaim Γ b}
    (hNoTrusted :
      ∀ T : TrustedExternalAnalyticToken Γ b q, False)
    (hOwn : OwnsWithTrustedExternal Γ b q) :
    BoundaryCalculus.Owns Γ b q := by
  cases hOwn with
  | intro s =>
      cases s with
      | inl internal => exact ⟨internal⟩
      | inr external => exact False.elim (hNoTrusted external)

/--
Relative conservativity at the analytic boundary, soundness form.

Without a trusted external token, the claim is recovered exclusively through
the existing internal analytic boundary calculus.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TrustedExternal/Variantdb59d808467e5dd7c1a6a2eb460241a28e0566466c26bd9b7ec4638e8c292e1a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e5fcc311c01bb61f4efcc74d22b0a1f23076764` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
