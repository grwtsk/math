# commGroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b94c2255f79788edd1e9743f8a517f481fab256f5174c84c912786be29d5f69",
  "kind": "abbrev",
  "lexical_name": "commGroupWithZero",
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
  "slug": "commgroupwithzero--dee8a3a20114b966eab6bffc",
  "source": {
    "blob": "b9bb261d4d9848f5d4595f49209e2f99a081a901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 257,
    "path": "GRWTSK/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dee8a3a20114b966eab6bffc0cc21432692dc84a5df59dd9ed2ab5082fd44fdb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b94c2255f79788edd1e9743f8a517f481fab256f5174c84c912786be29d5f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev commGroupWithZero : CommGroupWithZero (FractionalIdeal A⁰ K) where
  inv_zero := inv_zero' _
  mul_inv_cancel := isDedekindDomainInv_iff.mp h
  div_eq_mul_inv I J := by
    obtain rfl | hJ := eq_or_ne J 0
    · simp [inv_zero']
    refine le_antisymm ?_ ((FractionalIdeal.le_div_iff_mul_le hJ).2 ?_)
    · suffices I / J * J ≤ I by
        simpa [mul_assoc, isDedekindDomainInv_iff.mp h _ hJ] using mul_left_mono (a := J⁻¹) this
      simp [FractionalIdeal.mul_le, mem_div_iff_of_ne_zero hJ]
    · rw [mul_assoc, mul_comm _ J, isDedekindDomainInv_iff.mp h _ hJ, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant85c801d71118b5f526de088cf78b233a8e96863108770e17b7ba33f36cfa0591.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9bb261d4d9848f5d4595f49209e2f99a081a901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
