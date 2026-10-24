# _root_.isBigO_riemannZeta_sub_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48846402-926f-2117-18d6-33c8c46fb7ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59b466ea-87a7-fdfc-8624-eb2d349c9955",
  "kind": "lemma",
  "lexical_name": "_root_.isBigO_riemannZeta_sub_one_div",
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
  "slug": "root-isbigo-riemannzeta-sub-one-div--a51a8ff538013b1963eadd39",
  "source": {
    "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 351,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51a8ff538013b1963eadd39a952187c1bda0bb0ac6d70eef8afb44ee4fd2fac",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59b466ea-87a7-fdfc-8624-eb2d349c9955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.isBigO_riemannZeta_sub_one_div {F : Type*} [Norm F] [One F] [NormOneClass F] :
    (fun s : ℂ ↦ riemannZeta s - 1 / (s - 1)) =O[𝓝 1] (fun _ ↦ 1 : ℂ → F) := by
  simpa only [Asymptotics.isBigO_one_nhds_ne_iff] using
     tendsto_riemannZeta_sub_one_div.isBigO_one (F := F)

end continuity

section val_at_one

open Complex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e480af9f9916b5dec99f1a66725f221e6618d221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
