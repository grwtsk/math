# isPrimitiveElem_iff_comul_eq_tmul_add_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6db8cb63-a011-c272-b7b1-eb5a23490859",
  "kind": "lemma",
  "lexical_name": "isPrimitiveElem_iff_comul_eq_tmul_add_tmul",
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
  "slug": "isprimitiveelem-iff-comul-eq-tmul-add-tmul--1b38a6b9572900510d544d50",
  "source": {
    "blob": "b908b522073a39e2e6468d57f25b4965d5e76881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b38a6b9572900510d544d5071136822a2f5de8da2f27df56e95d15c1700b19e",
  "verification": {
    "reference": "docs/verification/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db8cb63-a011-c272-b7b1-eb5a23490859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrimitiveElem_iff_comul_eq_tmul_add_tmul :
    IsPrimitiveElem R a ↔ comul a = 1 ⊗ₜ[R] a + a ⊗ₜ[R] 1 :=
  isSkewPrimitiveElem_iff_comul_eq_tmul_add_tmul counit_one counit_one

end Semiring

section Ring
variable [Ring A] [Bialgebra R A] {a b : A}

/-- The commutator `[a, b] = a * b - b * a` of two primitive elements is primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b908b522073a39e2e6468d57f25b4965d5e76881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
