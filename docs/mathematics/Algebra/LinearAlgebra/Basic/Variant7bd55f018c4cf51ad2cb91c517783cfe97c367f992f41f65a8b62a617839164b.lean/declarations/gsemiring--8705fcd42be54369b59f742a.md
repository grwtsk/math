# gsemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50119ff0bf0730853e32540068d5c112c8035791832b611222b3e2469f71e308",
  "kind": "instance",
  "lexical_name": "gsemiring",
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
  "slug": "gsemiring--8705fcd42be54369b59f742a",
  "source": {
    "blob": "302fb13120ebe1febb26135ae389260e780897ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8705fcd42be54369b59f742a847f985e49e0804899839d8099033429b138d3df",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50119ff0bf0730853e32540068d5c112c8035791832b611222b3e2469f71e308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance gsemiring : DirectSum.GSemiring fun i => ⨂[R]^i M :=
  { TensorPower.gmonoid with
    mul_zero := fun _ => map_zero _
    zero_mul := fun _ => LinearMap.map_zero₂ _ _
    mul_add := fun _ _ _ => map_add _ _ _
    add_mul := fun _ _ _ => LinearMap.map_add₂ _ _ _ _
    natCast := fun n => algebraMap₀ (n : R)
    natCast_zero := by simp only [Nat.cast_zero, map_zero]
    natCast_succ := fun n => by simp only [Nat.cast_succ, map_add, algebraMap₀_one] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7bd55f018c4cf51ad2cb91c517783cfe97c367f992f41f65a8b62a617839164b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `302fb13120ebe1febb26135ae389260e780897ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
