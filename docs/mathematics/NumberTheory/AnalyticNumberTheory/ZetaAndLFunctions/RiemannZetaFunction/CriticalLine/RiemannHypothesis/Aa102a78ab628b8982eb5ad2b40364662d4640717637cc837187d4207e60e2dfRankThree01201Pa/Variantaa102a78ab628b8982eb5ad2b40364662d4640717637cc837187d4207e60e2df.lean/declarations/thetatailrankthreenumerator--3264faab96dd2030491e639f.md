# thetaTailRankThreeNumerator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c38bcd5b9a1108d8a4386daa95cf15d57aba2687ac65e5ac07f92746190e2de3",
  "kind": "def",
  "lexical_name": "thetaTailRankThreeNumerator",
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
  "slug": "thetatailrankthreenumerator--3264faab96dd2030491e639f",
  "source": {
    "blob": "47ca3b2a1585dc8f7564ae8f37604288e9d76b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3264faab96dd2030491e639fb6a5a26ba8d08adf4a41098bd6d766dc8bdad4f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c38bcd5b9a1108d8a4386daa95cf15d57aba2687ac65e5ac07f92746190e2de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaTailRankThreeNumerator (t : ℝ) : ℝ :=
  (deriv (deriv thetaPhi) t * thetaTail 4 t - thetaPhi t * thetaTail 2 t) *
      thetaTailGap 0 2 t -
    thetaTailGap 0 4 t *
      (deriv (deriv thetaPhi) t * thetaTail 2 t - thetaPhi t ^ 2)

/-- Scalar expansion of the rank-three compound numerator, including every sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantaa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2df.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47ca3b2a1585dc8f7564ae8f37604288e9d76b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
