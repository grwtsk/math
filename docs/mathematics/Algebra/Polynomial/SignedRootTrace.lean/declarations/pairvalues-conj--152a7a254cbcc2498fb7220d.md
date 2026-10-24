# pairValues_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9001df9-5f0c-27db-765a-3878614f28d2",
  "kind": "theorem",
  "lexical_name": "pairValues_conj",
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
  "slug": "pairvalues-conj--152a7a254cbcc2498fb7220d",
  "source": {
    "blob": "681311b90019c078ed32a3ff4ddb31d6597704bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/Algebra/Polynomial/SignedRootTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:152a7a254cbcc2498fb7220debf30929b5a676b9c8cebe9b134042f965725111",
  "verification": {
    "reference": "docs/verification/Algebra/Polynomial/SignedRootTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9001df9-5f0c-27db-765a-3878614f28d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairValues_conj {z : ℂ} (hz : z.im ≠ 0) (w : ℂ) :
    pairValues z (conj w) = conj (pairValues z w) := by
  have hne : conj z ≠ z := fun h => hz (Complex.conj_eq_iff_im.mp h)
  by_cases hw : w = z
  · subst w
    simp [pairValues, hne]
  · by_cases hwc : w = conj z
    · subst w
      simp [pairValues, hne]
    · have hc : conj w ≠ z := by
        intro h
        exact hwc (by simpa using congrArg conj h)
      have hcc : conj w ≠ conj z := by
        intro h
        exact hw (by simpa using congrArg conj h)
      simp [pairValues, hw, hwc, hc, hcc]

/-- The isolating polynomial has trace minus the sum of the two pair weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Polynomial/SignedRootTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Polynomial/SignedRootTrace.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681311b90019c078ed32a3ff4ddb31d6597704bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
