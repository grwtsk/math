# mem_of_insertRupUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02afa7b-9fb4-ff13-3765-e2583a28eecf",
  "kind": "theorem",
  "lexical_name": "mem_of_insertRupUnits",
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
  "slug": "mem-of-insertrupunits--121d51a1e32bdccc68104e71",
  "source": {
    "blob": "70e58e5f969a920f53cfdf6fa2cc207c2a42f132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 304,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:121d51a1e32bdccc68104e71dae3d8d1767abff8af65f11ca79aadd0c0d2761b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02afa7b-9fb4-ff13-3765-e2583a28eecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_insertRupUnits {n : Nat} (f : DefaultFormula n) (units : CNF.Clause (PosFin n))
    (c : DefaultClause n) :
    c ∈ toList (insertRupUnits f units).1 → c ∈ units.map Clause.unit ∨ c ∈ toList f := by
  simp only [toList, insertRupUnits, List.append_assoc, List.mem_append,
    List.mem_filterMap, id_eq, exists_eq_right, List.mem_map, Prod.exists, Bool.exists_bool]
  intro h
  have hb : ∀ l : Literal (PosFin n), l ∈ (f.rupUnits, f.assignments, false).1.toList → (l ∈ f.rupUnits.toList ∨ l ∈ units) := by
    grind
  have hl (acc : Array (Literal (PosFin n)) × Array Assignment × Bool)
    (ih : ∀ l : Literal (PosFin n), l ∈ acc.1.toList → l ∈ f.rupUnits.toList ∨ l ∈ units)
    (unit : Literal (PosFin n)) (unit_in_units : unit ∈ units) :
    ∀ l : Literal (PosFin n), l ∈ (insertUnit acc unit).1.toList → (l ∈ f.rupUnits.toList ∨ l ∈ units) := by
    intro l hl
    rw [insertUnit.eq_def] at hl
    grind
  have h_insertUnit_fold := List.foldlRecOn units insertUnit hb hl
  rcases h with h | ⟨i, ⟨h1, h2⟩ | ⟨h1, h2⟩⟩ | h
  · grind
  · rcases h_insertUnit_fold (i, false) h1 with h_insertUnit_fold | h_insertUnit_fold
    · apply Or.inr ∘ Or.inr ∘ Or.inl ∘ Exists.intro i ∘ Or.inl
      grind
    · apply Or.inl ∘ Exists.intro i ∘ Or.inl
      exact ⟨by grind, h2⟩
  · rcases h_insertUnit_fold (i, true) h1 with h_insertUnit_fold | h_insertUnit_fold
    · grind
    · apply Or.inl ∘ Exists.intro i ∘ Or.inr
      exact ⟨by grind, h2⟩
  · grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e58e5f969a920f53cfdf6fa2cc207c2a42f132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
