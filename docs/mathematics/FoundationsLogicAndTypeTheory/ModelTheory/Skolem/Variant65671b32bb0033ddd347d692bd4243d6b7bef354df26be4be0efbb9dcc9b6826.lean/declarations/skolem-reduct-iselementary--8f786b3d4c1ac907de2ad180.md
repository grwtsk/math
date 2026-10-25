# skolem₁_reduct_isElementary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f38b1023-e478-7292-7c0d-a4e6d0249e0d",
  "kind": "theorem",
  "lexical_name": "skolem₁_reduct_isElementary",
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
  "slug": "skolem-reduct-iselementary--8f786b3d4c1ac907de2ad180",
  "source": {
    "blob": "69e93aab9fb43a59f6de1a219758f326648e72bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f786b3d4c1ac907de2ad1800477563af731dcdb8e82d10794d4bc95a22485e1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f38b1023-e478-7292-7c0d-a4e6d0249e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem skolem₁_reduct_isElementary (S : (L.sum L.skolem₁).Substructure M) :
    (LHom.sumInl.substructureReduct S).IsElementary := by
  apply (LHom.sumInl.substructureReduct S).isElementary_of_exists
  intro n φ x a h
  let φ' : (L.sum L.skolem₁).Functions n := LHom.sumInr.onFunction φ
  exact
    ⟨⟨funMap φ' ((↑) ∘ x), S.fun_mem (LHom.sumInr.onFunction φ) ((↑) ∘ x) (by
      exact fun i => (x i).2)⟩,
      by exact Classical.epsilon_spec (p := fun a => BoundedFormula.Realize φ default
          (Fin.snoc (Subtype.val ∘ x) a)) ⟨a, h⟩⟩
#align first_order.language.substructure.skolem₁_reduct_is_elementary FirstOrder.Language.Substructure.skolem₁_reduct_isElementary

/-- Any `L.sum L.skolem₁`-substructure is an elementary `L`-substructure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant65671b32bb0033ddd347d692bd4243d6b7bef354df26be4be0efbb9dcc9b6826.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e93aab9fb43a59f6de1a219758f326648e72bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
