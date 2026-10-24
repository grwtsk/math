# adjointAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:013d602319a2eb50e57d343b2e5acaf52e4cc96fce30d1adca6406c1a37208b8",
  "kind": "def",
  "lexical_name": "adjointAux",
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
  "slug": "adjointaux--26f2f0c563c20746be4bae61",
  "source": {
    "blob": "9687806f9d1c8e46810fb22fcc90f1f4bb60d2ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 140,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26f2f0c563c20746be4bae6114ed997ca4f8bd31573ba3e2c213c191a2d36dd6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:013d602319a2eb50e57d343b2e5acaf52e4cc96fce30d1adca6406c1a37208b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjointAux : T.adjointDomain →ₗ[𝕜] E where
  toFun y := (InnerProductSpace.toDual 𝕜 E).symm (adjointDomainMkClmExtend hT y)
  map_add' x y :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_add_left, Submodule.coe_add, InnerProductSpace.toDual_symm_apply,
        adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply,
        adjointDomainMkClmExtend_apply]
      simp only [AddSubmonoid.coe_add, Submodule.coe_toAddSubmonoid, inner_add_left]
  map_smul' _ _ :=
    hT.eq_of_inner_left fun _ => by
      simp only [inner_smul_left, Submodule.coe_smul_of_tower, RingHom.id_apply,
        InnerProductSpace.toDual_symm_apply, adjointDomainMkClmExtend_apply]
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- mathlib3 was finished here
      rw [adjointDomainMkClmExtend_apply, adjointDomainMkClmExtend_apply]
      simp only [Submodule.coe_smul_of_tower, inner_smul_left]
#align linear_pmap.adjoint_aux LinearPMap.adjointAux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variante1a509a88ea3b91577880f4d848cab1a416d7e4a06e467ffdb96d8bcc6acbba3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9687806f9d1c8e46810fb22fcc90f1f4bb60d2ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
