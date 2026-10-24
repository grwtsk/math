# finiteArchimedeanClassOrderIsoLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cae59dedaa0e4254ff0c002e33ede92954d1bf5e561eea95fed8b8b28e423f7",
  "kind": "def",
  "lexical_name": "finiteArchimedeanClassOrderIsoLex",
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
  "slug": "finitearchimedeanclassorderisolex--2f38c8877f540e576dfa07c1",
  "source": {
    "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f38c8877f540e576dfa07c196719ebac921f573611d8ddefb8b531e0e3f02a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cae59dedaa0e4254ff0c002e33ede92954d1bf5e561eea95fed8b8b28e423f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finiteArchimedeanClassOrderIsoLex :
    FiniteArchimedeanClass (Lex R⟦Γ⟧) ≃o Γ ×ₗ FiniteArchimedeanClass R := by
  apply OrderIso.ofHomInv (finiteArchimedeanClassOrderHomLex Γ R)
    (finiteArchimedeanClassOrderHomInvLex Γ R)
  · ext x
    cases x with | h x
    obtain ⟨order, coeff⟩ := x
    induction coeff using FiniteArchimedeanClass.ind with | mk a ha
    simp [finiteArchimedeanClassOrderHomLex, finiteArchimedeanClassOrderHomInvLex, ha]
  · ext x
    induction x using FiniteArchimedeanClass.ind with | mk a ha
    simp [finiteArchimedeanClassOrderHomLex, finiteArchimedeanClassOrderHomInvLex,
      archimedeanClassMk_eq_archimedeanClassMk_iff, ha]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29497fcfe9ef246a578469ce198fd554552f1947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
