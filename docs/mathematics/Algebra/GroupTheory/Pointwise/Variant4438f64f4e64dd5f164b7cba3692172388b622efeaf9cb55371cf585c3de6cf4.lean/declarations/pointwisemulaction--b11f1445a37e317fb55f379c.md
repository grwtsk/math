# pointwiseMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:804994c80dc0fb752a941b5f9943fd5142d373003c1745c50f90583fef04f2b2",
  "kind": "def",
  "lexical_name": "pointwiseMulAction",
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
  "slug": "pointwisemulaction--b11f1445a37e317fb55f379c",
  "source": {
    "blob": "eaaf0387c83aa827009e2be32e21880be10c5eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 444,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant4438f64f4e64dd5f164b7cba3692172388b622efeaf9cb55371cf585c3de6cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b11f1445a37e317fb55f379c9a3a98aaf64953a878eba06f1386d8d7412b33c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant4438f64f4e64dd5f164b7cba3692172388b622efeaf9cb55371cf585c3de6cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:804994c80dc0fb752a941b5f9943fd5142d373003c1745c50f90583fef04f2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def pointwiseMulAction : MulAction α (AddSubgroup A) where
  smul a S := S.map (DistribMulAction.toAddMonoidEnd _ _ a)
  one_smul S := by
    change S.map _ = S
    simpa only [map_one] using S.map_id
  mul_smul _ _ S :=
    (congr_arg (fun f : AddMonoid.End A => S.map f) (MonoidHom.map_mul _ _ _)).trans
      (S.map_map _ _).symm
#align add_subgroup.pointwise_mul_action AddSubgroup.pointwiseMulAction

scoped[Pointwise] attribute [instance] AddSubgroup.pointwiseMulAction

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant4438f64f4e64dd5f164b7cba3692172388b622efeaf9cb55371cf585c3de6cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant4438f64f4e64dd5f164b7cba3692172388b622efeaf9cb55371cf585c3de6cf4.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaaf0387c83aa827009e2be32e21880be10c5eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
