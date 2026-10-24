# ringHom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6beb048-d225-3b02-9a1e-4d8abef334f1",
  "kind": "theorem",
  "lexical_name": "ringHom_ext",
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
  "slug": "ringhom-ext--58219a8f52e521d2cc3944ac",
  "source": {
    "blob": "0ca5de1267dc40b8cac9d3173012e393b84f3236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 601,
    "path": "GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58219a8f52e521d2cc3944ac9515f152ffd5e0689657b67991a2774a7706aaa6",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6beb048-d225-3b02-9a1e-4d8abef334f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringHom_ext ⦃f g : (⨁ i, A i) →+* R⦄ (h : ∀ i x, f (of A i x) = g (of A i x)) : f = g :=
  ringHom_ext' fun i => AddMonoidHom.ext <| h i
#align direct_sum.ring_hom_ext DirectSum.ringHom_ext

/-- A family of `AddMonoidHom`s preserving `DirectSum.One.one` and `DirectSum.Mul.mul`
describes a `RingHom`s on `⨁ i, A i`. This is a stronger version of `DirectSum.toMonoid`.

Of particular interest is the case when `A i` are bundled subojects, `f` is the family of
coercions such as `AddSubmonoid.subtype (A i)`, and the `[GSemiring A]` structure originates from
`DirectSum.gsemiring.ofAddSubmonoids`, in which case the proofs about `GOne` and `GMul`
can be discharged by `rfl`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca5de1267dc40b8cac9d3173012e393b84f3236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
