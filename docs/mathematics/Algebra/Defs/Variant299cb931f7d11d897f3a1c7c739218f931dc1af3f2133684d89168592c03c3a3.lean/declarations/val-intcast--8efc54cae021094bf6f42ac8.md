# val_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b770eb2-13a3-4235-4dfe-09c28c2bb60d",
  "kind": "theorem",
  "lexical_name": "val_intCast",
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
  "slug": "val-intcast--8efc54cae021094bf6f42ac8",
  "source": {
    "blob": "95fe621288c1cf29274b777462da2e244b36c812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8efc54cae021094bf6f42ac8c2b8f9f87d9138eaf483be3a29aeeab575ae91b4",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b770eb2-13a3-4235-4dfe-09c28c2bb60d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem val_intCast {n : Nat} [NeZero n] (x : Int) :
    (x : Fin n).val = (x % n).toNat := by
  rw [Fin.intCast_def']
  split <;> rename_i h
  · simp [Int.emod_natAbs_of_nonneg h]
  · simp only [Fin.val_neg, Fin.natCast_eq_zero, Fin.val_natCast]
    split <;> rename_i h
    · rw [← Int.natCast_dvd] at h
      rw [Int.emod_eq_zero_of_dvd h, Int.toNat_zero]
    · rw [Int.emod_natAbs_of_neg (by lia) (NeZero.ne n),
        ite_eq_right (by rwa [← Int.natCast_dvd] at h)]
      have : x % n < n := Int.emod_lt_of_pos x (by have := NeZero.ne n; lia)
      lia

/-- Multiplicative commutative semigroup structure on `Fin n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant299cb931f7d11d897f3a1c7c739218f931dc1af3f2133684d89168592c03c3a3.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95fe621288c1cf29274b777462da2e244b36c812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
