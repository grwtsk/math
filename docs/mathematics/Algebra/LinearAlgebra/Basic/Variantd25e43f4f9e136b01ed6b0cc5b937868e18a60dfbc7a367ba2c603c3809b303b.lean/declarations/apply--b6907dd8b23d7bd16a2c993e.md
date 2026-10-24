# ι_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b3eb15e-0296-6724-5d3e-442b65669c05",
  "kind": "theorem",
  "lexical_name": "ι_apply",
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
  "slug": "apply--b6907dd8b23d7bd16a2c993e",
  "source": {
    "blob": "da04b4098844c4ad93dd1a829c7bcb7e11fad924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6907dd8b23d7bd16a2c993e147082df0881318ba3f7982c626a99b6eed32ec1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b3eb15e-0296-6724-5d3e-442b65669c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem ι_apply (x : ⨁ i, A i) :
  ⟨Quot.mk (Rel <| rel R A) (TensorAlgebra.ι R x)⟩ = ι' R A x := by
    aesop (add simp [ι', mkAlgHom, RingQuot.mkAlgHom, mkRingHom])

/-- The injection into the free product of any `1 : A i` is the 1 of the free product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd25e43f4f9e136b01ed6b0cc5b937868e18a60dfbc7a367ba2c603c3809b303b.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da04b4098844c4ad93dd1a829c7bcb7e11fad924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
