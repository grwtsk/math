# tendsto_exp_comap_re_atBot_nhdsNE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1272eb89a229af163e16b805e3268067b535db9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:555997ae-5582-6cd2-3728-8dca6925935e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7eb62b4-25e7-fe1e-e6e7-051792813cf9",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_comap_re_atBot_nhdsNE",
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
  "slug": "tendsto-exp-comap-re-atbot-nhdsne--e352f6ae26c0bdc7417fdc10",
  "source": {
    "blob": "e1272eb89a229af163e16b805e3268067b535db9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 481,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e352f6ae26c0bdc7417fdc10f6ab635cafd253aa53470c6dc6b1a03308d2f98c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7eb62b4-25e7-fe1e-e6e7-051792813cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_comap_re_atBot_nhdsNE : Tendsto exp (comap re atBot) (𝓝[≠] 0) :=
  comap_exp_nhdsNE ▸ tendsto_comap

@[deprecated (since := "2024-12-22")]
alias tendsto_exp_comap_re_atBot_nhdsWithin := tendsto_exp_comap_re_atBot_nhdsNE

end Complex

open Complex in
/-- If `f` has sum `a`, then `exp ∘ f` has product `exp a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1272eb89a229af163e16b805e3268067b535db9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
