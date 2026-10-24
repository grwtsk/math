# modEq_ne_exists_unique_nonzero_winding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:771f7d6e-0ed1-bf2a-9baf-eb44fac6f9ff",
  "kind": "theorem",
  "lexical_name": "modEq_ne_exists_unique_nonzero_winding",
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
  "slug": "modeq-ne-exists-unique-nonzero-winding--54c950c92f7dc8e6583f4e27",
  "source": {
    "blob": "940a8a265a74bfc6553e01d1d74efab0d5b008f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c950c92f7dc8e6583f4e2781b60cecd46ef34c14e952a17e078961b1f340d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:771f7d6e-0ed1-bf2a-9baf-eb44fac6f9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modEq_ne_exists_unique_nonzero_winding
    (d c₁ c₂ : ℕ) [NeZero d]
    (hmod : c₁ ≡ c₂ [MOD d * d])
    (hne : c₁ ≠ c₂) :
    ∃! z : ℤ,
      z ≠ 0 ∧
        CenteredSquareModulusWinding d c₁ c₂ z := by
  rcases Nat.modEq_iff_dvd.mp hmod with ⟨z, hz⟩
  have hw :
      CenteredSquareModulusWinding d c₁ c₂ z := by
    exact hz
  have hzne : z ≠ 0 := by
    intro hz0
    subst z
    exact hne
      ((centeredSquareModulusWinding_zero_iff d c₁ c₂).1 hw)
  refine ⟨z, ⟨hzne, hw⟩, ?_⟩
  intro z' hz'
  exact centeredSquareModulusWinding_unique d c₁ c₂ hz'.2 hw

/-- Exact equivalence between the nonzero-winding relation and the old
congruent-but-unequal wrap condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingUnification.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940a8a265a74bfc6553e01d1d74efab0d5b008f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
