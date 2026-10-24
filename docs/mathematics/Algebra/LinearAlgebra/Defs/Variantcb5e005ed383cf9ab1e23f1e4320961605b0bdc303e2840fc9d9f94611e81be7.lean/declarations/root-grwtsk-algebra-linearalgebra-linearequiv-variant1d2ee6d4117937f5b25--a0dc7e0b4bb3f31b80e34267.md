# _root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1d2ee6d4117937f5b25a4d32cad71e63481acd8ae4ede1e761f96aec6670ec9e.RingEquiv.symm_toSemilinearEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7baec416-dab7-ae2b-7ace-c04160d8a01b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1d2ee6d4117937f5b25a4d32cad71e63481acd8ae4ede1e761f96aec6670ec9e.RingEquiv.symm_toSemilinearEquiv_symm_apply",
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
  "slug": "root-grwtsk-algebra-linearalgebra-linearequiv-variant1d2ee6d4117937f5b25--a0dc7e0b4bb3f31b80e34267",
  "source": {
    "blob": "d655a5bbc4714da7b686c5aeae9e19758d68d2f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 600,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0dc7e0b4bb3f31b80e342671e6f392e892e3e694f219e9873566f2a9c84969a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7baec416-dab7-ae2b-7ace-c04160d8a01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.LinearEquiv.Variant1d2ee6d4117937f5b25a4d32cad71e63481acd8ae4ede1e761f96aec6670ec9e.RingEquiv.symm_toSemilinearEquiv_symm_apply (f : R ≃+* S) (x : R) :
  f.symm.toSemilinearEquiv.symm (σ' := RingHomClass.toRingHom f) x = f x := rfl

variable [AddCommMonoid M]

/-- An involutive linear map is a linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d655a5bbc4714da7b686c5aeae9e19758d68d2f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
