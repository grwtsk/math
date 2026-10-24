# horizontal_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:730ac53d-3b04-723b-cb49-901406dc5af3",
  "kind": "theorem",
  "lexical_name": "horizontal_distance",
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
  "slug": "horizontal-distance--255948a05bce9b9784e76e13",
  "source": {
    "blob": "7c1ae3bb0688226f32cee4ec90515f373174376b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 137,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:255948a05bce9b9784e76e13161788498544e9ed1ba4881dee4b7479f2f10850",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:730ac53d-3b04-723b-cb49-901406dc5af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_distance (N : ℕ) (σ y : ℝ) (hy : |y| = separatedHeight N) (z : ZeroPoint) :
    heightClearance N ≤ ‖((σ : ℂ) + (y : ℂ) * Complex.I) - z.1‖ := by
  calc
    heightClearance N ≤ |separatedHeight N - height z| := separatedHeight_clearance N z
    _ = abs (|y| - |z.1.im|) := by rw [hy]; rfl
    _ ≤ |y - z.1.im| := abs_abs_sub_abs_le_abs_sub y z.1.im
    _ = |(((σ : ℂ) + (y : ℂ) * Complex.I) - z.1).im| := by simp
    _ ≤ _ := Complex.abs_im_le_norm _

/-- A certified half-gap rounding retains a positive gap at every actual zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1ae3bb0688226f32cee4ec90515f373174376b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
