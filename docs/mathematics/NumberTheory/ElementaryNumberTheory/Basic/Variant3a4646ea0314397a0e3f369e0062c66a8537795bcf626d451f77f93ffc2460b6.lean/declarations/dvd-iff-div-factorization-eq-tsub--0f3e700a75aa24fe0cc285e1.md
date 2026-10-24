# dvd_iff_div_factorization_eq_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9626223-46e4-6851-1b30-b69f1bbedc89",
  "kind": "theorem",
  "lexical_name": "dvd_iff_div_factorization_eq_tsub",
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
  "slug": "dvd-iff-div-factorization-eq-tsub--0f3e700a75aa24fe0cc285e1",
  "source": {
    "blob": "69e7a5d768360a638f661bc8144af4aa693539d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 300,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f3e700a75aa24fe0cc285e19451ee5290b97ea16a7f131592a099901fd3e348",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9626223-46e4-6851-1b30-b69f1bbedc89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_iff_div_factorization_eq_tsub {d n : ℕ} (hd : d ≠ 0) (hdn : d ≤ n) :
    d ∣ n ↔ (n / d).factorization = n.factorization - d.factorization := by
  refine ⟨factorization_div, ?_⟩
  rcases eq_or_lt_of_le hdn with (rfl | hd_lt_n); · simp
  have h1 : n / d ≠ 0 := by simp [*]
  intro h
  rw [dvd_iff_le_div_mul n d]
  by_contra h2
  obtain ⟨p, hp⟩ := exists_factorization_lt_of_lt (mul_ne_zero h1 hd) (not_le.mp h2)
  rwa [factorization_mul h1 hd, add_apply, ← lt_tsub_iff_right, h, tsub_apply,
    lt_self_iff_false] at hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant3a4646ea0314397a0e3f369e0062c66a8537795bcf626d451f77f93ffc2460b6.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e7a5d768360a638f661bc8144af4aa693539d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
