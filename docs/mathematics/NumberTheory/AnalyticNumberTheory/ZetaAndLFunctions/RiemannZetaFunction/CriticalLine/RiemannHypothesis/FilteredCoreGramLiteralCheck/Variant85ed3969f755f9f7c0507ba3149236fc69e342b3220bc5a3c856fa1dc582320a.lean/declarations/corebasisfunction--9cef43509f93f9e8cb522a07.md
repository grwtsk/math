# coreBasisFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d529a3e4782be995d5d0888c922ca1735da7427903a6e23c4fd8c797c8c0154",
  "kind": "def",
  "lexical_name": "coreBasisFunction",
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
  "slug": "corebasisfunction--9cef43509f93f9e8cb522a07",
  "source": {
    "blob": "237ade4d325f4591b80ca0996b73723f44d6f7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cef43509f93f9e8cb522a07a026fc530951964d475f134a80d9587d7d506397",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d529a3e4782be995d5d0888c922ca1735da7427903a6e23c4fd8c797c8c0154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coreBasisFunction (Y : ℝ) (d : ℕ) : ℝ → ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator fun u => (Real.exp (-u / 2) : ℂ) *
    if d = 0 then (if 1 ≤ Real.exp u then 1 else 0)
    else ((Int.fract (Real.exp u / (d : ℝ)) : ℝ) : ℂ)

/-- Every individual original core basis function is admitted in full-line L2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramLiteralCheck/Variant85ed3969f755f9f7c0507ba3149236fc69e342b3220bc5a3c856fa1dc582320a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `237ade4d325f4591b80ca0996b73723f44d6f7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
