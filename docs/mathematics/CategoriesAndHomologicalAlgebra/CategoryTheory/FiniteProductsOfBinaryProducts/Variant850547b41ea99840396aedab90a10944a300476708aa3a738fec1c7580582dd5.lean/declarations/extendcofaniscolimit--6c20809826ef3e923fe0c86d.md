# extendCofanIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd22add3684e6de470ed750249b731e51fc0379646b28f9b024f84d770e52ceb",
  "kind": "def",
  "lexical_name": "extendCofanIsColimit",
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
  "slug": "extendcofaniscolimit--6c20809826ef3e923fe0c86d",
  "source": {
    "blob": "15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 187,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c20809826ef3e923fe0c86d412b41b3be1a8c034b9a6da7210842b69a30fedf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd22add3684e6de470ed750249b731e51fc0379646b28f9b024f84d770e52ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extendCofanIsColimit {n : ℕ} (f : Fin (n + 1) → C) {c₁ : Cofan fun i : Fin n => f i.succ}
    {c₂ : BinaryCofan (f 0) c₁.pt} (t₁ : IsColimit c₁) (t₂ : IsColimit c₂) :
    IsColimit (extendCofan c₁ c₂) where
  desc s := by
    apply (BinaryCofan.IsColimit.desc' t₂ (s.ι.app ⟨0⟩) _).1
    apply t₁.desc ⟨_, Discrete.natTrans fun i => s.ι.app ⟨i.as.succ⟩⟩
  fac s := by
    rintro ⟨j⟩
    refine Fin.inductionOn j ?_ ?_
    · apply (BinaryCofan.IsColimit.desc' t₂ _ _).2.1
    · rintro i -
      dsimp only [extendCofan_ι_app]
      rw [Fin.cases_succ, assoc, (BinaryCofan.IsColimit.desc' t₂ _ _).2.2, t₁.fac]
      rfl
  uniq s m w := by
    apply BinaryCofan.IsColimit.hom_ext t₂
    · rw [(BinaryCofan.IsColimit.desc' t₂ _ _).2.1]
      apply w ⟨0⟩
    · rw [(BinaryCofan.IsColimit.desc' t₂ _ _).2.2]
      apply t₁.uniq ⟨_, _⟩
      rintro ⟨j⟩
      dsimp only [Discrete.natTrans_app]
      rw [← w ⟨j.succ⟩]
      dsimp only [extendCofan_ι_app]
      rw [Fin.cases_succ, assoc]

section

variable [HasBinaryCoproducts C] [HasInitial C]

/--
If `C` has an initial object and binary coproducts, then it has a coproduct for objects indexed by
`Fin n`.
This is a helper lemma for `hasCofiniteProductsOfHasBinaryAndTerminal`, which is more general
than this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
