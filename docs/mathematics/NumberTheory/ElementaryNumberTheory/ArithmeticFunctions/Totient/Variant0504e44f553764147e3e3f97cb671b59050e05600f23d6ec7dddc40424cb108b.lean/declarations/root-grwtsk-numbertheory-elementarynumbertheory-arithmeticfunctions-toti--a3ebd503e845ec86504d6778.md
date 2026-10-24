# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.ZMod.card_units_eq_totient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3001e155-8f8c-dcb6-9a58-5fa7eaf2dbc6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.ZMod.card_units_eq_totient",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-toti--a3ebd503e845ec86504d6778",
  "source": {
    "blob": "f2b4775c5642eff1b209409bd3540b7272b9016e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3ebd503e845ec86504d67784266799518b445a785caf0c17e11e5a42c72bc2b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3001e155-8f8c-dcb6-9a58-5fa7eaf2dbc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.ZMod.card_units_eq_totient (n : ℕ) [NeZero n] [Fintype (ZMod n)ˣ] :
    Fintype.card (ZMod n)ˣ = φ n :=
  calc
    Fintype.card (ZMod n)ˣ = Fintype.card { x : ZMod n // x.val.Coprime n } :=
      Fintype.card_congr ZMod.unitsEquivCoprime
    _ = φ n := by
      obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := exists_eq_succ_of_ne_zero NeZero.out
      simp only [totient, Finset.card_eq_sum_ones, Fintype.card_subtype, Finset.sum_filter, ←
        Fin.sum_univ_eq_sum_range, @Nat.coprime_comm (m + 1)]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2b4775c5642eff1b209409bd3540b7272b9016e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
