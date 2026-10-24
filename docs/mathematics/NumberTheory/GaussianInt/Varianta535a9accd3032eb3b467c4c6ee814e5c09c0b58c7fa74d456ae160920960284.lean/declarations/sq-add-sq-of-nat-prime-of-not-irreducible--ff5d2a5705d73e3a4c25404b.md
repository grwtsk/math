# sq_add_sq_of_nat_prime_of_not_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c34edded8479bbe62e9144277f2879c83c6c737f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e70bcbb4-200e-e836-e795-b1b6e5a0f35f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb2efaa3-cd6e-35fe-9ce7-ee726f3fbfc9",
  "kind": "theorem",
  "lexical_name": "sq_add_sq_of_nat_prime_of_not_irreducible",
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
  "slug": "sq-add-sq-of-nat-prime-of-not-irreducible--ff5d2a5705d73e3a4c25404b",
  "source": {
    "blob": "c34edded8479bbe62e9144277f2879c83c6c737f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 243,
    "path": "GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff5d2a5705d73e3a4c25404bd8cf37cac388fad2aef1eee58959658b82054649",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb2efaa3-cd6e-35fe-9ce7-ee726f3fbfc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_add_sq_of_nat_prime_of_not_irreducible (p : ℕ) [hp : Fact p.Prime]
    (hpi : ¬Irreducible (p : ℤ[i])) : ∃ a b, a ^ 2 + b ^ 2 = p :=
  have hpu : ¬IsUnit (p : ℤ[i]) :=
    mt norm_eq_one_iff.2 <| by
      rw [norm_natCast, Int.natAbs_mul, mul_eq_one]
      exact fun h => (ne_of_lt hp.1.one_lt).symm h.1
  have hab : ∃ a b, (p : ℤ[i]) = a * b ∧ ¬IsUnit a ∧ ¬IsUnit b := by
    simpa [irreducible_iff, hpu, not_forall, not_or] using hpi
  let ⟨a, b, hpab, hau, hbu⟩ := hab
  have hnap : (norm a).natAbs = p :=
    ((hp.1.mul_eq_prime_sq_iff (mt norm_eq_one_iff.1 hau) (mt norm_eq_one_iff.1 hbu)).1 <| by
        rw [← Int.natCast_inj, Int.natCast_pow, sq, ← @norm_natCast (-1), hpab]; simp).1
  ⟨a.re.natAbs, a.im.natAbs, by simpa [natAbs_norm_eq, sq] using hnap⟩

end GaussianInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussianInt/Varianta535a9accd3032eb3b467c4c6ee814e5c09c0b58c7fa74d456ae160920960284.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34edded8479bbe62e9144277f2879c83c6c737f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
