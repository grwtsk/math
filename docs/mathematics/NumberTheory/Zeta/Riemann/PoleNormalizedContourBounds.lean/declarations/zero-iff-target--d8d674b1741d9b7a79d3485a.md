# zero_iff_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c3d6069-65bd-bf0f-9cc3-e5274727ad01",
  "kind": "theorem",
  "lexical_name": "zero_iff_target",
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
  "slug": "zero-iff-target--d8d674b1741d9b7a79d3485a",
  "source": {
    "blob": "4f9249ae44e52df5b08d04581f30ca6a951912ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8d674b1741d9b7a79d3485a99e23415842293a4dc1202c5ac8242e45ab35fa9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3d6069-65bd-bf0f-9cc3-e5274727ad01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_iff_target {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = 0 ↔ NontrivialZetaZero s := by
  constructor
  · intro hz
    have hs1 : s ≠ 1 := by intro he; simpa [he] using hz
    refine ⟨(poleNormalizedZeta_eq_zero_iff hs1).mp hz, ?_, hs1⟩
    rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    simp at hr
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    nlinarith
  · exact poleNormalizedZeta_zero_of_target

/-- Actual source bound, uniform in imaginary height once B and D are bounded.
There is no inverse distance-to-pole factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f9249ae44e52df5b08d04581f30ca6a951912ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
