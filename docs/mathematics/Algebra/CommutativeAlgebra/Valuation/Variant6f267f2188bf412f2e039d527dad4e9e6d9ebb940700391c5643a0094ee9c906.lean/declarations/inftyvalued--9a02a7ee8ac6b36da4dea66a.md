# inftyValued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:910806c29c7fc9cb3ebb9dd7a554e635758aff0b86da3374229836345e82cb10",
  "kind": "def",
  "lexical_name": "inftyValued",
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
  "slug": "inftyvalued--9a02a7ee8ac6b36da4dea66a",
  "source": {
    "blob": "d3ff740c44d0e779ddb7e530574124d34c1efd5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 127,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a02a7ee8ac6b36da4dea66a7305a987ee32c2083a5d7329ffbb50fb7cd1b923",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:910806c29c7fc9cb3ebb9dd7a554e635758aff0b86da3374229836345e82cb10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inftyValued : Valued (RatFunc F) ℤᵐ⁰ :=
  Valued.mk' <| inftyValuation F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant6f267f2188bf412f2e039d527dad4e9e6d9ebb940700391c5643a0094ee9c906.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3ff740c44d0e779ddb7e530574124d34c1efd5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
