# isLawfulTraversable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d7033c3-0f9f-950b-227b-ab017d01e6a1",
  "kind": "theorem",
  "lexical_name": "isLawfulTraversable'",
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
  "slug": "islawfultraversable--44b08b53155079bcc6701830",
  "source": {
    "blob": "e9f09b2193021f34f205bd7ab434fa0bca6ec562",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b08b53155079bcc67018302bfa3e77191f672862d5494d5f87026ad587966c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d7033c3-0f9f-950b-227b-ab017d01e6a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isLawfulTraversable' [Traversable t']
    (h₀ : ∀ {α β} (f : α → β), map f = Equiv.map eqv f)
    (h₁ : ∀ {α β} (f : β), mapConst f = (Equiv.map eqv ∘ Function.const α) f)
    (h₂ :
      ∀ {F : Type u → Type u} [Applicative F],
        ∀ [LawfulApplicative F] {α β} (f : α → F β), traverse f = Equiv.traverse eqv f) :
    LawfulTraversable t' := by
  -- we can't use the same approach as for `lawful_functor'` because
  -- h₂ needs a `LawfulApplicative` assumption
  refine' { toLawfulFunctor := Equiv.lawfulFunctor' eqv @h₀ @h₁.. } <;> intros
  · rw [h₂, Equiv.id_traverse]
  · rw [h₂, Equiv.comp_traverse, h₂]
    congr
    rw [h₂]
  · rw [h₂, Equiv.traverse_eq_map_id, h₀]; rfl
  · rw [h₂, Equiv.naturality, h₂]
#align equiv.is_lawful_traversable' Equiv.isLawfulTraversable'

end Equiv

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant4f00c16cb14a4656dc0fa739f73febbfc46ace602b74d4efed0dede78a4645ec.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f09b2193021f34f205bd7ab434fa0bca6ec562` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
