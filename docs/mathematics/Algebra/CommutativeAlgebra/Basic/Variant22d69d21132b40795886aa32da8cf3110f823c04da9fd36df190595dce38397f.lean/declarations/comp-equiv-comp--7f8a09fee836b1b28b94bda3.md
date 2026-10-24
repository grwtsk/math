# comp_equiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcac87f7-8e39-642b-28e8-75c43213d60e",
  "kind": "lemma",
  "lexical_name": "comp_equiv_comp",
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
  "slug": "comp-equiv-comp--7f8a09fee836b1b28b94bda3",
  "source": {
    "blob": "0a9f7c020c3bfaf5727e352af190868157558fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 475,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f8a09fee836b1b28b94bda3fdbb969a198d45af77cb37b3cfdf49f74ae950bd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcac87f7-8e39-642b-28e8-75c43213d60e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_equiv_comp (f : F →+* K) {P Q : Fin 3 → F} (hP : W.Nonsingular P)
    (hQ : W.Nonsingular Q) : f ∘ P ≈ f ∘ Q ↔ P ≈ Q := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · by_cases hz : f (P z) = 0
    · exact equiv_of_Z_eq_zero hP hQ ((map_eq_zero_iff f f.injective).mp hz) <|
        (map_eq_zero_iff f f.injective).mp <| (Z_eq_zero_of_equiv h).mp hz
    · refine equiv_of_X_eq_of_Y_eq ((map_ne_zero_iff f f.injective).mp hz)
        ((map_ne_zero_iff f f.injective).mp <| hz.comp (Z_eq_zero_of_equiv h).mpr) ?_ ?_
      all_goals apply f.injective; map_simp
      exacts [X_eq_of_equiv h, Y_eq_of_equiv h]
  · rcases h with ⟨u, rfl⟩
    exact ⟨Units.map f u, (comp_smul ..).symm⟩

variable (W') in
/-- The proposition that a Jacobian point class on a Weierstrass curve `W` is nonsingular.

If `P` is a Jacobian point representative on `W`, then `W.NonsingularLift ⟦P⟧` is definitionally
equivalent to `W.Nonsingular P`.

Note that this definition is only mathematically accurate for fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant22d69d21132b40795886aa32da8cf3110f823c04da9fd36df190595dce38397f.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9f7c020c3bfaf5727e352af190868157558fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
