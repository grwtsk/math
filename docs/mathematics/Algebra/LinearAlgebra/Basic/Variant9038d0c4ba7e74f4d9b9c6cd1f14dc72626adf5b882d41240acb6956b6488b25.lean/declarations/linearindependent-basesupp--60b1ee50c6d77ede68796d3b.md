# linearIndependent_baseSupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a3dc86f-e7f8-fc24-50e7-5efc800bcedb",
  "kind": "lemma",
  "lexical_name": "linearIndependent_baseSupp",
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
  "slug": "linearindependent-basesupp--60b1ee50c6d77ede68796d3b",
  "source": {
    "blob": "f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b1ee50c6d77ede68796d3b259c1104bf21285fb1d90bef2300449a4b4b6816",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a3dc86f-e7f8-fc24-50e7-5efc800bcedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndependent_baseSupp [IsDomain R] [CharZero R] :
    LinearIndependent R b.baseSupp := by
  classical
  have : ((Int.castRingHom R).mapMatrix b.A).Nondegenerate := by
    rw [Matrix.nondegenerate_iff_det_ne_zero, ← RingHom.map_det]
    simpa using! b.nondegen.det_ne_zero
  let v : ι → Dual R H :=
    ((Basis.span b.linInd).map (LinearEquiv.ofEq _ _ b.coe_cartan_eq_span).symm).coord
  have hv : LinearIndependent R v := Basis.linearIndependent_coord _
  simpa [Int.cast_smul_eq_zsmul] using! hv.sum_smul_of_nondegenerate this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant9038d0c4ba7e74f4d9b9c6cd1f14dc72626adf5b882d41240acb6956b6488b25.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c4471b0bce51b1a30d98761d0e26abfeb8b0d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
