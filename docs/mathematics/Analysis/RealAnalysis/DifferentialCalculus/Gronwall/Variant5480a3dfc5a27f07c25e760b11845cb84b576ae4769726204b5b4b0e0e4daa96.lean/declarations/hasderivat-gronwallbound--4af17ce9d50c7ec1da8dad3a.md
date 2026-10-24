# hasDerivAt_gronwallBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3462ad2-b37f-af56-7fa5-bcdc9e7f6bf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a81aab15-5183-e6c8-834c-249b3905dce9",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_gronwallBound",
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
  "slug": "hasderivat-gronwallbound--4af17ce9d50c7ec1da8dad3a",
  "source": {
    "blob": "8baf1a4b2c803603ebc385e55ff72ee2d0c08c15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af17ce9d50c7ec1da8dad3ab13d7d1d9e13a95f9485e29691d61ce32a2510a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a81aab15-5183-e6c8-834c-249b3905dce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_gronwallBound (δ K ε x : ℝ) :
    HasDerivAt (gronwallBound δ K ε) (K * gronwallBound δ K ε x + ε) x := by
  by_cases hK : K = 0
  · subst K
    simp only [gronwallBound_K0, zero_mul, zero_add]
    convert! ((hasDerivAt_id x).const_mul ε).const_add δ
    rw [mul_one]
  · simp only [gronwallBound_of_K_ne_0 hK]
    convert!
      (((hasDerivAt_id x).const_mul K).exp.const_mul δ).add
        ((((hasDerivAt_id x).const_mul K).exp.sub_const 1).const_mul (ε / K)) using 1
    simp only [id]
    field

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gronwall/Variant5480a3dfc5a27f07c25e760b11845cb84b576ae4769726204b5b4b0e0e4daa96.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baf1a4b2c803603ebc385e55ff72ee2d0c08c15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
