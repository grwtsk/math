# locallyFinite_scaled_values

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c61bec03-4b21-7dbd-1c31-8b4acde2b4d1",
  "kind": "theorem",
  "lexical_name": "locallyFinite_scaled_values",
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
  "slug": "locallyfinite-scaled-values--04e3e14d66a01cc5a6c2d4a1",
  "source": {
    "blob": "7789990240985152f5d5a5b6958d221afc15a01c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04e3e14d66a01cc5a6c2d4a19f3188b25daccd74c99af9e325adf75b7053717f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61bec03-4b21-7dbd-1c31-8b4acde2b4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyFinite_scaled_values
    (c : ℂ) (hc : c ≠ 0) :
    LocallyFinite
      (fun o : ZeroOccurrence ↦
        ({c * shiftedValue o} : Set ℂ)) := by
  intro s
  refine ⟨ball s 1, ball_mem_nhds s zero_lt_one, ?_⟩
  apply
    (finite_occurrences_scaled_norm_le c hc (‖s‖ + 1)).subset
  rintro o ⟨w, hw, hb⟩
  simp only [mem_singleton_iff] at hw
  subst w
  have hdist :
      ‖c * shiftedValue o - s‖ < 1 :=
    mem_ball_iff_norm.mp hb
  have hnorm :=
    norm_add_le (c * shiftedValue o - s) s
  rw [sub_add_cancel] at hnorm
  change ‖c * shiftedValue o‖ ≤ ‖s‖ + 1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant4baa348db553cf39fbd06907c52535098bf67cc3986d071c695a8224dea2b08a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7789990240985152f5d5a5b6958d221afc15a01c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
