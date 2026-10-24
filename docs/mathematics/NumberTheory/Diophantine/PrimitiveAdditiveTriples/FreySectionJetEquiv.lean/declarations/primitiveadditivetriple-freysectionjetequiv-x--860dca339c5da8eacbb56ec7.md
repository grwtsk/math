# PrimitiveAdditiveTriple.freySectionJetEquiv_x

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af478d0c-59a8-e205-13f1-b907797f1ab4",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freySectionJetEquiv_x",
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
  "slug": "primitiveadditivetriple-freysectionjetequiv-x--860dca339c5da8eacbb56ec7",
  "source": {
    "blob": "801e2dbabe8916a3c98f9547a2e3a64de03b8539",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:860dca339c5da8eacbb56ec7f4a51332a9cd513e18cd4564eadab1c9358994dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af478d0c-59a8-e205-13f1-b907797f1ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freySectionJetEquiv_x
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    t.freySectionJetEquiv i N
      (FreyJetQuotient.x (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) N) =
      FreyJetQuotient.parameterScalar (FreyJetChart t i) N
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) +
      AdjoinRoot.mk ((Polynomial.X : Polynomial (FreyJetChart t i)) ^ (N + 1))
        (t.freyChartApproximant i N) := by
  change FreyJetQuotient.toParameter _ _ _ _ _ _ N _ = _
  rw [FreyJetQuotient.toParameter_x, t.freySectionJet_quadratic i]
  congr 1
  have hm := FreyJetRecursion.map_iterate
    (AdjoinRoot.mk ((Polynomial.X : Polynomial (FreyJetChart t i)) ^ (N + 1)))
    (Polynomial.C (t.freyChartInverse i))
    (Polynomial.C (algebraMap ℤ (FreyJetChart t i) (t.freyPortQuadraticCoefficientInt i)))
    Polynomial.X N
  simpa [PrimitiveAdditiveTriple.freyChartApproximant, FreyJetQuotient.parameterScalar,
    FreyJetQuotient.parameter] using hm.symm

/-- Quotient truncation is independently defined from inclusion of relation ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801e2dbabe8916a3c98f9547a2e3a64de03b8539` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
