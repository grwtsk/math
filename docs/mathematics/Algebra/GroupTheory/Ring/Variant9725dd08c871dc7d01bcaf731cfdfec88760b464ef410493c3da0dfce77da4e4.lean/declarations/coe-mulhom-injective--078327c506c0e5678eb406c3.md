# coe_mulHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3d28db5-91e2-5982-adb1-a1a5bf67ccd2",
  "kind": "theorem",
  "lexical_name": "coe_mulHom_injective",
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
  "slug": "coe-mulhom-injective--078327c506c0e5678eb406c3",
  "source": {
    "blob": "80d9623f7ab39ce0ed7b4510866b80bfe977fb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 202,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:078327c506c0e5678eb406c3e885f6d47107cb3a07c438704d482a368b1ced03",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3d28db5-91e2-5982-adb1-a1a5bf67ccd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_mulHom_injective : Injective fun f : α →ₙ+* β => (f : α →ₙ* β) := fun _ _ h =>
  ext <| MulHom.congr_fun h
#align non_unital_ring_hom.coe_mul_hom_injective NonUnitalRingHom.coe_mulHom_injective

end

variable [NonUnitalNonAssocSemiring α] [NonUnitalNonAssocSemiring β]

/-- The identity non-unital ring homomorphism from a non-unital semiring to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant9725dd08c871dc7d01bcaf731cfdfec88760b464ef410493c3da0dfce77da4e4.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d9623f7ab39ce0ed7b4510866b80bfe977fb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
