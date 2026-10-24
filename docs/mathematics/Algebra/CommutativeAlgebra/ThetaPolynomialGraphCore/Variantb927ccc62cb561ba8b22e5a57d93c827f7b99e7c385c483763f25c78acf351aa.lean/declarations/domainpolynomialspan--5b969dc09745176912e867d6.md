# domainPolynomialSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d38034df8f2aae016e0dd69113f92491563ad853149e4d7a357ad9a083dd656",
  "kind": "def",
  "lexical_name": "domainPolynomialSpan",
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
  "slug": "domainpolynomialspan--5b969dc09745176912e867d6",
  "source": {
    "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 289,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b969dc09745176912e867d620e84fc04aa767615bcd9f08ff29ee2a8a7ebaf1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d38034df8f2aae016e0dd69113f92491563ad853149e4d7a357ad9a083dd656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def domainPolynomialSpan (t : ℝ) (ht : 0 ≤ t) :
    Submodule ℂ (coordinateDomain (momentMeasure t)) :=
  Submodule.span ℂ (Set.range (fun n => polynomialDomainVector t ht (Polynomial.X ^ n)))

/-- The actual domain monomial transports to the same weighted monomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
