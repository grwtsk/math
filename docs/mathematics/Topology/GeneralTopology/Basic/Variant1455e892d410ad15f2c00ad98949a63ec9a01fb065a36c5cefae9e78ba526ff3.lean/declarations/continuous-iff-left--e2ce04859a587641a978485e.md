# continuous_iff'_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1072,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b904a314-8a84-b261-1d45-ab065b4835dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae27e0f4-e024-c313-787c-6f932541cec0",
  "kind": "theorem",
  "lexical_name": "continuous_iff'_left",
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
  "slug": "continuous-iff-left--e2ce04859a587641a978485e",
  "source": {
    "blob": "465181b36d0694eedcd5d526c39adbe802970d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1077,
    "line": 1072,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ce04859a587641a978485e868f5e41293a4b1444130e8e6935d2f2df9a7bf7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae27e0f4-e024-c313-787c-6f932541cec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1072–1077.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_iff'_left [TopologicalSpace β] {f : β → α} :
    Continuous f ↔ ∀ b, Tendsto (fun x => (f x, f b)) (𝓝 b) (𝓤 α) :=
  continuous_iff_continuousAt.trans <| forall_congr' fun _ => tendsto_nhds_left

/-- Consider two functions `f` and `g` which coincide on a set `s` and are continuous there.
Then there is an open neighborhood of `s` on which `f` and `g` are uniformly close. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1455e892d410ad15f2c00ad98949a63ec9a01fb065a36c5cefae9e78ba526ff3.lean#L1072).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465181b36d0694eedcd5d526c39adbe802970d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
