# actualSignedQuotientSamplingError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a73812b4e2e684de498ea1a544736de725df5d06b835d39ccd5d7f97328c8aa8",
  "kind": "def",
  "lexical_name": "actualSignedQuotientSamplingError",
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
  "slug": "actualsignedquotientsamplingerror--2eec779a5858b29af2afdeeb",
  "source": {
    "blob": "29ad78d12d1c39ba08f1ba15dc1e613cce45e007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant73065347a71bfa5ed5b78db45390d7d6087f4b0d4f702aa4b738a5a3db53f3e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2eec779a5858b29af2afdeeb94a78274a8c1fea7747530e4ada58249c2c257f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant73065347a71bfa5ed5b78db45390d7d6087f4b0d4f702aa4b738a5a3db53f3e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a73812b4e2e684de498ea1a544736de725df5d06b835d39ccd5d7f97328c8aa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualSignedQuotientSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
    (∑ m ∈ longInventory A, vonMangoldt m * actualQuotientSamplingError A d m)

/-- The original divisor remainder retains all independently specified rows and diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant73065347a71bfa5ed5b78db45390d7d6087f4b0d4f702aa4b738a5a3db53f3e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant73065347a71bfa5ed5b78db45390d7d6087f4b0d4f702aa4b738a5a3db53f3e1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ad78d12d1c39ba08f1ba15dc1e613cce45e007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
