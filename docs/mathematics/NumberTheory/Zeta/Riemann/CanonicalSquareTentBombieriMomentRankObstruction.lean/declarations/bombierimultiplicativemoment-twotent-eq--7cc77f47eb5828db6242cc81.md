# bombieriMultiplicativeMoment_twoTent_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7dea8cc-a733-7092-054e-4905ef996453",
  "kind": "theorem",
  "lexical_name": "bombieriMultiplicativeMoment_twoTent_eq",
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
  "slug": "bombierimultiplicativemoment-twotent-eq--7cc77f47eb5828db6242cc81",
  "source": {
    "blob": "fb3f61846511ff9edf8759c611ce860d35ac4325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 417,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc77f47eb5828db6242cc8172d308c7c4aeafa5cdb9dfb5e24f284e2c86e91b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7dea8cc-a733-7092-054e-4905ef996453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bombieriMultiplicativeMoment_twoTent_eq (u : Combination 1) :
    bombieriMultiplicativeMoment (twoTentFunction u) =
      multiplicativeMomentMap u := by
  have h0 :=
    (canonicalTentComplex_div_integrableOn 0).const_mul (u stageTwoCoordinate)
  have h1 :=
    (canonicalTentComplex_div_integrableOn 1).const_mul (u stageThreeCoordinate)
  unfold bombieriMultiplicativeMoment twoTentFunction multiplicativeMomentMap
  simp_rw [add_div, mul_div_assoc]
  rw [integral_add h0 h1, integral_const_mul, integral_const_mul]
  change u stageTwoCoordinate * bombieriMultiplicativeMoment (canonicalTentComplex 0) +
    u stageThreeCoordinate * bombieriMultiplicativeMoment (canonicalTentComplex 1) = _
  rw [bombieriMultiplicativeMoment_canonicalTent_eq, bombieriMultiplicativeMoment_canonicalTent_eq]

/-- The two-moment coordinate map has trivial kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3f61846511ff9edf8759c611ce860d35ac4325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
