# sum_one_eq_card_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d53d71b-4d42-164d-8d58-9b171ea436ab",
  "kind": "theorem",
  "lexical_name": "sum_one_eq_card_units",
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
  "slug": "sum-one-eq-card-units--74500986d6ccc0d77885eb5d",
  "source": {
    "blob": "164e182669ae5f4557ace7f89a11deef80508f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 565,
    "path": "GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74500986d6ccc0d77885eb5d9dfd31f4f19707ec30904257b6fcbf363a5b16ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d53d71b-4d42-164d-8d58-9b171ea436ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 565–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_one_eq_card_units [DecidableEq R] :
    (∑ a, (1 : MulChar R R') a) = Fintype.card Rˣ := by
  calc
    (∑ a, (1 : MulChar R R') a) = ∑ a : R, if IsUnit a then 1 else 0 :=
      Finset.sum_congr rfl fun a _ => ?_
    _ = ((Finset.univ : Finset R).filter IsUnit).card := Finset.sum_boole _ _
    _ = (Finset.univ.map ⟨((↑) : Rˣ → R), Units.ext⟩).card := ?_
    _ = Fintype.card Rˣ := congr_arg _ (Finset.card_map _)
  · split_ifs with h
    · exact one_apply_coe h.unit
    · exact map_nonunit _ h
  · congr
    ext a
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_map,
      Function.Embedding.coeFn_mk, exists_true_left, IsUnit]

end sum

/-!
### Multiplicative characters on rings
-/

section Ring

variable {R R' : Type*} [CommRing R] [CommMonoidWithZero R']

/-- If `χ` is of odd order, then `χ(-1) = 1` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean#L565).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164e182669ae5f4557ace7f89a11deef80508f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
