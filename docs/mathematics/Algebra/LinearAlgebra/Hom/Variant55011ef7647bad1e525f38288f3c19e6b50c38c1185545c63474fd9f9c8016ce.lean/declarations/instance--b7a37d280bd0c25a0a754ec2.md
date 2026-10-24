# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e00327930f1b0b24b238b745da8d0aaf8561f96da6a253ca6493648eb20b034",
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
  "slug": "instance--b7a37d280bd0c25a0a754ec2",
  "source": {
    "blob": "74980505f91545ca7a800653b57a4baacaeeff25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 738,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7a37d280bd0c25a0a754ec247b680bab6a37a5115abbe20ce4a558aa6ba5dde",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e00327930f1b0b24b238b745da8d0aaf8561f96da6a253ca6493648eb20b034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : DistribMulAction P.Autᵐᵒᵖ N where
  smul w x := unop (coweightHom P (unop w)) x
  one_smul _ := rfl
  mul_smul _ _ _ := rfl
  smul_zero w := show unop (coweightHom P (unop w)) 0 = 0 by simp
  smul_add w x y := by
    change unop (coweightHom P _) (x + y) = unop (coweightHom P _) x + unop (coweightHom P _) y
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74980505f91545ca7a800653b57a4baacaeeff25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
