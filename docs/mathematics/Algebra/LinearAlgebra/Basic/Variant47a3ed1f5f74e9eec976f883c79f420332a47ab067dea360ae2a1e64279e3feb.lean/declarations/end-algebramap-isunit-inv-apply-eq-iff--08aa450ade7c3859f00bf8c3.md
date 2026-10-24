# End.algebraMap_isUnit_inv_apply_eq_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f7c525d-41ce-470e-2bce-39c8f89c8548",
  "kind": "theorem",
  "lexical_name": "End.algebraMap_isUnit_inv_apply_eq_iff'",
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
  "slug": "end-algebramap-isunit-inv-apply-eq-iff--08aa450ade7c3859f00bf8c3",
  "source": {
    "blob": "c99fbf6d09c94f85f896912c5e32a225e8dbc640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08aa450ade7c3859f00bf8c311755d0fee105304bbf27da20b2d93f2a6896ede",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f7c525d-41ce-470e-2bce-39c8f89c8548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem End.algebraMap_isUnit_inv_apply_eq_iff' {x : R}
    (h : IsUnit (algebraMap R (Module.End S M) x)) (m m' : M) :
    m' = (↑h.unit⁻¹ : Module.End S M) m ↔ m = x • m' where
  mp H := H ▸ (isUnit_apply_inv_apply_of_isUnit h m).symm
  mpr H := by
    apply_fun (↑h.unit : M → M) using ((isUnit_iff _).mp h).injective
    rw [H]
    simpa using isUnit_apply_inv_apply_of_isUnit h (x • m') |>.symm

end

end Module

namespace LinearMap

variable {R : Type*} {A : Type*} {B : Type*} [CommSemiring R] [Semiring A] [Semiring B]
  [Algebra R A] [Algebra R B]

/-- An alternate statement of `LinearMap.map_smul` for when `algebraMap` is more convenient to
work with than `•`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99fbf6d09c94f85f896912c5e32a225e8dbc640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
