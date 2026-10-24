# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5c2c44cab3522e42163e9445b78881ac7653ef02890acf538b70c8fef949c21",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--774d29a9d607d0fe3da1ef9c",
  "source": {
    "blob": "f33423f76d0bb0ffbb6272b03f6409c225c10191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 287,
    "path": "GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:774d29a9d607d0fe3da1ef9c1eab7103f4f5defff3d826171a959506b3e39120",
  "verification": {
    "reference": "docs/verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5c2c44cab3522e42163e9445b78881ac7653ef02890acf538b70c8fef949c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) EuclideanDomain.instIsPrincipalIdealRing : IsPrincipalIdealRing R where
  principal S := by
    by_cases h : { x : R | x ∈ S ∧ x ≠ 0 }.Nonempty
    · let ⟨m, ⟨hms, hm0⟩, hl⟩ := EuclideanDomain.r_wellFounded.has_min _ h
      use m
      ext x
      refine ⟨fun hx ↦ ?_, fun hx ↦ ?_⟩
      · rw [← Ideal.span, Ideal.mem_span_singleton, ← mod_eq_zero]
        have : x % m ∉ { x : R | x ∈ S ∧ x ≠ 0 } := (hl _ · (mod_lt x hm0))
        rw [Set.mem_ofPred_eq, not_and_or, not_not] at this
        exact this.neg_resolve_left <| (mod_mem_iff hms).2 hx
      · obtain ⟨y, rfl⟩ := Ideal.mem_span_singleton.1 hx
        exact S.mul_mem_right _ hms
    · use 0
      rw [span_zero_singleton, Submodule.eq_bot_iff]
      exact fun a haS ↦ by_contra (h ⟨a, ⟨haS, ·⟩⟩)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrincipalIdealDomain/Variante2c35d90a2be46d451856414627487f0247d4d07910adb1d4a07db7f73c7df02.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33423f76d0bb0ffbb6272b03f6409c225c10191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
