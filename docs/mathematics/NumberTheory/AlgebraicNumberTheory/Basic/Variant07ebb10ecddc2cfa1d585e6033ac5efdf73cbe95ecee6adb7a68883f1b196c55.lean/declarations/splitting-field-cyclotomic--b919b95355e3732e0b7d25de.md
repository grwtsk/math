# splitting_field_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08f899bc-dad8-6aff-5f28-46a6dc8f5557",
  "kind": "theorem",
  "lexical_name": "splitting_field_cyclotomic",
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
  "slug": "splitting-field-cyclotomic--b919b95355e3732e0b7d25de",
  "source": {
    "blob": "0555b555990870f5bab2dac123a1dc46f5586630",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 508,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b919b95355e3732e0b7d25def30696f29680350bda5fa558e0c5565a3741a1fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08f899bc-dad8-6aff-5f28-46a6dc8f5557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitting_field_cyclotomic : IsSplittingField K L (cyclotomic n K) :=
  { splits' := splits_cyclotomic K L (mem_singleton n)
    adjoin_rootSet' := by
      rw [← ((iff_adjoin_eq_top {n} K L).1 inferInstance).2]
      letI := Classical.decEq L
      -- todo: make `exists_prim_root` take an explicit `L`
      obtain ⟨ζ : L, hζ⟩ := IsCyclotomicExtension.exists_prim_root K (B := L) (mem_singleton n)
      exact adjoin_roots_cyclotomic_eq_adjoin_nth_roots hζ }
#align is_cyclotomic_extension.splitting_field_cyclotomic IsCyclotomicExtension.splitting_field_cyclotomic

scoped[Cyclotomic] attribute [instance] IsCyclotomicExtension.splitting_field_cyclotomic

end Singleton

end Field

end IsCyclotomicExtension

section CyclotomicField

/-- Given `n : ℕ+` and a field `K`, we define `CyclotomicField n K` as the
splitting field of `cyclotomic n K`. If `n` is nonzero in `K`, it has
the instance `IsCyclotomicExtension {n} K (CyclotomicField n K)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant07ebb10ecddc2cfa1d585e6033ac5efdf73cbe95ecee6adb7a68883f1b196c55.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0555b555990870f5bab2dac123a1dc46f5586630` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
