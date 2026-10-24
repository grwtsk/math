# extensionValuation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfcdb9ab74b02ef54b2578bd40753548b2cc0c8c8dd35c1352dc20d0831f4077",
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
  "slug": "extensionvaluation--7c6f9beed1b9720fb2142550",
  "source": {
    "blob": "04468df6fcf43ae24f6e5230954b65e05e908a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 280,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c6f9beed1b9720fb2142550a6b96eb24b98a8b9ce8ac8d40a61ef59e944dbfb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfcdb9ab74b02ef54b2578bd40753548b2cc0c8c8dd35c1352dc20d0831f4077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extensionValuation : Valuation (hat K) Γ₀ where
  toFun := Valued.extension
  map_zero' := by
    rw [← v.map_zero (R := K), ← Valued.extension_extends (0 : K)]
    rfl
  map_one' := by
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

-- Bourbaki CA VI §5 no.3 Proposition 5 (d)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant0161dce1e7732c6af94e1066427dd0ee4a860d77c0746933440f69ba1947bff5.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04468df6fcf43ae24f6e5230954b65e05e908a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
