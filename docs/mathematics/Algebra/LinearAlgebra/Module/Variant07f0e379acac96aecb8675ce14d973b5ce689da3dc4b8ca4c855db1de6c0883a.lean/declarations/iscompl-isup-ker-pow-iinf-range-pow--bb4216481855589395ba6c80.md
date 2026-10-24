# isCompl_iSup_ker_pow_iInf_range_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3db0d2d4-ce34-fe90-6b99-758cf1262f3e",
  "kind": "theorem",
  "lexical_name": "isCompl_iSup_ker_pow_iInf_range_pow",
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
  "slug": "iscompl-isup-ker-pow-iinf-range-pow--bb4216481855589395ba6c80",
  "source": {
    "blob": "36478d4039716d97e5176274c36b4c62e3870268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb4216481855589395ba6c80867e913863e71eee7910b57bad3aa1383a625783",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3db0d2d4-ce34-fe90-6b99-758cf1262f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompl_iSup_ker_pow_iInf_range_pow [IsNoetherian R M] (f : M →ₗ[R] M) :
    IsCompl (⨆ n, LinearMap.ker (f ^ n)) (⨅ n, LinearMap.range (f ^ n)) := by
  obtain ⟨k, hk⟩ := eventually_atTop.mp <| f.eventually_isCompl_ker_pow_range_pow.and <|
    f.eventually_iInf_range_pow_eq.and f.eventually_iSup_ker_pow_eq
  obtain ⟨h₁, h₂, h₃⟩ := hk k (le_refl k)
  rwa [h₂, h₃]

end LinearMap

end Ring

section CommSemiring

variable {R : Type*} (M : Type*) [CommSemiring R] [AddCommMonoid M] [Module R M] [IsArtinian R M]

namespace IsArtinian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant07f0e379acac96aecb8675ce14d973b5ce689da3dc4b8ca4c855db1de6c0883a.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36478d4039716d97e5176274c36b4c62e3870268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
