# tendsto_atTop_of_geom_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20a819b5-ea6e-5118-07da-fb6c51e0277c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:533bd849-ed3d-f7a3-8fe6-675949b6cc8d",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_of_geom_le",
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
  "slug": "tendsto-attop-of-geom-le--e813ab7837cecc72a000a219",
  "source": {
    "blob": "d4d700d75becd50b8155f0085e13ae951929d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e813ab7837cecc72a000a2198853133390355f5e9ad35df53a37ea8dc1c92d06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:533bd849-ed3d-f7a3-8fe6-675949b6cc8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_of_geom_le {v : ℕ → ℝ} {c : ℝ} (h₀ : 0 < v 0) (hc : 1 < c)
    (hu : ∀ n, c * v n ≤ v (n + 1)) : Tendsto v atTop atTop :=
  (tendsto_atTop_mono fun n => geom_le (zero_le_one.trans hc.le) n fun k _ => hu k) <|
    (tendsto_pow_atTop_atTop_of_one_lt hc).atTop_mul_const h₀
#align tendsto_at_top_of_geom_le tendsto_atTop_of_geom_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb43712711fb9fe3f9930bcf3bb9552efd8667d8e1d6c4d214496ca33c2104829.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4d700d75becd50b8155f0085e13ae951929d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
