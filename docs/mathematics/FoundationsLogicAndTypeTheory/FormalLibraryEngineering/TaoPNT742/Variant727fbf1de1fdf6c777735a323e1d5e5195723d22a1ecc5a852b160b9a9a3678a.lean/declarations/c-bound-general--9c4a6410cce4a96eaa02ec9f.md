# C_bound_general

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59c732ddad8ee7f45bbca218c9d773ebb07ef8e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/727fbf1de1fdf6c777735a323e1d5e5195723d22a1ecc5a852b160b9a9a3678a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f1731d1-8c75-11b8-70e9-9ff6d7d2d536",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:182ddf85-ce67-b6e6-dbb1-0430f12424f2",
  "kind": "theorem",
  "lexical_name": "C_bound_general",
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
  "slug": "c-bound-general--9c4a6410cce4a96eaa02ec9f",
  "source": {
    "blob": "59c732ddad8ee7f45bbca218c9d773ebb07ef8e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variant727fbf1de1fdf6c777735a323e1d5e5195723d22a1ecc5a852b160b9a9a3678a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4a6410cce4a96eaa02ec9f97ba95546decdf318e9502d2012be9bdaaf58b3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variant727fbf1de1fdf6c777735a323e1d5e5195723d22a1ecc5a852b160b9a9a3678a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182ddf85-ce67-b6e6-dbb1-0430f12424f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem C_bound_general :
    ∀ σ ∈ Set.Icc (0:ℝ) 2, (176:ℚ)/1000 * σ + (246:ℚ)/1000 ≤ (6:ℚ)/10 := by
  certify_bound

/-! ## Part E: Comparison with our bounds

Our tail bound: √x/γ (naive amplitude)
Tao's bound: C_{σ,ϑ}/a^{σ+1} where a ~ γ

At σ = 1/2, a = γ: Tao gives 0.334/γ^{3/2}
Our naive bound: √x/γ = γ/γ = 1 (for x ~ γ²)

So Tao's bound decays FASTER (γ^{-3/2} vs γ^{-1})!
-/

-- Verify: 0.334/γ^{3/2} ≤ 0.001 for γ ≥ 100
-- 0.334/1000 = 0.000334 ✓
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variant727fbf1de1fdf6c777735a323e1d5e5195723d22a1ecc5a852b160b9a9a3678a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TaoPNT742/Variant727fbf1de1fdf6c777735a323e1d5e5195723d22a1ecc5a852b160b9a9a3678a.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c732ddad8ee7f45bbca218c9d773ebb07ef8e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
