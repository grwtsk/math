# Pairing.pairingCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5648b71f54808b3a08b0267979964b987b05ba2a832fb2b202f3fcfedbfe558",
  "kind": "def",
  "lexical_name": "Pairing.pairingCore",
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
  "slug": "pairing-pairingcore--7852aa81c49605e2de4fbc1b",
  "source": {
    "blob": "1b31d82bf69277cc3cdf58e3918ae4fd24be61a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 74,
    "path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7852aa81c49605e2de4fbc1bd9433db97fd3fcf354c0c8b6697946625fd93e31",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5648b71f54808b3a08b0267979964b987b05ba2a832fb2b202f3fcfedbfe558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Pairing.pairingCore (P : A.Pairing) [P.IsProper] :
    A.PairingCore where
  ι := P.II
  dim s := s.val.dim
  simplex s := ((P.p s).val.cast (P.isUniquelyCodimOneFace s).dim_eq).simplex
  index s := (P.isUniquelyCodimOneFace s).index rfl
  nonDegenerate₁ s := ((P.p s).val.cast (P.isUniquelyCodimOneFace s).dim_eq).nonDegenerate
  nonDegenerate₂ s := by
    rw [(P.isUniquelyCodimOneFace s).δ_index rfl]
    exact s.val.nonDegenerate
  notMem₁ s := ((P.p s).val.cast (P.isUniquelyCodimOneFace s).dim_eq).notMem
  notMem₂ s := by
    rw [(P.isUniquelyCodimOneFace s).δ_index rfl]
    exact s.val.notMem
  injective_type₁' {s t} _ := by
    apply P.p.injective
    rwa [Subtype.ext_iff, N.ext_iff, SSet.N.ext_iff,
      ← (P.p s).val.cast_eq_self (P.isUniquelyCodimOneFace s).dim_eq,
      ← (P.p t).val.cast_eq_self (P.isUniquelyCodimOneFace t).dim_eq]
  injective_type₂' {s t} h := by
    rw [(P.isUniquelyCodimOneFace s).δ_index rfl,
      (P.isUniquelyCodimOneFace t).δ_index rfl] at h
    rwa [Subtype.ext_iff, N.ext_iff, SSet.N.ext_iff]
  type₁_ne_type₂' s t h := (P.ne (P.p s) t) (by
    rw [(P.isUniquelyCodimOneFace t).δ_index rfl] at h
    rwa [← (P.p s).val.cast_eq_self (P.isUniquelyCodimOneFace s).dim_eq,
      N.ext_iff, SSet.N.ext_iff])
  surjective' x := by
    obtain ⟨s, rfl | rfl⟩ := P.exists_or x
    · refine ⟨s, Or.inr ?_⟩
      simp [(P.isUniquelyCodimOneFace s).δ_index]
    · refine ⟨s, Or.inl ?_⟩
      nth_rw 1 [← (P.p s).val.cast_eq_self (P.isUniquelyCodimOneFace s).dim_eq]
      rfl

namespace PairingCore

variable (h : A.PairingCore)

/-- The type (I) simplices of `h : A.PairingCore`, as a family indexed by `h.ι`. -/
@[implicit_reducible, simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b31d82bf69277cc3cdf58e3918ae4fd24be61a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
