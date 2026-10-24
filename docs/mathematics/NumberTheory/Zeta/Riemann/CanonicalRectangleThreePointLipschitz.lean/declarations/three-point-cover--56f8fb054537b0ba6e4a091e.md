# three_point_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98602d51-5e0d-9921-cb2b-dc6983a40451",
  "kind": "theorem",
  "lexical_name": "three_point_cover",
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
  "slug": "three-point-cover--56f8fb054537b0ba6e4a091e",
  "source": {
    "blob": "41daf554711152e78a3bbc996699d18e0513aa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56f8fb054537b0ba6e4a091e341d3f084e33537ab0298b6a862a0277c9219e3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98602d51-5e0d-9921-cb2b-dc6983a40451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem three_point_cover {a x : ℝ}
    (ha : 0 ≤ a) (hx : x ∈ Icc (0 : ℝ) a) :
    |x - 0| ≤ a / 4 ∨
      |x - a / 2| ≤ a / 4 ∨
      |x - a| ≤ a / 4 := by
  rcases hx with ⟨hx0, hxa⟩
  by_cases hfirst : x ≤ a / 4
  · left
    simpa only [sub_zero, abs_of_nonneg hx0] using hfirst
  · by_cases hmiddle : x ≤ 3 * a / 4
    · right
      left
      apply abs_le.mpr
      constructor <;> linarith
    · right
      right
      have hnonpos : x - a ≤ 0 := by linarith
      rw [abs_of_nonpos hnonpos]
      linarith

/-- Exactly three sample-value enclosures on [0,a], plus a quantitative
Lipschitz hypothesis for the *actual* real-valued function on the full span.
The samples and slope have rational certificate data, but their correctness
is an explicit mathematical hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41daf554711152e78a3bbc996699d18e0513aa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
