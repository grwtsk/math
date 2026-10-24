# iSup_map_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fa9a79f-9df7-8c2c-2e5c-b4922ed49097",
  "kind": "theorem",
  "lexical_name": "iSup_map_single",
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
  "slug": "isup-map-single--6401b3c10ba75df55c38e54d",
  "source": {
    "blob": "1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 409,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6401b3c10ba75df55c38e54dd972e6bbf560ced42b11f50367e9dde783cf1fd2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fa9a79f-9df7-8c2c-2e5c-b4922ed49097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_map_single [DecidableEq ι] [Finite ι] :
    ⨆ i, map (LinearMap.single R φ i : φ i →ₗ[R] (i : ι) → φ i) (p i) = pi Set.univ p := by
  cases nonempty_fintype ι
  refine iSup_map_single_le.antisymm fun x hx => ?_
  rw [← Finset.univ_sum_single x]
  exact sum_mem_iSup fun i => mem_map_of_mem (hx i trivial)

end Submodule

namespace LinearEquiv

variable [Semiring R] {φ ψ χ : ι → Type*}
variable [(i : ι) → AddCommMonoid (φ i)] [(i : ι) → Module R (φ i)]
variable [(i : ι) → AddCommMonoid (ψ i)] [(i : ι) → Module R (ψ i)]
variable [(i : ι) → AddCommMonoid (χ i)] [(i : ι) → Module R (χ i)]

/-- Combine a family of linear equivalences into a linear equivalence of `pi`-types.

This is `Equiv.piCongrRight` as a `LinearEquiv` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant1eed02def42aba9f00957ef025831da0fc28701407424d5e79ac1fcefb25ba93.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fd1de2e3efbfe5436af2ad9901e9442c0ae0a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
