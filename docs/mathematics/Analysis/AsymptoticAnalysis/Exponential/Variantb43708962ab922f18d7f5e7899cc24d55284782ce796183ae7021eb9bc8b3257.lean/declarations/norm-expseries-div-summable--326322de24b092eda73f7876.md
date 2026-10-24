# norm_expSeries_div_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a7ac26ed6b6abf8f8b81c9d0961839efdae5280",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 583,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5e1949b-e1fe-a10e-b165-df87d386838b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d5b3a10-ab25-e6e4-d23a-b21c4517d0c6",
  "kind": "theorem",
  "lexical_name": "norm_expSeries_div_summable",
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
  "slug": "norm-expseries-div-summable--326322de24b092eda73f7876",
  "source": {
    "blob": "2a7ac26ed6b6abf8f8b81c9d0961839efdae5280",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 583,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326322de24b092eda73f78762f590b2f0dc0f9d09d56337808c3ca892e92249c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d5b3a10-ab25-e6e4-d23a-b21c4517d0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_expSeries_div_summable (x : 𝔸) : Summable fun n => ‖(x ^ n / n ! : 𝔸)‖ :=
  norm_expSeries_div_summable_of_mem_ball 𝕂 x
    ((expSeries_radius_eq_top 𝕂 𝔸).symm ▸ edist_lt_top _ _)
#align norm_exp_series_div_summable norm_expSeries_div_summable

variable [CompleteSpace 𝔸]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variantb43708962ab922f18d7f5e7899cc24d55284782ce796183ae7021eb9bc8b3257.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7ac26ed6b6abf8f8b81c9d0961839efdae5280` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
