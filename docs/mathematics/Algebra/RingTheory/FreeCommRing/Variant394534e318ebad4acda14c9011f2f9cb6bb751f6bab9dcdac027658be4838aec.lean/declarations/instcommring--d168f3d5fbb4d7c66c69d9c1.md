# instCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d9f203fa0995431742459125c907abd4a52a3d2b573e335591de9c5ee7d29a",
  "kind": "instance",
  "lexical_name": "instCommRing",
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
  "slug": "instcommring--d168f3d5fbb4d7c66c69d9c1",
  "source": {
    "blob": "7b8e179e29b4d3ea7cea9eae39a161f905f2bb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 411,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d168f3d5fbb4d7c66c69d9c1398f844263a5f5d5db978549a3460435d3666672",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d9f203fa0995431742459125c907abd4a52a3d2b573e335591de9c5ee7d29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommRing [Subsingleton α] : CommRing (FreeRing α) :=
  { inferInstanceAs (Ring (FreeRing α)) with
    mul_comm := fun x y => by
      rw [← (subsingletonEquivFreeCommRing α).symm_apply_apply (y * x),
        (subsingletonEquivFreeCommRing α).map_mul, mul_comm,
        ← (subsingletonEquivFreeCommRing α).map_mul,
        (subsingletonEquivFreeCommRing α).symm_apply_apply] }
#align free_ring.comm_ring FreeRing.instCommRing

end FreeRing

/-- The free commutative ring on `α` is isomorphic to the polynomial ring over ℤ with
    variables in `α` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variant394534e318ebad4acda14c9011f2f9cb6bb751f6bab9dcdac027658be4838aec.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8e179e29b4d3ea7cea9eae39a161f905f2bb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
