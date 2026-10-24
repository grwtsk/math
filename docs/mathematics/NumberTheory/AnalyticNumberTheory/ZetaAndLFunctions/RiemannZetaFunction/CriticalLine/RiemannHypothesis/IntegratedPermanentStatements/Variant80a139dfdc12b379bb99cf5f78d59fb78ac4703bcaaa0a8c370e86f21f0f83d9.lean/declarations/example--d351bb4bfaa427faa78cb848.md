# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7944427889f2481f0610503f11953ead6f2d2ca18dda1160b5bdbda3a62c3284",
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
  "slug": "example--d351bb4bfaa427faa78cb848",
  "source": {
    "blob": "3aa63cad6e8141b6a1e3c82df481733a319a62d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2794,
    "line": 2785,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant80a139dfdc12b379bb99cf5f78d59fb78ac4703bcaaa0a8c370e86f21f0f83d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d351bb4bfaa427faa78cb8485baa7455b193c3a4fcc968d2b25c5a4a7302b492",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant80a139dfdc12b379bb99cf5f78d59fb78ac4703bcaaa0a8c370e86f21f0f83d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7944427889f2481f0610503f11953ead6f2d2ca18dda1160b5bdbda3a62c3284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2785–2794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (N u v : ℕ) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u*v)) (hG : 8 ≤ N / max u v) :
    |SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v)) -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*(u*v))
        (Nat.sqrt (N / max (2*u) v)) -
      FiniteDensityInsertion.twoDensityFactor *
        SquarefreeCount.finiteSquarefreeDensity (u*v) (Nat.sqrt (N / max u v))| ≤
      7 * Real.sqrt 2 / (6 * (Nat.sqrt (N / max (2*u) v):ℝ)) := by
  exact RatioInsertionCutoffs.signed_two_density_left_cutoffs_error_le N u v hu hv hodd hG

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant80a139dfdc12b379bb99cf5f78d59fb78ac4703bcaaa0a8c370e86f21f0f83d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant80a139dfdc12b379bb99cf5f78d59fb78ac4703bcaaa0a8c370e86f21f0f83d9.lean#L2785).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aa63cad6e8141b6a1e3c82df481733a319a62d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
