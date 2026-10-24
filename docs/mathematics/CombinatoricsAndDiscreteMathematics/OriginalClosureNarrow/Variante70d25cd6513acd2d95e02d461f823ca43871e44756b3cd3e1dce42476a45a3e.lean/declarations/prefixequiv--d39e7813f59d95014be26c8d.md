# prefixEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fcb7703aa392337ca4d7fc55fc9a01dea1e8a625ee66b3be799607dbf0f8ef2",
  "kind": "def",
  "lexical_name": "prefixEquiv",
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
  "slug": "prefixequiv--d39e7813f59d95014be26c8d",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6663,
    "line": 6636,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d39e7813f59d95014be26c8d262e6272e1a0a30faa8c48e935d47dd3ce136eb8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fcb7703aa392337ca4d7fc55fc9a01dea1e8a625ee66b3be799607dbf0f8ef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6636–6663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prefixEquiv (hw : WellFounded F.Dependency) (B : Type u) (n : N) :
    F.Space hw B n ≃ B × ((a : F.Key n) → F.FrameParameters (F.Space hw B) a →
      F.Space hw B (F.target n a)) where
  toFun t :=
    ⟨F.unfold hw B n t (.nil n) Parameters.nil,
     fun a x => (F.unfold hw B (F.target n a)).symm
       (fun p xs => F.unfold hw B n t (.cons a p) (Parameters.cons x xs))⟩
  invFun t := (F.unfold hw B n).symm (fun p xs => match p with
    | .nil _ => t.1
    | .cons a p => F.unfold hw B (F.target n a) (t.2 a xs.head) p xs.tail)
  left_inv t := by
    apply (F.unfold hw B n).injective
    simp only [Equiv.apply_symm_apply]
    funext p xs
    cases p with
    | nil n => rw [Parameters.nil_unique xs]
    | cons a p => simp only [Parameters.cons_head_tail]
  right_inv t := by
    apply Prod.ext
    · simp only [Equiv.apply_symm_apply]
    · funext a x
      apply (F.unfold hw B (F.target n a)).injective
      simp only [Equiv.apply_symm_apply]
      funext p xs
      rfl

/-- Constant tables give compatible distinguished parameters with no
additional choice of an inhabitant at any recursive node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L6636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
