# toPartitionOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b6546ac0d72c0ae1c2dfcad5bca912ac8096042e63fed389323744246697649",
  "kind": "def",
  "lexical_name": "toPartitionOfUnity",
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
  "slug": "topartitionofunity--e83207c32b7034812465e34f",
  "source": {
    "blob": "bd90182ed9dfeb4dd376fad5798aa979b6b17af9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e83207c32b7034812465e34f847b8f88afbbcac3082ecb9e613cc6fd70a9ec22",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b6546ac0d72c0ae1c2dfcad5bca912ac8096042e63fed389323744246697649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toPartitionOfUnity : PartitionOfUnity ι X s where
  toFun i := ⟨f.toPOUFun i, f.continuous_toPOUFun i⟩
  locallyFinite' := f.locallyFinite.subset f.support_toPOUFun_subset
  nonneg' i x :=
    mul_nonneg (f.nonneg i x) (finprod_cond_nonneg fun j _ => sub_nonneg.2 <| f.le_one j x)
  sum_eq_one' x hx := by
    simp only [ContinuousMap.coe_mk, sum_toPOUFun_eq, sub_eq_self]
    apply finprod_eq_zero (fun i => 1 - f i x) (f.ind x hx)
    · simp only [f.ind_apply x hx, sub_self]
    · rw [HasFiniteMulSupport, mulSupport_one_sub]
      exact f.point_finite x
  sum_le_one' x := by
    simp only [ContinuousMap.coe_mk, sum_toPOUFun_eq, sub_le_self_iff]
    exact finprod_nonneg fun i => sub_nonneg.2 <| f.le_one i x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant33f82cf50b674e55b8d62af14be086ea5169706e457e18116adb395eb2c38819.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd90182ed9dfeb4dd376fad5798aa979b6b17af9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
