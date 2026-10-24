# prodXSubSmul.monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3212759-1581-dcb4-7034-54db4a801d78",
  "kind": "theorem",
  "lexical_name": "prodXSubSmul.monic",
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
  "slug": "prodxsubsmul-monic--19909ed2f5902fca7b9c430b",
  "source": {
    "blob": "d133278eee149a3e11dc32da0899f32d6f1aa6ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 111,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19909ed2f5902fca7b9c430bf9947d42c5c32f273159fc989316f041133e36b1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3212759-1581-dcb4-7034-54db4a801d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prodXSubSmul.monic (x : R) : (prodXSubSmul G R x).Monic :=
  Polynomial.monic_prod_of_monic _ _ fun _ _ ↦ Polynomial.monic_X_sub_C _
#align prod_X_sub_smul.monic prodXSubSmul.monic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variant26ec4ec9f850852f5b160cabaa2ae3d38843c69395b56a9ad9f8836f5a6f9b4a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d133278eee149a3e11dc32da0899f32d6f1aa6ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
