# cocycleOfDegreewiseSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36d0f53dcb472fbbe94e10d93d201ef3cf4a0ff5856c2f8713c6ed2a66c61908",
  "kind": "def",
  "lexical_name": "cocycleOfDegreewiseSplit",
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
  "slug": "cocycleofdegreewisesplit--c3ec362b77c627e956736812",
  "source": {
    "blob": "f9002e5365fcf067bffe215822bbd4c1bafde08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3ec362b77c627e956736812ec9d1b8623cf3b367f14271dfa2f7154e953dace",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36d0f53dcb472fbbe94e10d93d201ef3cf4a0ff5856c2f8713c6ed2a66c61908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cocycleOfDegreewiseSplit : Cocycle S.X₃ S.X₁ 1 :=
  Cocycle.mk
    (Cochain.mk (fun p q _ => (σ p).s ≫ S.X₂.d p q ≫ (σ q).r)) 2 (by lia) (by
      ext p _ rfl
      have := mono_of_mono_fac (σ (p + 2)).f_r
      have r_f := fun n => (σ n).r_f
      have s_g := fun n => (σ n).s_g
      dsimp at this r_f s_g ⊢
      rw [δ_v 1 2 (by lia) _ p (p + 2) (by lia) (p + 1) (p + 1)
        (by lia) (by lia), Cochain.mk_v, Cochain.mk_v,
        show Int.negOnePow 2 = 1 by rfl, one_smul, assoc, assoc,
        ← cancel_mono (S.f.f (p + 2)), add_comp, assoc, assoc, assoc,
        assoc, assoc, assoc, zero_comp, ← S.f.comm, reassoc_of% (r_f (p + 1)),
        sub_comp, comp_sub, comp_sub, assoc, id_comp, d_comp_d, comp_zero, zero_sub,
        ← S.g.comm_assoc, reassoc_of% (s_g p), r_f (p + 2), comp_sub, comp_sub, comp_id,
        comp_sub, ← S.g.comm_assoc, reassoc_of% (s_g (p + 1)), d_comp_d_assoc, zero_comp,
        sub_zero, neg_add_cancel])

/-- The canonical morphism `S.X₃ ⟶ S.X₁⟦(1 : ℤ)⟧` attached to a degreewise split
short exact sequence of cochain complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9002e5365fcf067bffe215822bbd4c1bafde08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
