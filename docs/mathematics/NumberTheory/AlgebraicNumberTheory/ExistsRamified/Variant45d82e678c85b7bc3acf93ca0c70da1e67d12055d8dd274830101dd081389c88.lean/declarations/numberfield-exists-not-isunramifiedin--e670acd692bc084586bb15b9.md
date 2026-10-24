# NumberField.exists_not_isUnramifiedIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1673df28-d4fe-2f97-1353-cd7df463f414",
  "kind": "lemma",
  "lexical_name": "NumberField.exists_not_isUnramifiedIn",
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
  "slug": "numberfield-exists-not-isunramifiedin--e670acd692bc084586bb15b9",
  "source": {
    "blob": "2cc50229db6237af40bff5ec0721b65148400bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e670acd692bc084586bb15b9690d38e58340fa1cca087960aebe96824cb770d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1673df28-d4fe-2f97-1353-cd7df463f414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NumberField.exists_not_isUnramifiedIn (H : Module.finrank ℚ K ≠ 1) :
    ∃ p : ℕ, p.Prime ∧ ¬ Algebra.IsUnramifiedIn 𝒪 (Ideal.span {(p : ℤ)}) := by
  have : 0 < Module.finrank ℚ K := Module.finrank_pos
  have : 2 < |discr K| := abs_discr_gt_two (by lia)
  obtain ⟨p, hp1, hp2⟩ := (discr K).exists_prime_and_dvd (by linarith)
  use p.natAbs, p.prime_iff_natAbs_prime.mp hp1
  simpa [← not_dvd_discr_iff_isUnramifiedIn K 𝒪 hp1]

/-- If `K` is a number field with positive rank, then there exists some maximal ideal of `𝓞 K`
that is ramified over `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc50229db6237af40bff5ec0721b65148400bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
