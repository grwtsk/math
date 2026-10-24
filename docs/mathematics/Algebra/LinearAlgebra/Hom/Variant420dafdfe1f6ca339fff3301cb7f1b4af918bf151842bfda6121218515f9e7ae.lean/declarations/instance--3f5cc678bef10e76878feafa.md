# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3be7bd4eb8e8f93a8df1e277aa46954427a8ebe7af76a3079406b963c9a7173e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3f5cc678bef10e76878feafa",
  "source": {
    "blob": "79b905234680e7f6790acea5f7dc2daa254cb57f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 647,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f5cc678bef10e76878feafa2016e9b62b86bb281b0d0dfc05274785e24c93dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3be7bd4eb8e8f93a8df1e277aa46954427a8ebe7af76a3079406b963c9a7173e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : DistribMulAction P.Aut M where
  smul w x := weightHom P w x
  one_smul _ := rfl
  mul_smul _ _ _ := rfl
  smul_zero w := show weightHom P w 0 = 0 by simp
  smul_add w x y := show weightHom P w (x + y) = weightHom P w x + weightHom P w y by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b905234680e7f6790acea5f7dc2daa254cb57f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
