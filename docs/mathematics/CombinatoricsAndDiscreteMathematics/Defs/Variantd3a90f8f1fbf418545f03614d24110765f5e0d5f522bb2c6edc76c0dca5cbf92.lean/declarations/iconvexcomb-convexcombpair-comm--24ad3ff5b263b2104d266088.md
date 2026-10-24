# iConvexComb_convexCombPair_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56f69e8d-6de6-a1e0-1ec0-a3b6c2a679ae",
  "kind": "lemma",
  "lexical_name": "iConvexComb_convexCombPair_comm",
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
  "slug": "iconvexcomb-convexcombpair-comm--24ad3ff5b263b2104d266088",
  "source": {
    "blob": "04c87a12e5801673221adb8bc4c459e05bab0220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 783,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ad3ff5b263b2104d266088bdc979d1efdc028415b6c2346ac7c62f8c7c5513",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56f69e8d-6de6-a1e0-1ec0-a3b6c2a679ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iConvexComb_convexCombPair_comm (f : StdSimplex R I) (e₁ e₂ : I → X) :
    f.iConvexComb (fun x ↦ convexCombPair s t hs ht h (e₁ x) (e₂ x)) =
      convexCombPair s t hs ht h (f.iConvexComb e₁) (f.iConvexComb e₂) := by
  simp only [convexCombPair_def]
  convert (iConvexComb_comm (.duple 0 1 hs ht h) f ![e₁, e₂]).symm with i _ j _ j
  · fin_cases j <;> simp
  · fin_cases j <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantd3a90f8f1fbf418545f03614d24110765f5e0d5f522bb2c6edc76c0dca5cbf92.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c87a12e5801673221adb8bc4c459e05bab0220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
