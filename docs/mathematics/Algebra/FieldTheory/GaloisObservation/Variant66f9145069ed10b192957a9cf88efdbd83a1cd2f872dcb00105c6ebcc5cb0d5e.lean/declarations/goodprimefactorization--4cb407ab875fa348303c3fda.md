# GoodPrimeFactorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8df4992541c0b20b80a42aabd8155bb94aa02a7dda7b6e319db4157e16e8c85",
  "kind": "structure",
  "lexical_name": "GoodPrimeFactorization",
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
  "slug": "goodprimefactorization--4cb407ab875fa348303c3fda",
  "source": {
    "blob": "6ce4aae81e6024b1cce1f43d52fa1ba6693d445c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cb407ab875fa348303c3fda736ed744209eae3a1616f64b913127126d5841b9",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8df4992541c0b20b80a42aabd8155bb94aa02a7dda7b6e319db4157e16e8c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GoodPrimeFactorization (source : Observation.PolynomialSource)
    (p : ℕ) [Fact p.Prime] where
  /-- Explicit finite list of factors, including linear factors. -/
  factors : List (Polynomial (ZMod p))
  /-- Reduction is monic, fixing its scalar coefficient. -/
  monic : (reduction source p).Monic
  /-- Degree does not collapse at the selected prime. -/
  degree_preserved : (reduction source p).natDegree = source.polynomial.natDegree
  /-- The reduced polynomial has no repeated roots. -/
  separable : (reduction source p).Separable
  /-- Every listed factor is monic. -/
  factors_monic : ∀ f ∈ factors, f.Monic
  /-- Every listed factor is irreducible over the finite field. -/
  factors_irreducible : ∀ f ∈ factors, Irreducible f
  /-- No factors may be omitted: their exact product is the reduced polynomial. -/
  complete : factors.prod = reduction source p

/-- Degree multiset from a complete factorization; ordering carries no algebraic authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant66f9145069ed10b192957a9cf88efdbd83a1cd2f872dcb00105c6ebcc5cb0d5e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4aae81e6024b1cce1f43d52fa1ba6693d445c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
