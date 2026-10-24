# map_natCast'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2fcfd7d-4f3a-8718-77b5-b9d0a288f6ea",
  "kind": "theorem",
  "lexical_name": "map_natCast'",
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
  "slug": "map-natcast--48ec4105edbceeb34569deee",
  "source": {
    "blob": "135d0d84862edcaa2cec92727631ffd6062db41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 242,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48ec4105edbceeb34569deee284584ef6bcde9ee34b07aaee635df70bade2e14",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2fcfd7d-4f3a-8718-77b5-b9d0a288f6ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_natCast' {A} [AddMonoidWithOne A] [AddMonoidHomClass F A B] (f : F) (h : f 1 = 1) :
    ∀ n : ℕ, f n = n
  | 0 => by simp [map_zero f]
  | n + 1 => by
    rw [Nat.cast_add, map_add, Nat.cast_add, map_natCast' f h n, Nat.cast_one, h, Nat.cast_one]
#align map_nat_cast' map_natCast'

end AddMonoidHomClass

section MonoidWithZeroHomClass

variable {A F : Type*} [MulZeroOneClass A]

/-- If two `MonoidWithZeroHom`s agree on the positive naturals they are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135d0d84862edcaa2cec92727631ffd6062db41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
