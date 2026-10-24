# emultiplicity_add_of_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d79379-e076-da0a-4c0b-4354c2eabf23",
  "kind": "theorem",
  "lexical_name": "emultiplicity_add_of_gt",
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
  "slug": "emultiplicity-add-of-gt--366d4c52328247bdd24b5e13",
  "source": {
    "blob": "a0d475532761e3f6d3405368eefb04a1a05a4707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 592,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:366d4c52328247bdd24b5e13e06c63d38ce262d709eb3bbcb1fb892399aabc57",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d79379-e076-da0a-4c0b-4354c2eabf23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 592–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_add_of_gt {p a b : α} (h : emultiplicity p b < emultiplicity p a) :
    emultiplicity p (a + b) = emultiplicity p b := by
  have : FiniteMultiplicity p b := finiteMultiplicity_iff_emultiplicity_ne_top.2 (by simp [·] at h)
  rw [this.emultiplicity_eq_multiplicity] at *
  apply emultiplicity_eq_of_dvd_of_not_dvd
  · apply dvd_add
    · apply pow_dvd_of_le_emultiplicity
      exact h.le
    · simp
  · rw [dvd_add_right]
    · apply this.not_pow_dvd_of_multiplicity_lt
      simp
    apply pow_dvd_of_le_emultiplicity
    exact Order.add_one_le_of_lt h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean#L592).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d475532761e3f6d3405368eefb04a1a05a4707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
