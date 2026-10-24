# span_le_degreeLE_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebbc2250-badc-557a-50cf-722cced10443",
  "kind": "theorem",
  "lexical_name": "span_le_degreeLE_of_finite",
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
  "slug": "span-le-degreele-of-finite--f50d42eabfe38b7d24ccbf68",
  "source": {
    "blob": "f4e78e4f0790433c5783700db0206dfab2212462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 203,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50d42eabfe38b7d24ccbf681dc80cbc7df2131d585f96d20eb435e1651d7284",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebbc2250-badc-557a-50cf-722cced10443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_le_degreeLE_of_finite {s : Set R[X]} (s_fin : s.Finite) :
    ∃ n : ℕ, Submodule.span R s ≤ degreeLE R n := by
  by_cases s_emp : s.Nonempty
  · rcases exists_degree_le_of_mem_span_of_finite s_fin s_emp with ⟨p', _, hp'max⟩
    exact ⟨natDegree p', fun p hp => mem_degreeLE.mpr ((hp'max _ hp).trans degree_le_natDegree)⟩
  · rw [Set.not_nonempty_iff_eq_empty] at s_emp
    rw [s_emp, Submodule.span_empty]
    exact ⟨0, bot_le⟩

/-- The span of every finite set of polynomials is contained in a `degreeLT n` for some `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc3b3af2cd45158245b901152c946031d60f2515e8d20b6c2c9a3fc3fe289d66e.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e78e4f0790433c5783700db0206dfab2212462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
