# D1trunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bee324fbc50ebaa8bee3badf0fea371425940fd466f8df299748958b71bb4658",
  "kind": "def",
  "lexical_name": "D1trunc",
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
  "slug": "d1trunc--35ec48d99e2ffa0efb280218",
  "source": {
    "blob": "16460e4d68013c156e91012fcdc6cb72b028ef9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35ec48d99e2ffa0efb280218a7ef5cfef2bd184fe64172e6af5f97c4496038a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bee324fbc50ebaa8bee3badf0fea371425940fd466f8df299748958b71bb4658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def D1trunc (K : ℕ) (s : ℝ) : ℝ := s - 4 * s ^ 2 + ∑ k ∈ Finset.range K, D1coeff k * s ^ (2 * k + 3)

/-- (v⋆v)(r) := ∫_{−1/2}^{1/2−r} v(s)·v(s+r) ds — the autocorrelation of the profile on the unit window, for
lags 0 ≤ r ≤ 1 (both s and s+r range over [−1/2,1/2]; = L⁻¹·(autocorrelation of the sharp window
u ↦ v(u/L)·1_{[−L/2,L/2]} at lag rL)).  ONE parenthesised product.  (This is the form the prime side's
J_T converges to with no Fubini step.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16460e4d68013c156e91012fcdc6cb72b028ef9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
