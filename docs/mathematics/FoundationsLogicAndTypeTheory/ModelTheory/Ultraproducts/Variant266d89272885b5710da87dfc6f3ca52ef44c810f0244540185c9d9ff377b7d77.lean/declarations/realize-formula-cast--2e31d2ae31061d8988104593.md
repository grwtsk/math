# realize_formula_cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:185af7fd-09ff-a925-c8ba-a2f008c134f9",
  "kind": "theorem",
  "lexical_name": "realize_formula_cast",
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
  "slug": "realize-formula-cast--2e31d2ae31061d8988104593",
  "source": {
    "blob": "b91cdc769a047751a29ec48aba2ef0c2a10a0976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e31d2ae31061d89881045936db3ccc603757f983780a4aef935b08b1ca96538",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:185af7fd-09ff-a925-c8ba-a2f008c134f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_formula_cast {β : Type*} (φ : L.Formula β) (x : β → ∀ a, M a) :
    (φ.Realize fun i => (x i : (u : Filter α).Product M)) ↔
      ∀ᶠ a : α in u, φ.Realize fun i => x i a := by
  simp_rw [Formula.Realize, ← boundedFormula_realize_cast φ x, iff_eq_eq]
  exact congr rfl (Subsingleton.elim _ _)
#align first_order.language.ultraproduct.realize_formula_cast FirstOrder.Language.Ultraproduct.realize_formula_cast

/-- Łoś's Theorem : A sentence is true in an ultraproduct if and only if the set of structures it is
  true in is in the ultrafilter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91cdc769a047751a29ec48aba2ef0c2a10a0976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
