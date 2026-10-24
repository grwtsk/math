# isTorsion_iff_isTorsion_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d35e8891b58df9ba9064872f734020449e518115",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95635189-8540-ba80-1930-2801098cdd15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56c88612-f171-462e-c7ca-fb0d24f48ced",
  "kind": "theorem",
  "lexical_name": "isTorsion_iff_isTorsion_int",
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
  "slug": "istorsion-iff-istorsion-int--8cd71df652dba8c9baa874bb",
  "source": {
    "blob": "d35e8891b58df9ba9064872f734020449e518115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 892,
    "path": "GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd71df652dba8c9baa874bb0cc12763a7af57c3475a4713a4281eca4e39050d",
  "verification": {
    "reference": "docs/verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56c88612-f171-462e-c7ca-fb0d24f48ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTorsion_iff_isTorsion_int [AddCommGroup M] :
    AddMonoid.IsTorsion M ↔ Module.IsTorsion ℤ M := by
  refine ⟨fun h x => ?_, fun h x => ?_⟩
  · obtain ⟨n, h0, hn⟩ := (h x).exists_nsmul_eq_zero
    exact
      ⟨⟨n, mem_nonZeroDivisors_of_ne_zero <| ne_of_gt <| Int.natCast_pos.mpr h0⟩,
        (natCast_zsmul _ _).trans hn⟩
  · rw [isOfFinAddOrder_iff_nsmul_eq_zero]
    obtain ⟨n, hn⟩ := @h x
    exact ⟨_, Int.natAbs_pos.2 (nonZeroDivisors.coe_ne_zero n), natAbs_nsmul_eq_zero.2 hn⟩

end AddMonoid

namespace AddSubgroup

variable (A : Type*) [AddCommGroup A] (n : ℤ)

/-- The additive `n`-torsion subgroup for an integer `n`, denoted as `A[n]`. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35e8891b58df9ba9064872f734020449e518115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
