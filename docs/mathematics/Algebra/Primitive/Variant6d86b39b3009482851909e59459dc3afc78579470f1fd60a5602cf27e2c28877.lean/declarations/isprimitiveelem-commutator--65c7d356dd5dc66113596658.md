# IsPrimitiveElem.commutator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f834b5f4-4f83-06c2-bac5-bd59e5bcf940",
  "kind": "lemma",
  "lexical_name": "IsPrimitiveElem.commutator",
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
  "slug": "isprimitiveelem-commutator--65c7d356dd5dc66113596658",
  "source": {
    "blob": "b908b522073a39e2e6468d57f25b4965d5e76881",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c7d356dd5dc66113596658380564d682012bdaa9e98a25dbf6a8f4aec6d4f8",
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

Occurrence: `result:f834b5f4-4f83-06c2-bac5-bd59e5bcf940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPrimitiveElem.commutator (ha : IsPrimitiveElem R a) (hb : IsPrimitiveElem R b) :
    IsPrimitiveElem R (a * b - b * a) where
  counit_eq_zero := by
    simpa [ha.counit_eq_zero, hb.counit_eq_zero]
      using (map_add (counit (R := R)) (a * b - b * a) (b * a)).symm
  comul_eq_tmul_add_tmul := by
    simp [ha.comul_eq_tmul_add_tmul, hb.comul_eq_tmul_add_tmul, add_mul, mul_add, sub_tmul,
      tmul_sub]
    abel

end Ring

end Bialgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Primitive/Variant6d86b39b3009482851909e59459dc3afc78579470f1fd60a5602cf27e2c28877.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b908b522073a39e2e6468d57f25b4965d5e76881` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
