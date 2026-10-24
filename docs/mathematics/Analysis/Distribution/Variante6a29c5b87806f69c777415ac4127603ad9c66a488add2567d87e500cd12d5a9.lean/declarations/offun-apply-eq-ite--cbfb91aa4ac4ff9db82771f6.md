# ofFun_apply_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ee33b3e-fdad-ea4a-14cd-95ca2794177f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f33b7745-9cac-b489-7e03-742cd51304e4",
  "kind": "theorem",
  "lexical_name": "ofFun_apply_eq_ite",
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
  "slug": "offun-apply-eq-ite--cbfb91aa4ac4ff9db82771f6",
  "source": {
    "blob": "6ed6cd70dbc18209841f7a186d7e278e7281235a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 317,
    "path": "GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbfb91aa4ac4ff9db82771f63ed7887c06f40f0589d0a10c3e9ad06c8b594cc9",
  "verification": {
    "reference": "docs/verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f33b7745-9cac-b489-7e03-742cd51304e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofFun_apply_eq_ite {f : E → F} {μ : Measure E} {φ : 𝓓^{n}(Ω, ℝ)} :
    ofFun Ω f μ n φ = if LocallyIntegrableOn f Ω μ then ∫ x, φ x • f x ∂μ else 0 := by
  grind [ofFun_eq_zero, ofFun_apply]

@[simp, grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Distribution/Variante6a29c5b87806f69c777415ac4127603ad9c66a488add2567d87e500cd12d5a9.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed6cd70dbc18209841f7a186d7e278e7281235a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
