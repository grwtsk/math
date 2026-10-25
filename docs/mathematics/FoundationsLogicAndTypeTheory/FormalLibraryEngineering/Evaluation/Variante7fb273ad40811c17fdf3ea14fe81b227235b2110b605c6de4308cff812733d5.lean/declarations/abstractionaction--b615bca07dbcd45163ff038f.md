# abstractionAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22a85c84b104172e5d4b609c72ed8a5e46aaadf642b595ae3ea83e9d4100c3cd",
  "kind": "def",
  "lexical_name": "abstractionAction",
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
  "slug": "abstractionaction--b615bca07dbcd45163ff038f",
  "source": {
    "blob": "4c3aae560bac23ea83d29c22a9e76f37d9dfd7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 769,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b615bca07dbcd45163ff038f47192c240824c49d5454c3f8d18f2a14da9ad512",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22a85c84b104172e5d4b609c72ed8a5e46aaadf642b595ae3ea83e9d4100c3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 769–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def abstractionAction {D m E : Expr S} {s : S} (h : HasType P Γ (.lam D m) T)
    (hp : HasType P Γ (.pi D E) (.sort s)) (hc : Converts T (.pi D E))
    (eb : ∀ e : Environment (hw := hw) Ω C hno (D :: Γ), PreResult Ω C hno m E e)
    (e : Environment (hw := hw) Ω C hno Γ) (ha : ActiveLayer P C (Ω.profile (T.subst
      e.images).normalForm)) :
    LambdaAction (hw := hw) Ω C hno (e.activeType h ha) := by
  let t := ProductInstance.ofFormation hp e
  let A := e.activeType h ha
  have he : A.type = .pi t.domainNF t.bodyNF := by
    exact (Expr.normalForm_converts ((ContextTower.HasType.subst h
      e.typed).type_weaklyNormalizing hw)
      ((ContextTower.HasType.subst hp e.typed).weaklyNormalizing hw) (hc.subst
        e.images)).trans t.product_nf
  intro k p hk
  let e' := t.frameEnvironment he k p hk
  have he' : (E.subst e'.images).normalForm = (k.target hw).type := t.frame_type he k p hk
  have ha' : ActiveLayer P C (Ω.profile (E.subst e'.images).normalForm) := he' ▸ (k.target
    hw).active
  exact ⟨((eb e').val ha').val, he' ▸ ((eb e').val ha').property⟩

open Classical in
/-- Interpret a typed abstraction by its framewise body action and base-read clause. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variante7fb273ad40811c17fdf3ea14fe81b227235b2110b605c6de4308cff812733d5.lean#L769).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c3aae560bac23ea83d29c22a9e76f37d9dfd7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
