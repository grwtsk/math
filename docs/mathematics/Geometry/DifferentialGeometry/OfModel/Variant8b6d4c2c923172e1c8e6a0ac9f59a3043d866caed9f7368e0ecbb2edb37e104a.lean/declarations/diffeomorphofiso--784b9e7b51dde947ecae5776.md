# diffeomorphOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7623d85e1724683770f63169547ee368b40397fa5b55655b0dd200bd2de8909a",
  "kind": "def",
  "lexical_name": "diffeomorphOfIso",
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
  "slug": "diffeomorphofiso--784b9e7b51dde947ecae5776",
  "source": {
    "blob": "258b19a9ad0d804cba577d3766ccf7b3f9ea220f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 153,
    "path": "GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:784b9e7b51dde947ecae57760417f984252e60f822cb791f268274a50297a2b2",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7623d85e1724683770f63169547ee368b40397fa5b55655b0dd200bd2de8909a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diffeomorphOfIso (i : M ≅ N) : M ≃ₘ^n⟮I, I⟯ N where
  toFun := i.hom
  invFun := i.inv
  left_inv _ := by simp
  right_inv _ := by simp
  contMDiff_toFun := i.hom.hom.contMDiff
  contMDiff_invFun := i.inv.hom.contMDiff

/-- Diffeomorphisms between manifolds modeled on `I` are the same as isomorphisms in
`ModelWithCorners.MfldCat I n`. -/
@[expose, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant8b6d4c2c923172e1c8e6a0ac9f59a3043d866caed9f7368e0ecbb2edb37e104a.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `258b19a9ad0d804cba577d3766ccf7b3f9ea220f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
