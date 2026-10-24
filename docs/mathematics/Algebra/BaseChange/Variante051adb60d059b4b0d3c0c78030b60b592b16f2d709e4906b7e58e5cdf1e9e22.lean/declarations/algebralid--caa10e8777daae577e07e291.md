# algebraLid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b4409f38898d635ec35f199143f512783c9042e8f14a20ea0403ae1247a1a97",
  "kind": "def",
  "lexical_name": "algebraLid",
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
  "slug": "algebralid--caa10e8777daae577e07e291",
  "source": {
    "blob": "c3c16c386e50b0680d9532b9006d119c6c60c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caa10e8777daae577e07e291237590b8a549768d8b28c37b0397b44d5c01a52e",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b4409f38898d635ec35f199143f512783c9042e8f14a20ea0403ae1247a1a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def algebraLid : A ⊗[R] B ≃ₐ[A] B :=
  have := tensorProduct_compatibleSMul S A A B
  Algebra.TensorProduct.lidOfCompatibleSMul R A B

@[deprecated (since := "2024-12-01")] alias tensorSelfAlgEquiv := algebraLid

set_option linter.docPrime false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variante051adb60d059b4b0d3c0c78030b60b592b16f2d709e4906b7e58e5cdf1e9e22.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c16c386e50b0680d9532b9006d119c6c60c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
