# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2fcfdd838eab6796ffd42a208014a1fc89a9a0cb3c2948e57a5b89711902012",
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
  "slug": "instance--a12a935f29ccbfc343d81031",
  "source": {
    "blob": "53eda82ed247f46be8eef33b24fef6e41378e879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 655,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a12a935f29ccbfc343d81031ef520190a572876a6b45b54f4393c8f93117d34e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2fcfdd838eab6796ffd42a208014a1fc89a9a0cb3c2948e57a5b89711902012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–661.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variante0eddf1c24aef78a3ef58ebda4e87cc17cbbc2f4a20fac0a8cb01d7f8b9b8745.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53eda82ed247f46be8eef33b24fef6e41378e879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
