# zeroRingProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:622a6c8794184d1a1035e64483a7d0cbf09167f13ee6d45ee5cf931d681b403a",
  "kind": "def",
  "lexical_name": "zeroRingProd",
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
  "slug": "zeroringprod--d0415afa1712b5c6e3327b47",
  "source": {
    "blob": "5280a25b4b5be4f198af4c2e284518cd23997fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 322,
    "path": "GRWTSK/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0415afa1712b5c6e3327b47098987f4159cf83c4ddbd63add012598a8df5453",
  "verification": {
    "reference": "docs/verification/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:622a6c8794184d1a1035e64483a7d0cbf09167f13ee6d45ee5cf931d681b403a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroRingProd : R ≃+* S × R where
  toFun x := (0, x)
  invFun := Prod.snd
  map_add' := by simp
  map_mul' := by simp
  left_inv _ := rfl
  right_inv x := by cases x; simp [eq_iff_true_of_subsingleton]

end RingEquiv

/-- The product of two nontrivial rings is not a domain -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prod/Variant30c547aa88bf864161221de25c8dc7586197a627aedc41c285d5e485a36797ae.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5280a25b4b5be4f198af4c2e284518cd23997fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
