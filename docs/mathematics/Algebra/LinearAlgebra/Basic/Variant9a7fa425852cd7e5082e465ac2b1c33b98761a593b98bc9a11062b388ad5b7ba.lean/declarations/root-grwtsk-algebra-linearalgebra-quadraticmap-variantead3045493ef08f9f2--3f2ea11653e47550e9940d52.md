# _root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.QuadraticForm.associated_isSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe2ec5cd-b030-a605-bee7-d37e184f3eed",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.QuadraticForm.associated_isSymm",
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
  "slug": "root-grwtsk-algebra-linearalgebra-quadraticmap-variantead3045493ef08f9f2--3f2ea11653e47550e9940d52",
  "source": {
    "blob": "1881d5b2229c291f9a8dbc614ee29bf6195a1265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 914,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f2ea11653e47550e9940d52e497be54d24416cdfb713912c43194f86c54631e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2ec5cd-b030-a605-bee7-d37e184f3eed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.QuadraticMap.Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.QuadraticForm.associated_isSymm (Q : QuadraticForm R M) [Invertible (2 : R)] :
    (associatedHom S Q).IsSymm :=
  QuadraticMap.associated_isSymm S Q

/-- A version of `QuadraticMap.associated_isSymm` for general targets
(using `flip` because `IsSymm` does not apply here). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1881d5b2229c291f9a8dbc614ee29bf6195a1265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
