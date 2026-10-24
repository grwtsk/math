# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cef5bfe7f56889a21dbe1d46bd99ae418442aa21538296ef1fa5d378796645b3",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f03b752a9c61ba329b62c9d3",
  "source": {
    "blob": "d88fbbfbb9a13ab679c9a917df5ee848b30de6a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f03b752a9c61ba329b62c9d3da1be3908b3e87ce7f5f49b0ee6568975b53f665",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cef5bfe7f56889a21dbe1d46bd99ae418442aa21538296ef1fa5d378796645b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (K R A : ℝ) (p : ℕ) (hK : 0 ≤ K) (hR : 1 ≤ R)
    (hB : SquareRootLogBlockEstimate K p R) (hRA : R ≤ A) :
    mertensResidual A ≤ typeTwoDiagonal A + shortMangoldtSource A + shortLogSource A -
      shortPlainSource A + 398721024 * Real.exp 1 * K * 3^p * A^(p+2) :=
  mertensResidual_le_coarse_block_budget K R A p hK hR hB hRA
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateTypeiiSourceEdgeAudit/Variantd2f7da0d61df5d58f47d48e4e10323e165985c4cb17c26ba815840dcdf39433a.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d88fbbfbb9a13ab679c9a917df5ee848b30de6a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
