# eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3bba8a3-7346-f435-0784-3d822f4725b6",
  "kind": "theorem",
  "lexical_name": "eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero",
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
  "slug": "eq-of-head-eq-head-of-last-eq-last-of-length-eq-zero--8611c7c9f492197edc4d6a1e",
  "source": {
    "blob": "5e56f9e1c69083821878906b365a007e8949e8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 409,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8611c7c9f492197edc4d6a1e5ce952901553bd07ab285a4ba7a8dac058397341",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3bba8a3-7346-f435-0784-3d822f4725b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero {s₁ s₂ : CompositionSeries X}
    (hb : s₁.head = s₂.head) (ht : s₁.last = s₂.last) (hs₁0 : s₁.length = 0) : s₁ = s₂ := by
  have : ∀ x, x ∈ s₁ ↔ x = s₁.last := fun x =>
    ⟨fun hx =>  subsingleton_of_length_eq_zero hs₁0 hx s₁.last_mem, fun hx => hx.symm ▸ s₁.last_mem⟩
  have : ∀ x, x ∈ s₂ ↔ x = s₂.last := fun x =>
    ⟨fun hx =>
      subsingleton_of_length_eq_zero
        (length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero hb ht
          hs₁0) hx s₂.last_mem,
      fun hx => hx.symm ▸ s₂.last_mem⟩
  ext
  simp [*]

/-- Given a `CompositionSeries`, `s`, and an element `x`
such that `x` is maximal inside `s.last` there is a series, `t`,
such that `t.last = x`, `t.head = s.head`
and `snoc t s.last _` is equivalent to `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant04d78259e65bd481e21038f886be7318f127f7ef7bcc9c8486fbb048383e5734.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e56f9e1c69083821878906b365a007e8949e8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
