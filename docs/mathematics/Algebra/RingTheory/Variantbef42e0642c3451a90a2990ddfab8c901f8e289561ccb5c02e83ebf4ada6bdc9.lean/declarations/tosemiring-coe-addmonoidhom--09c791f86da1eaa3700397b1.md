# toSemiring_coe_addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:628f6ad7-fc84-0a40-1b32-4d626e56a01e",
  "kind": "theorem",
  "lexical_name": "toSemiring_coe_addMonoidHom",
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
  "slug": "tosemiring-coe-addmonoidhom--09c791f86da1eaa3700397b1",
  "source": {
    "blob": "0ca5de1267dc40b8cac9d3173012e393b84f3236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 640,
    "path": "GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c791f86da1eaa3700397b117bbc453f5d47843a8c464b1f6e3a65f797d6b71",
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

Occurrence: `result:628f6ad7-fc84-0a40-1b32-4d626e56a01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSemiring_coe_addMonoidHom (f : ∀ i, A i →+ R) (hone hmul) :
    (toSemiring f hone hmul : (⨁ i, A i) →+ R) = toAddMonoid f :=
  rfl
#align direct_sum.to_semiring_coe_add_monoid_hom DirectSum.toSemiring_coe_addMonoidHom

/-- Families of `AddMonoidHom`s preserving `DirectSum.One.one` and `DirectSum.Mul.mul`
are isomorphic to `RingHom`s on `⨁ i, A i`. This is a stronger version of `DFinsupp.liftAddHom`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantbef42e0642c3451a90a2990ddfab8c901f8e289561ccb5c02e83ebf4ada6bdc9.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca5de1267dc40b8cac9d3173012e393b84f3236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
