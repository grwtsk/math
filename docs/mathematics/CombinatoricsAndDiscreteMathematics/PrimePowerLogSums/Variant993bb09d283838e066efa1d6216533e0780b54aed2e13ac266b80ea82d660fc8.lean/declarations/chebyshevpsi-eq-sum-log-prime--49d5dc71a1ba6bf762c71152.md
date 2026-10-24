# chebyshevPsi_eq_sum_log_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a9ed353-be67-1005-ca52-23a3762f03e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d93a899-aa54-b35d-1667-768576494b4b",
  "kind": "theorem",
  "lexical_name": "chebyshevPsi_eq_sum_log_prime",
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
  "slug": "chebyshevpsi-eq-sum-log-prime--49d5dc71a1ba6bf762c71152",
  "source": {
    "blob": "ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d5dc71a1ba6bf762c71152f6175ad6f8b9ca6c99f4b1aa7c546fdf44b89110",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d93a899-aa54-b35d-1667-768576494b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevPsi_eq_sum_log_prime
    (N : Nat) :
    chebyshevPsi N =
      ∑ p ∈ primesUpTo N, (Nat.log p N : Real) * Real.log p := by
  unfold chebyshevPsi primePowerPairsUpTo
  rw [Finset.sum_biUnion]
  · refine Finset.sum_congr rfl ?_
    intro p hp
    rw [Finset.sum_map]
    simp [Finset.sum_const, nsmul_eq_mul, Nat.card_Icc]
  · intro p _hp q _hq hpq
    unfold Function.onFun
    rw [Finset.disjoint_left]
    intro x hx hy
    rcases Finset.mem_map.mp hx with ⟨kp, _hkp, hxp⟩
    rcases Finset.mem_map.mp hy with ⟨kq, _hkq, hxq⟩
    have hxp' : (p, kp) = x := by simpa using hxp
    have hxq' : (q, kq) = x := by simpa using hxq
    have hpair : (p, kp) = (q, kq) := by
      rw [hxp', hxq']
    exact hpq (Prod.ext_iff.mp hpair).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimePowerLogSums/Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac55ce5c47e9dce6bb1db4c1bcc9d814b42b6ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
