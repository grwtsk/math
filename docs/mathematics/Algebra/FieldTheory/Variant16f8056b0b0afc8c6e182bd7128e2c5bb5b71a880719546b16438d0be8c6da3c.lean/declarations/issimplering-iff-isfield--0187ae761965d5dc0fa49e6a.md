# isSimpleRing_iff_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a53cd888-5bba-2cb4-6f1a-982977e5dd7f",
  "kind": "lemma",
  "lexical_name": "isSimpleRing_iff_isField",
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
  "slug": "issimplering-iff-isfield--0187ae761965d5dc0fa49e6a",
  "source": {
    "blob": "bef6dc7319d019e5b006b010881f107bf451ade0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 59,
    "path": "GRWTSK/Algebra/Field/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0187ae761965d5dc0fa49e6a19f9598e2fb02fd7712cd29477873fd015f4ceed",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a53cd888-5bba-2cb4-6f1a-982977e5dd7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSimpleRing_iff_isField (A : Type*) [CommRing A] : IsSimpleRing A ↔ IsField A :=
  ⟨fun _ ↦ Subring.topEquiv.symm.toMulEquiv.isField _ <| by
    rw [← Subring.center_eq_top A]; exact IsSimpleRing.isField_center A,
    fun h ↦ letI := h.toField; inferInstance⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant16f8056b0b0afc8c6e182bd7128e2c5bb5b71a880719546b16438d0be8c6da3c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef6dc7319d019e5b006b010881f107bf451ade0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
