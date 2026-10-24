# coroot_eq_coreflection_of_root_eq_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b2a3a86-ab27-5efe-12f0-db61d84934d8",
  "kind": "lemma",
  "lexical_name": "coroot_eq_coreflection_of_root_eq_of_span_eq_top",
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
  "slug": "coroot-eq-coreflection-of-root-eq-of-span-eq-top--281111e0821cb8b64ef005c6",
  "source": {
    "blob": "d6d3a61f6cbfb95e727083ff9be7c026a7283e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281111e0821cb8b64ef005c6c7e2baf131bad0155ad889078ee278fa1539ab81",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b2a3a86-ab27-5efe-12f0-db61d84934d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coroot_eq_coreflection_of_root_eq_of_span_eq_top [CharZero R] [NoZeroSMulDivisors R M]
    (p : PerfectPairing R M N)
    (root : ι ↪ M)
    (coroot : ι ↪ N)
    (hp : ∀ i, p (root i) (coroot i) = 2)
    (hs : ∀ i, MapsTo (preReflection (root i) (p.flip (coroot i))) (range root) (range root))
    (hsp : span R (range root) = ⊤)
    {i j k : ι} (hk : root k = preReflection (root i) (p.flip (coroot i)) (root j)) :
    coroot k = preReflection (coroot i) (p (root i)) (coroot j) := by
  set α := root i
  set β := root j
  set α' := coroot i
  set β' := coroot j
  set sα := preReflection α (p.flip α')
  set sβ := preReflection β (p.flip β')
  let sα' := preReflection α' (p α)
  have hij : preReflection (sα β) (p.toLinearMap.flip (sα' β')) = sα ∘ₗ sβ ∘ₗ sα := by
    ext
    have hpi : (p.flip (coroot i)) (root i) = 2 := by rw [PerfectPairing.flip_apply_apply, hp i]
    simp [α, β, α', β', sα, sβ, sα', ← preReflection_preReflection β (p.flip β') hpi,
      preReflection_apply] -- v4.7.0-rc1 issues
  have hk₀ : root k ≠ 0 := fun h ↦ by simpa [h, ← PerfectPairing.toLinearMap_apply] using hp k
  apply p.bijective_right.injective
  apply Dual.eq_of_preReflection_mapsTo (finite_range root) hsp (hp k) (hs k)
  · simp [map_sub, α, β, α', β', sα, sβ, sα', hk, preReflection_apply, hp i, hp j, mul_two,
      mul_comm (p α β')]
    ring -- v4.7.0-rc1 issues
  · rw [hk, hij]
    exact (hs i).comp <| (hs j).comp (hs i)

/-- Over a field of characteristic zero, to check that a finite family of roots form a
crystallographic root system, we do not need to check that the coroots are stable under reflections
since this follows from the corresponding property for the roots. Likewise, we do not need to
check that the coroots span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant35b773327d7c156a60817d42df06575d027122c5b85ab2e350f4780ce052145c.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6d3a61f6cbfb95e727083ff9be7c026a7283e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
