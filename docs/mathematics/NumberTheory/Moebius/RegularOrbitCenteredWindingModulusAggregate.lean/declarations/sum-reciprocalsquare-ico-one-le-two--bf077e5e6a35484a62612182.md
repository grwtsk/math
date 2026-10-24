# sum_reciprocalSquare_Ico_one_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d649b653-c5e5-e3c0-788c-a6b9124e9caf",
  "kind": "theorem",
  "lexical_name": "sum_reciprocalSquare_Ico_one_le_two",
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
  "slug": "sum-reciprocalsquare-ico-one-le-two--bf077e5e6a35484a62612182",
  "source": {
    "blob": "40fe5172d37244ee49172c471d497b1d45261d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf077e5e6a35484a62612182c638618bc4d03a140b51e7f57cc7b8f7b1e54f55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d649b653-c5e5-e3c0-788c-a6b9124e9caf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_reciprocalSquare_Ico_one_le_two
    (b : ℕ) :
    (∑ d ∈ Finset.Ico 1 b, (((d : ℝ) ^ 2)⁻¹)) ≤ 2 := by
  by_cases hb : b ≤ 1
  · have hempty : Finset.Ico 1 b = ∅ := by
      ext d
      simp
      omega
    simp [hempty]
  · have hone : 1 ∈ Finset.Ico 1 b := by
      exact Finset.mem_Ico.mpr ⟨le_rfl, by omega⟩
    rw [Finset.sum_eq_sum_sdiff_singleton_add hone]
    have hsdiff :
        Finset.Ico 1 b \ {1} = Finset.Ico 2 b := by
      ext d
      simp
      omega
    rw [hsdiff]
    have htail := sum_reciprocalSquare_Ico_two_le_one b
    norm_num
    linarith

/-- Effective square-modulus reciprocal-square mass is at most two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fe5172d37244ee49172c471d497b1d45261d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
