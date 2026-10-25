# anyLTTR_loop_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb2d7e00-01d5-d1e1-d3b4-786b47f94431",
  "kind": "theorem",
  "lexical_name": "anyLTTR_loop_eq_true",
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
  "slug": "anylttr-loop-eq-true--846776db75ce6eb104778c6a",
  "source": {
    "blob": "0d466956e2ecf2fb2d557281db440ca0d5e6f025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1872,
    "line": 1848,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:846776db75ce6eb104778c6a46885b775e5d53ecc1ee3f5b5d9b0209955a995d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb2d7e00-01d5-d1e1-d3b4-786b47f94431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1848–1872.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem anyLTTR_loop_eq_true {n : Nat} {f : (i : Nat) → i < n → Bool} :
    ∀ j (hj : j ≤ n),
      (anyLTTR.loop n f j hj = true) ↔ ∃ i, ∃ h : i < n, n - j ≤ i ∧ f i h = true := by
  intro j
  induction j with
  | zero =>
    intro hj
    simp only [anyLTTR.loop]
    constructor
    · intro h; exact Bool.noConfusion h
    · rintro ⟨i, hlt, hi, _⟩; omega
  | succ m ih =>
    intro hj
    simp only [anyLTTR.loop, Bool.or_eq_true]
    rw [ih (by omega)]
    constructor
    · rintro (hhead | ⟨i, h, hi, hf⟩)
      · exact ⟨n - (m + 1), by omega, by omega, hhead⟩
      · exact ⟨i, h, by omega, hf⟩
    · rintro ⟨i, h, hi, hf⟩
      rcases Nat.eq_or_lt_of_le hi with heq | hlt
      · left; have : i = n - (m + 1) := by omega
        subst this; exact hf
      · right; exact ⟨i, h, by omega, hf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantc9186c719e3ae9b4fb3b431dfb447a92f74ea23f90422419818dce61ac0a58c2.lean#L1848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d466956e2ecf2fb2d557281db440ca0d5e6f025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
