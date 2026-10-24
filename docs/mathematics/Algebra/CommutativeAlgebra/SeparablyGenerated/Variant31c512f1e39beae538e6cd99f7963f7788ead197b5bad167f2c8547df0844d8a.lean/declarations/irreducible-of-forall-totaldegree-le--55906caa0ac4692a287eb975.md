# irreducible_of_forall_totalDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf45559b-93ba-dd9a-4a3f-4de23f1e19e3",
  "kind": "lemma",
  "lexical_name": "irreducible_of_forall_totalDegree_le",
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
  "slug": "irreducible-of-forall-totaldegree-le--55906caa0ac4692a287eb975",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55906caa0ac4692a287eb9752fe7915f3ee2d9fdde20bcf054b86938f70c8df7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf45559b-93ba-dd9a-4a3f-4de23f1e19e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma irreducible_of_forall_totalDegree_le (hF0 : F ≠ 0) (hFa : F.aeval a = 0) : Irreducible F := by
  refine ⟨fun h' ↦ (h'.map (aeval a)).ne_zero hFa, fun q₁ q₂ e ↦ ?_⟩
  wlog h₁ : aeval a q₁ = 0 generalizing q₁ q₂
  · exact .symm (this q₂ q₁ (e.trans (mul_comm ..)) <| by
      simpa [h₁, hFa] using Eq.symm <| congr(aeval a $e))
  have ne := mul_ne_zero_iff.mp (e ▸ hF0)
  have := HF q₁ ne.1 h₁
  rw [e, totalDegree_mul_of_isDomain ne.1 ne.2, add_le_iff_nonpos_right, nonpos_iff_eq_zero] at this
  refine .inr (isUnit_iff_totalDegree_of_isReduced.mpr ⟨?_, this⟩)
  rw [totalDegree_eq_zero_iff_eq_C.mp this] at ne
  simpa using ne.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
