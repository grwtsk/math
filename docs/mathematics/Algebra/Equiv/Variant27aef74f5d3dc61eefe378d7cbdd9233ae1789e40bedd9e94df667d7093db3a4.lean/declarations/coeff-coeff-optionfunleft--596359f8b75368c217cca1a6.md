# coeff_coeff_optionFunLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5094000f-57cb-edd2-bf1f-50ffa3e43427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a652021f-1d01-ef31-daa3-3fe0f71098dd",
  "kind": "lemma",
  "lexical_name": "coeff_coeff_optionFunLeft",
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
  "slug": "coeff-coeff-optionfunleft--596359f8b75368c217cca1a6",
  "source": {
    "blob": "6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:596359f8b75368c217cca1a6854f8461ff1648eaee8381ea066c0219647205d5",
  "verification": {
    "reference": "docs/verification/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a652021f-1d01-ef31-daa3-3fe0f71098dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma coeff_coeff_optionFunLeft (p : MvPowerSeries (Option σ) R) (n : ℕ) (x : σ →₀ ℕ) :
    coeff x (PowerSeries.coeff n (optionFunLeft σ R p)) = coeff (x.optionElim n) p := by
  rw [optionFunLeft, PowerSeries.coeff_mk]
  exact LinearMap.proj_apply ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Equiv/Variant27aef74f5d3dc61eefe378d7cbdd9233ae1789e40bedd9e94df667d7093db3a4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b443af5cd33a9a4bcdeb6be0fddf9eeb84161fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
