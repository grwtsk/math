# gradeBy.gradedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0e891f16b191f96373b5f2352c414cb2d6ebdd5231052c6332a40ae686d36b3",
  "kind": "instance",
  "lexical_name": "gradeBy.gradedAlgebra",
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
  "slug": "gradeby-gradedalgebra--cf827ea84bd8c677fdb1a895",
  "source": {
    "blob": "2f8c9070af9a8a62f99f45f24aeddfe4466b4546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 173,
    "path": "GRWTSK/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf827ea84bd8c677fdb1a895ada245d26ca600e710d44904d507934d8979348b",
  "verification": {
    "reference": "docs/verification/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0e891f16b191f96373b5f2352c414cb2d6ebdd5231052c6332a40ae686d36b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gradeBy.gradedAlgebra : GradedAlgebra (gradeBy R f) :=
  GradedAlgebra.ofAlgHom _ (decomposeAux f)
    (by
      ext : 2
      simp only [MonoidHom.coe_comp, MonoidHom.coe_coe, AlgHom.coe_comp, Function.comp_apply,
        of_apply, AlgHom.coe_id, id_eq]
      rw [decomposeAux_single, DirectSum.coeAlgHom_of, Subtype.coe_mk])
    fun i x => by rw [decomposeAux_coe f x]

-- Lean can't find this later without us repeating it
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Grading/Variant5d2fcc6e19142ea716b94e3b02883df8d004ab57bdd3ae541e95d99629140f3b.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f8c9070af9a8a62f99f45f24aeddfe4466b4546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
