# rightSquareIsPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c814d112d5f10e4c369fd05dfdfd8e1e4035c79ee511dfa54b92393e4a625544",
  "kind": "def",
  "lexical_name": "rightSquareIsPushout",
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
  "slug": "rightsquareispushout--9d9e8cc104be59013398fb2c",
  "source": {
    "blob": "6790398f308afac9f4b482be7aad4c8f1e5e512d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 303,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d9e8cc104be59013398fb2c2a56e3bb6908f7552e05046c63aa0d2c81aff2c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c814d112d5f10e4c369fd05dfdfd8e1e4035c79ee511dfa54b92393e4a625544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightSquareIsPushout (H : IsColimit t₁) (H' : IsColimit (t₁.pasteHoriz t₂ hi₂)) :
    IsColimit t₂ := by
  apply PushoutCocone.isColimitAux'
  intro s
  -- Obtain the induced morphism from the universal property of the big square
  obtain ⟨l, hl, hl'⟩ := PushoutCocone.IsColimit.desc' H' (g₁ ≫ s.inl) s.inr
    (by rw [reassoc_of% t₁.condition, ← hi₂, s.condition, Category.assoc])
  refine ⟨l, ?_, hl', ?_⟩
  -- To check that `l` is compatible with the projections, we use the universal property of `t₁`
  · simp at hl hl'
    apply PushoutCocone.IsColimit.hom_ext H hl
    rw [← Category.assoc, ← hi₂, t₂.condition, s.condition, Category.assoc, hl']
  -- Uniqueness of the lift follows from the universal property of the big square
  · intro m hm₁ hm₂
    apply PushoutCocone.IsColimit.hom_ext H'
    · simpa [← hm₁] using hl.symm
    · simpa [← hm₂] using hl'.symm

/-- Given that the left square is a pushout, the pasted square is a pushout iff the right square is.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790398f308afac9f4b482be7aad4c8f1e5e512d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
