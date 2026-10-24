# snoc_injective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaa199a9-5a19-de88-02e9-52f50e44cf4b",
  "kind": "theorem",
  "lexical_name": "snoc_injective_iff",
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
  "slug": "snoc-injective-iff--9c3cbf5f65c4149ef9e1f2c5",
  "source": {
    "blob": "f8e433ba754124d444045689d475ada8fa646415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 774,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c3cbf5f65c4149ef9e1f2c57c00ae2902a1d25a2e427355bedbfa10e1e7a1de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaa199a9-5a19-de88-02e9-52f50e44cf4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 774–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snoc_injective_iff {α} {x₀ : α} {x : Fin n → α} :
    Function.Injective (snoc x x₀ : Fin n.succ → α) ↔ Function.Injective x ∧ x₀ ∉ Set.range x := by
  refine ⟨fun h ↦ ⟨?_, ?_⟩, fun h ↦ snoc_injective_of_injective h.1 h.2⟩
  · simpa [Function.comp] using h.comp (Fin.castSucc_injective _)
  · rintro ⟨i, hi⟩
    rw [← @snoc_last n (fun i ↦ α) x₀ x, ← @snoc_castSucc n (fun i ↦ α) x₀ x i,
      h.eq_iff] at hi
    exact ne_last_of_lt i.castSucc_lt_last hi

end TupleRight

section InsertNth

variable {α : Fin (n + 1) → Sort*} {β : Sort*}

/-- Define a function on `Fin (n + 1)` from a value on `i : Fin (n + 1)` and values on each
`Fin.succAbove i j`, `j : Fin n`. This version is elaborated as eliminator and works for
propositions, see also `Fin.insertNth` for a version without an `@[elab_as_elim]`
attribute. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean#L774).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e433ba754124d444045689d475ada8fa646415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
