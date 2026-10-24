# posSemidef_self_mul_conjTranspose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f4ec5a8-ac85-2c60-f355-ba09ad227408",
  "kind": "theorem",
  "lexical_name": "posSemidef_self_mul_conjTranspose",
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
  "slug": "possemidef-self-mul-conjtranspose--5ab661482f9e331f7fcc1d32",
  "source": {
    "blob": "9f8dd9870f5c20398f904a3c0e425b314994cbf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ab661482f9e331f7fcc1d32ff230e01303f66f698bd9552813b610bd36ca5f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f4ec5a8-ac85-2c60-f355-ba09ad227408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posSemidef_self_mul_conjTranspose (A : Matrix m n R) : Matrix.PosSemidef (A * Aᴴ) :=
  by simpa only [conjTranspose_conjTranspose] using posSemidef_conjTranspose_mul_self Aᴴ

/-- The eigenvalues of a positive definite matrix are positive -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variant422045f1f2d482cf0bcc6e5cc3534bedae9a4afc1fd858e0d5cd382cc7e07644.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8dd9870f5c20398f904a3c0e425b314994cbf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
