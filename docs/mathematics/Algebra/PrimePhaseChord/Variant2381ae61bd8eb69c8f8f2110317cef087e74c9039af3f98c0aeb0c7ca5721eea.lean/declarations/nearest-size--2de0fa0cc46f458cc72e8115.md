# nearest_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01ea5558-3acd-9981-0b18-04e154e3f132",
  "kind": "theorem",
  "lexical_name": "nearest_size",
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
  "slug": "nearest-size--2de0fa0cc46f458cc72e8115",
  "source": {
    "blob": "fb391b18ffbe7b932659948335d67d7e0a289969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2de0fa0cc46f458cc72e81159d293218e4759933a79c9abfde9e97129df712c1",
  "verification": {
    "reference": "docs/verification/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01ea5558-3acd-9981-0b18-04e154e3f132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nearest_size (x : ℝ) (hx : 0 ≤ x) :
    |(nearest x : ℝ)| ≤ x / (2 * Real.pi) + 1 / 2 := by
  have h := abs_sub_round (x / (2 * Real.pi))
  change |x / (2 * Real.pi) - (nearest x : ℝ)| ≤ 1 / 2 at h
  have hb := abs_add_le ((nearest x : ℝ) - x / (2 * Real.pi)) (x / (2 * Real.pi))
  rw [sub_add_cancel, abs_sub_comm, abs_of_nonneg (by positivity : 0 ≤ x / (2 * Real.pi))] at hb
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimePhaseChord/Variant2381ae61bd8eb69c8f8f2110317cef087e74c9039af3f98c0aeb0c7ca5721eea.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb391b18ffbe7b932659948335d67d7e0a289969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
