# extensionValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d59afec7f2200a0245bb004dce4fa880bb1b265b4c025affd3db6c9881013fd0",
  "kind": "def",
  "lexical_name": "extensionValuation",
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
  "slug": "extensionvaluation--eaa923f56a848fab21b11a69",
  "source": {
    "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaa923f56a848fab21b11a695e0de6bd1caa3778992b3afbe3c3873f0727ff8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d59afec7f2200a0245bb004dce4fa880bb1b265b4c025affd3db6c9881013fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extensionValuation : Valuation (hat K) Γ₀ where
  toFun := Valued.extension
  map_zero' := by
    rw [← v.map_zero (R := K), ← Valued.extension_extends (0 : K)]
    rfl
  map_one' := by
    simp
    rw [← Completion.coe_one, Valued.extension_extends (1 : K)]
    exact Valuation.map_one _
  map_mul' x y := by
    apply Completion.induction_on₂ x y
      (p := fun x y => extension (x * y) = extension x * extension y)
    · have c1 : Continuous fun x : hat K × hat K => Valued.extension (x.1 * x.2) :=
        Valued.continuous_extension.comp (continuous_fst.mul continuous_snd)
      have c2 : Continuous fun x : hat K × hat K => Valued.extension x.1 * Valued.extension x.2 :=
        (Valued.continuous_extension.comp continuous_fst).mul
          (Valued.continuous_extension.comp continuous_snd)
      exact isClosed_eq c1 c2
    · intro x y
      norm_cast
      exact Valuation.map_mul _ _ _
  map_add_le_max' x y := by
    rw [le_max_iff]
    apply Completion.induction_on₂ x y
      (p := fun x y => extension (x + y) ≤ extension x ∨ extension (x + y) ≤ extension y)
    · have cont : Continuous (Valued.extension : hat K → Γ₀) := Valued.continuous_extension
      exact
        (isClosed_le (cont.comp continuous_add) <| cont.comp continuous_fst).union
          (isClosed_le (cont.comp continuous_add) <| cont.comp continuous_snd)
    · intro x y
      norm_cast
      rw [← le_max_iff]
      exact v.map_add x y
#align valued.extension_valuation Valued.extensionValuation

-- Bourbaki CA VI §5 no.3 Proposition 5 (d)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60018dfa547f52aecca1d71e0a42cfa58205705b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
