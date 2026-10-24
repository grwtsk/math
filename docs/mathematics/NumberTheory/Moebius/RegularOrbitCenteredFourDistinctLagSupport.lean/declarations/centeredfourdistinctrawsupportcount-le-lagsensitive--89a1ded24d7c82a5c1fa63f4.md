# centeredFourDistinctRawSupportCount_le_lagSensitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bcab1c2-caa7-9812-70de-abb1563ebe6e",
  "kind": "theorem",
  "lexical_name": "centeredFourDistinctRawSupportCount_le_lagSensitive",
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
  "slug": "centeredfourdistinctrawsupportcount-le-lagsensitive--89a1ded24d7c82a5c1fa63f4",
  "source": {
    "blob": "f1a6195ae9e3ac53ef921200647156df28eab651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89a1ded24d7c82a5c1fa63f4b1a1648fdeff2ab58ef0eee28b6b57a9a8df09d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bcab1c2-caa7-9812-70de-abb1563ebe6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredFourDistinctRawSupportCount_le_lagSensitive
    (b r ell : ℕ) (H : Finset ℕ) :
    centeredFourDistinctRawSupportCount b r ell H ≤
      ((b + 1) - ell) * ((b + 1) * (b + 1)) := by
  unfold centeredFourDistinctRawSupportCount
  calc
    _ ≤ ∑ _c ∈ endpointValidCenterSetAtLag b ell,
        (b + 1) * (b + 1) := by
      apply Finset.sum_le_sum
      intro c hc
      have hcRange :
          c < b + 1 := (Finset.mem_filter.mp hc).1 |> Finset.mem_range.mp
      have hcell :
          c + ell < b + 1 := (Finset.mem_filter.mp hc).2
      exact card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare
        H hcRange hcell
    _ = ((b + 1) - ell) * ((b + 1) * (b + 1)) := by
      simp [card_endpointValidCenterSetAtLag]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctLagSupport.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a6195ae9e3ac53ef921200647156df28eab651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
