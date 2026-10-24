# coroot_eq_coreflection_of_root_eq_of_span_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bac76589-ea83-c7c3-866b-9f3ccc999472",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:998d1e55-ca61-a7c1-b3f5-c1957d044aa9",
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
  "slug": "coroot-eq-coreflection-of-root-eq-of-span-eq-top--c124fff1563155b4127938ae",
  "source": {
    "blob": "d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c124fff1563155b4127938ae7d13c6feebf5afed2e5739cca740d531160115ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:998d1e55-ca61-a7c1-b3f5-c1957d044aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coroot_eq_coreflection_of_root_eq_of_span_eq_top [CharZero R] [IsDomain R]
    (p : M →ₗ[R] N →ₗ[R] R) [p.IsPerfPair]
    (root : ι ↪ M)
    (coroot : ι ↪ N)
    (hp : ∀ i, p (root i) (coroot i) = 2)
    (hs : ∀ i, MapsTo (preReflection (root i) (p.flip (coroot i))) (range root) (range root))
    (hsp : span R (range root) = ⊤)
    {i j k : ι} (hk : root k = preReflection (root i) (p.flip (coroot i)) (root j)) :
    coroot k = preReflection (coroot i) (p (root i)) (coroot j) := by
  have : IsReflexive R M := .of_isPerfPair p
  set α := root i
  set β := root j
  set α' := coroot i
  set β' := coroot j
  set sα := preReflection α (p.flip α')
  set sβ := preReflection β (p.flip β')
  let sα' := preReflection α' (p α)
  have hij : preReflection (sα β) (p.flip (sα' β')) = sα ∘ₗ sβ ∘ₗ sα := by
    ext
    have hpi : (p.flip (coroot i)) (root i) = 2 := by simp [hp i]
    simp [α, β, α', β', sα, sβ, sα', ← preReflection_preReflection β (p.flip β') hpi,
      preReflection_apply] -- v4.7.0-rc1 issues
  apply p.flip.toPerfPair.injective
  apply Dual.eq_of_preReflection_mapsTo (finite_range root) hsp (hp k) (hs k)
  · simp [map_sub, α, β, α', β', sα, hk, preReflection_apply, hp i, hp j,
      mul_comm (p α β')]
    ring -- v4.7.0-rc1 issues
  · rw [hk, LinearMap.toLinearMap_toPerfPair, hij]
    exact (hs i).comp <| (hs j).comp (hs i)

section

variable {k : Type*} [Field k] [CharZero k] [Module k M] [Module k N]
  (p : M →ₗ[k] N →ₗ[k] k) [p.IsPerfPair]
  (root : ι ↪ M)
  (coroot : ι ↪ N)
  (hp : ∀ i, p (root i) (coroot i) = 2)
  (hs : ∀ i, MapsTo (preReflection (root i) (p.flip (coroot i))) (range root) (range root))
  (hsp : span k (range root) = ⊤)

/-- Over a field of characteristic zero, to check that a finite family of roots form a
crystallographic root system, we do not need to check that the coroots are stable under reflections
since this follows from the corresponding property for the roots. Likewise, we do not need to
check that the coroots span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a378ceffc23d22650f8dd22f3f7d77d1bb6d5ace4e1859fd986a74133dacec1.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f31e1ffebefdf4d9fd498ada9444ac169b1d8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
