# Module.DualBases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f867386b808840034cdad0532ace6d179629997099fb694e79bd9675cfb9028e",
  "kind": "structure",
  "lexical_name": "Module.DualBases",
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
  "slug": "module-dualbases--f7b44d479734c05173d7ed8b",
  "source": {
    "blob": "dd807fa9e8b679edb68bc14f586a9f79f282f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 700,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7b44d479734c05173d7ed8b06c7e5deb549af2ad566bf836fbd2ddb405a4f3f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f867386b808840034cdad0532ace6d179629997099fb694e79bd9675cfb9028e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Module.DualBases (e : ι → M) (ε : ι → Dual R M) : Prop where
  eval : ∀ i j : ι, ε i (e j) = if i = j then 1 else 0
  Total : ∀ {m : M}, (∀ i, ε i m = 0) → m = 0
  Finite : ∀ m : M, { i | ε i m ≠ 0 }.Finite := by
      use_finite_instance
#align module.dual_bases Module.DualBases

end DualBases

namespace Module.DualBases

open Module Module.Dual LinearMap Function

variable {R M ι : Type*}

variable [CommRing R] [AddCommGroup M] [Module R M]

variable {e : ι → M} {ε : ι → Dual R M}

/-- The coefficients of `v` on the basis `e` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dual/Variant48412c141764ea2ae897160295736080f09f8c90d75b3ae17179670b5aafca9b.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd807fa9e8b679edb68bc14f586a9f79f282f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
