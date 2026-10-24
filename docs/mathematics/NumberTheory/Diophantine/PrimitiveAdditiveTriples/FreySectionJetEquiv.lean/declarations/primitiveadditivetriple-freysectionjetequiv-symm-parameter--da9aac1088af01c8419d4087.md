# PrimitiveAdditiveTriple.freySectionJetEquiv_symm_parameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44dba922-9b50-f9b3-79cc-3d1d3056ad31",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freySectionJetEquiv_symm_parameter",
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
  "slug": "primitiveadditivetriple-freysectionjetequiv-symm-parameter--da9aac1088af01c8419d4087",
  "source": {
    "blob": "801e2dbabe8916a3c98f9547a2e3a64de03b8539",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da9aac1088af01c8419d408792d9a510b2561c5ddea23baba932f68d22d1465f",
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

Occurrence: `result:44dba922-9b50-f9b3-79cc-3d1d3056ad31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freySectionJetEquiv_symm_parameter
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) :
    (t.freySectionJetEquiv i N).symm (FreyJetQuotient.parameter (FreyJetChart t i) N) =
      FreyJetQuotient.y (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
        (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) N :=
  FreyJetQuotient.fromParameter_parameter _ _ _ N

/-- The X image is the SAME integral chart polynomial from v0.11, reduced
modulo T^(N+1). No new fitted or rational-only approximant is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801e2dbabe8916a3c98f9547a2e3a64de03b8539` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
