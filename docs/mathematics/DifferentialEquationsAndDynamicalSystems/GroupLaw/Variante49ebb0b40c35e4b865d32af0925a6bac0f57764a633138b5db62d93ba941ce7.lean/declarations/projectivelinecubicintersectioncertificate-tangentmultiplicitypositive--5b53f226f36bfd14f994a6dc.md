# ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43280b1c-0a32-14fe-67c3-d8ab040165b5",
  "kind": "theorem",
  "lexical_name": "ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive",
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
  "slug": "projectivelinecubicintersectioncertificate-tangentmultiplicitypositive--5b53f226f36bfd14f994a6dc",
  "source": {
    "blob": "54b92f8d00b3e14abcb71f17b945439a113d6c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 385,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b53f226f36bfd14f994a6dcad597400b693934589247fd5778049fcdcd3a86b",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43280b1c-0a32-14fe-67c3-d8ab040165b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive
    {C : LawfulShortWeierstrass.{u}}
    {P : ProjectiveWeierstrassClosureCertificate C}
    (I : ProjectiveLineCubicIntersectionCertificate C P)
    (Q : Point C.E)
    (L : I.intersectionData.Line)
    (h : I.intersectionData.tangentAt Q L) :
    0 < I.multiplicityData.tangentMultiplicity Q L :=
  I.multiplicityData.tangentMultiplicityPositive Q L h

/--
Geometric associativity provenance for the chord-tangent group law.

This is still an interface certificate. It does not prove the divisor theorem,
Cayley-Bacharach, Bezout, or associativity from first principles. It carries
typed divisor and configuration data rather than bare descriptor gates.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b92f8d00b3e14abcb71f17b945439a113d6c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
