# card_factors_of_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c3aee0-d02b-76bb-a48c-53b499f6b30c",
  "kind": "theorem",
  "lexical_name": "card_factors_of_irreducible",
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
  "slug": "card-factors-of-irreducible--f3982f40b6ca24b552944396",
  "source": {
    "blob": "6fb80308a90be80edead0a719c1da74f852ff315",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant857f2eefba5903b2c47028c039a989ad73add938a907514ae9671a81e4a4d816.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3982f40b6ca24b552944396d07a6c7a9d66f84d77bf6e245aeb8d378166c935",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant857f2eefba5903b2c47028c039a989ad73add938a907514ae9671a81e4a4d816.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c3aee0-d02b-76bb-a48c-53b499f6b30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_factors_of_irreducible {a : α} (ha : Irreducible a) : (factors a).card = 1 := by
  have hf : factors a ≠ 0 := by
    intro hf
    simpa [hf, Associated.comm, ha.not_isUnit] using factors_prod ha.ne_zero
  obtain ⟨b, hb⟩ := exists_mem_of_ne_zero hf
  obtain ⟨f, hf⟩ := exists_cons_of_mem hb
  rw [hf, card_cons, add_eq_right, card_eq_zero, eq_zero_iff_forall_notMem]
  intro c hc
  obtain ⟨f, rfl⟩ := exists_cons_of_mem hc
  replace hb := (irreducible_of_factor b hb).not_isUnit
  replace hc := (irreducible_of_factor c (hf ▸ mem_cons_of_mem hc)).not_isUnit
  simp [← (factors_prod ha.ne_zero).irreducible_iff, hf, irreducible_mul_iff, hb, hc] at ha

end UniqueFactorizationMonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant857f2eefba5903b2c47028c039a989ad73add938a907514ae9671a81e4a4d816.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant857f2eefba5903b2c47028c039a989ad73add938a907514ae9671a81e4a4d816.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb80308a90be80edead0a719c1da74f852ff315` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
