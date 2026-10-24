# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "879bc6add5a214b8dff9306fd4f1df7cdf8b88cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ae03854350c8da17977f18195613001ef3d8e29ba74a1e0e4bdbc552d332b22.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4ba34b7-b534-5d03-ab15-6de65b875182",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:747bc993-d748-7815-9c94-6f473cf25bfa",
  "kind": "theorem",
  "lexical_name": "add",
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
  "slug": "add--43abdae2376e8aaa7c27fd84",
  "source": {
    "blob": "879bc6add5a214b8dff9306fd4f1df7cdf8b88cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Majorized/Variant9ae03854350c8da17977f18195613001ef3d8e29ba74a1e0e4bdbc552d332b22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43abdae2376e8aaa7c27fd8494692720f30736dca5c0cfd4dd544e96bfa41d8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Majorized/Variant9ae03854350c8da17977f18195613001ef3d8e29ba74a1e0e4bdbc552d332b22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747bc993-d748-7815-9c94-6f473cf25bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add {f_exp g_exp : ℝ} (hf : Majorized f b f_exp)
    (hg : Majorized g b g_exp) (hf_exp : f_exp ≤ exp) (hg_exp : g_exp ≤ exp) :
    Majorized (f + g) b exp := by
  simp only [Majorized] at *
  intro exp' h_exp'
  exact (hf _ (by order)).add (hg _ (by order))

/-- The product of two functions that are majorized with exponents `f_exp` and `g_exp` is
majorized with exponent `f_exp + g_exp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Majorized/Variant9ae03854350c8da17977f18195613001ef3d8e29ba74a1e0e4bdbc552d332b22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Majorized/Variant9ae03854350c8da17977f18195613001ef3d8e29ba74a1e0e4bdbc552d332b22.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `879bc6add5a214b8dff9306fd4f1df7cdf8b88cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
