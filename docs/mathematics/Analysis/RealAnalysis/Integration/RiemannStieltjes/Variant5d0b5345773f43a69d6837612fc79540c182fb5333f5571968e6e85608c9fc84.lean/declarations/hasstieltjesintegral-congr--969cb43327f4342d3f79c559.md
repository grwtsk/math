# hasStieltjesIntegral_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b230bb01c114b0b9304b8f63ecb3fa64d9f7ee38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9999fce2-e107-b909-5a58-4f491dd70e1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:179a2fb6-e5e3-f69a-bb10-fed557e46cc2",
  "kind": "theorem",
  "lexical_name": "hasStieltjesIntegral_congr",
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
  "slug": "hasstieltjesintegral-congr--969cb43327f4342d3f79c559",
  "source": {
    "blob": "b230bb01c114b0b9304b8f63ecb3fa64d9f7ee38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:969cb43327f4342d3f79c5591b40bd468dfa2e309a8c8fea87309a0a9fecd21a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179a2fb6-e5e3-f69a-bb10-fed557e46cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasStieltjesIntegral_congr (hBB' : B = B')
    (hf : Set.EqOn f₁ f₂ (.uIcc a b)) (hg : Set.EqOn g₁ g₂ (.uIcc a b)) :
    HasStieltjesIntegral a b B f₁ g₁ L ↔ HasStieltjesIntegral a b B' f₂ g₂ L := by
  rcases lt_trichotomy a b with hab | rfl | hab
  · simp only [hab.le, Set.uIcc_of_le, hab, HasStieltjesIntegral.of_lt] at hf hg ⊢
    exact hasStieltjesIntegral'_congr hab hBB' hf hg
  · simp
  · simp only [HasStieltjesIntegral.symm_iff (a := a) (b := b), hab.le, Set.uIcc_of_ge, hab,
      HasStieltjesIntegral.of_lt] at hf hg ⊢
    exact hasStieltjesIntegral'_congr hab hBB' hf hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannStieltjes/Variant5d0b5345773f43a69d6837612fc79540c182fb5333f5571968e6e85608c9fc84.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b230bb01c114b0b9304b8f63ecb3fa64d9f7ee38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
