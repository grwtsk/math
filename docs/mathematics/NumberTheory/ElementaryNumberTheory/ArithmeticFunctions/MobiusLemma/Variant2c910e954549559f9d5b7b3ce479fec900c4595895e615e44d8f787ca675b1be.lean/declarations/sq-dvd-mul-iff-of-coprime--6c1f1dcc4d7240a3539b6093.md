# sq_dvd_mul_iff_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0acebef-43c5-b8fb-665b-e3c78991d5f9",
  "kind": "lemma",
  "lexical_name": "sq_dvd_mul_iff_of_coprime",
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
  "slug": "sq-dvd-mul-iff-of-coprime--6c1f1dcc4d7240a3539b6093",
  "source": {
    "blob": "7774530b068098c253438684ce708e5cd50f6a30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1f1dcc4d7240a3539b6093446e2843541625045528166df816f60c404eb366",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0acebef-43c5-b8fb-665b-e3c78991d5f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sq_dvd_mul_iff_of_coprime {m n a b : ℕ} (hmn : m.Coprime n) (ha : a ∣ m) (hb : b ∣ n) :
    (a * b) ^ 2 ∣ m * n ↔ a ^ 2 ∣ m ∧ b ^ 2 ∣ n := by
  refine ⟨fun h ↦ ?_, fun ⟨ha', hb'⟩ ↦ ?_⟩
  · rw [mul_pow] at h
    constructor
    · exact ((hmn.coprime_dvd_left ha).pow_left 2).dvd_of_dvd_mul_right
        ((dvd_mul_right _ _).trans h)
    · exact ((hmn.coprime_dvd_right hb).symm.pow_left 2).dvd_of_dvd_mul_left
        ((dvd_mul_left _ _).trans h)
  · rw [mul_pow ..]; exact mul_dvd_mul ha' hb'

/-- The function `sum_sq_div_moebius` is multiplicative (explicitly stated). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MobiusLemma/Variant2c910e954549559f9d5b7b3ce479fec900c4595895e615e44d8f787ca675b1be.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7774530b068098c253438684ce708e5cd50f6a30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
