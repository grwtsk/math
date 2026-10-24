# actualAbsoluteVariation_inverse_eventually_two_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64abf38d-48e8-80df-8b5d-7b89867d10ff",
  "kind": "theorem",
  "lexical_name": "actualAbsoluteVariation_inverse_eventually_two_sided",
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
  "slug": "actualabsolutevariation-inverse-eventually-two-sided--26931d04ebd45aaa034253e6",
  "source": {
    "blob": "1313ca2b0fc11bbf8abd3a53b12d3a787b15848f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 141,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant75732ee57bce0935cab8e8c1e97452877cea4347fbe4026117fcc38a1d039ba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26931d04ebd45aaa034253e6df3be3b3241ad7bf4393c3675b75ac77169b0dc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant75732ee57bce0935cab8e8c1e97452877cea4347fbe4026117fcc38a1d039ba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64abf38d-48e8-80df-8b5d-7b89867d10ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsoluteVariation_inverse_eventually_two_sided :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        A ^ 9 * Real.exp (-A) / actualAbsolutePrimeMomentUpperConstant ≤
          1 / actualClosedAbsolutePrimeMoment A ∧
        1 / actualClosedAbsolutePrimeMoment A ≤
          2 * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by
  obtain ⟨R,hR,hbound⟩ := actualAbsoluteVariation_inverse_eventually_exp_bound
  refine ⟨R,hR,?_⟩
  intro A hA
  obtain ⟨hV,hupper⟩ := hbound A hA
  exact ⟨hV,actualAbsoluteVariation_inverse_exp_lower (hR.trans hA) hV,hupper⟩

/-- Existence of one fixed exponential one-sided precision constant, without a witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant75732ee57bce0935cab8e8c1e97452877cea4347fbe4026117fcc38a1d039ba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant75732ee57bce0935cab8e8c1e97452877cea4347fbe4026117fcc38a1d039ba3.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1313ca2b0fc11bbf8abd3a53b12d3a787b15848f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
