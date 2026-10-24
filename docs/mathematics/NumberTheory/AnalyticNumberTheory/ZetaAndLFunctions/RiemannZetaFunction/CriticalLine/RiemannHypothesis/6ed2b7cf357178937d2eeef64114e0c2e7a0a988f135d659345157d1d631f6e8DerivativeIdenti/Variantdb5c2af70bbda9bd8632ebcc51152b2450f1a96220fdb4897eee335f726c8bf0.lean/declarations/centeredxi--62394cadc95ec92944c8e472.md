# centeredXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d43da57e5b1aae91ca7dbcc4411b16d3ac86987cbd1d0db0c8952482ad1d7af",
  "kind": "def",
  "lexical_name": "centeredXi",
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
  "slug": "centeredxi--62394cadc95ec92944c8e472",
  "source": {
    "blob": "a0541375e404448f64801a18da5d3fab04805cbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62394cadc95ec92944c8e4722bb13b338a27abe493def72375c3094fee3808f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d43da57e5b1aae91ca7dbcc4411b16d3ac86987cbd1d0db0c8952482ad1d7af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def centeredXi (u : ℂ) : ℂ := XiToeplitz.xi (1 / 2 + u)

/-- Translation to the center preserves every complex iterated derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0541375e404448f64801a18da5d3fab04805cbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
