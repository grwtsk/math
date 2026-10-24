# coefficientAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50926b4cb0f818a9f5624ced108f03e53f2a89189633b80f93deafb408f754b3",
  "kind": "def",
  "lexical_name": "coefficientAction",
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
  "slug": "coefficientaction--0d6252d5e159067c69ac95ac",
  "source": {
    "blob": "80a886dcd9c4be62878660fcad4bb23a6aab70ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 223,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d6252d5e159067c69ac95acedfe4a500ce385b28ab239ab7c8d30cfb4c6f334",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50926b4cb0f818a9f5624ced108f03e53f2a89189633b80f93deafb408f754b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coefficientAction (t : ℝ) (ht : 0 ≤ t) :
    coefficientDomain t ht →ₗ[ℂ] lp (fun _ : ℕ => ℂ) 2 where
  toFun v := ⟨jacobiExpression t ht v.val, v.property⟩
  map_add' v w := by
    apply lp.ext
    exact (jacobiExpression t ht).map_add v.val w.val
  map_smul' c v := by
    apply lp.ext
    exact (jacobiExpression t ht).map_smul c v.val

/-- Coordinate action has no additional convergence or domain premise hidden in the output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80a886dcd9c4be62878660fcad4bb23a6aab70ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
