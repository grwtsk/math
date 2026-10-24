# traverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21a4298f15699311c52a7a4cc1d3a159cb58cf9bf93f66a8688ad71db36fe05e",
  "kind": "def",
  "lexical_name": "traverse",
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
  "slug": "traverse--c8a22e76c843e37c8d84a3e0",
  "source": {
    "blob": "05bf95dcfe692993be985da11af3465c822661e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8a22e76c843e37c8d84a3e0e0a92a6bc218357abf75e2997d289076f9ebd6b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21a4298f15699311c52a7a4cc1d3a159cb58cf9bf93f66a8688ad71db36fe05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traverse : Multiset α' → F (Multiset β') := by
  refine Quotient.lift (Functor.map ofList ∘ Traversable.traverse f) ?_
  introv p; unfold Function.comp
  induction p with
  | nil => rfl
  | @cons x l₁ l₂ _ h =>
    have :
      Multiset.cons <$> f x <*> ofList <$> Traversable.traverse f l₁ =
        Multiset.cons <$> f x <*> ofList <$> Traversable.traverse f l₂ := by
      rw [h]
    simpa [functor_norm] using this
  | swap x y l =>
    have :
      (fun a b (l : List β') ↦ (↑(a :: b :: l) : Multiset β')) <$> f y <*> f x =
        (fun a b l ↦ ↑(a :: b :: l)) <$> f x <*> f y := by
      rw [CommApplicative.commutative_map]
      congr
      funext a b l
      simpa [flip] using Perm.swap a b l
    simp [Function.comp_def, this, functor_norm]
  | trans => simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantfe289155e7d35f0c9f181594d33504bbc323ebf93aa092133f891db375c61d37.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05bf95dcfe692993be985da11af3465c822661e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
