# second_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1105aa9d-3428-3be0-bd10-ee8012be8462",
  "kind": "theorem",
  "lexical_name": "second_variation",
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
  "slug": "second-variation--6da9ff77dda152c5910de39b",
  "source": {
    "blob": "9e93862a6b66b1ba631b91e28e57ce70013a5392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da9ff77dda152c5910de39b376d72c84dd851bdcd6c7c71613f1a10744d8a20",
  "verification": {
    "reference": "docs/verification/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1105aa9d-3428-3be0-bd10-ee8012be8462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_variation (a d ell H : 𝕜) :
    FieldDerivAt (slope a d ell H) (2 * d - 8 * a * ell) 0 := by
  have hn : FieldDerivAt (fun e : 𝕜 ↦ 2 * a + 2 * e * d +
      2 * e ^ 2 * (d * ell - a * H)) (2 * d) 0 := by
    unfold FieldDerivAt
    convert! HasDerivAt.add (HasDerivAt.add (hasDerivAt_const (0 : 𝕜) (2 * a))
      (((hasDerivAt_id (0 : 𝕜)).const_mul 2).mul_const d))
      ((((hasDerivAt_id (0 : 𝕜)).pow 2).const_mul 2).mul_const (d * ell - a * H))
      using 1
    simp
  have hd := (denominator_derivative ell H 0).pow 2
  have h := hn.div hd (show denominator ell H 0 ^ 2 ≠ 0 by simp [denominator])
  have hs : slope a d ell H = (fun e : 𝕜 ↦
      (2 * a + 2 * e * d + 2 * e ^ 2 * (d * ell - a * H)) /
        denominator ell H e ^ 2) := funext (slope_simplified a d ell H)
  rw [hs]
  convert! h using 1
  simp [denominator]
  ring

variable [CharZero 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchRayleighVariation/Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e93862a6b66b1ba631b91e28e57ce70013a5392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
