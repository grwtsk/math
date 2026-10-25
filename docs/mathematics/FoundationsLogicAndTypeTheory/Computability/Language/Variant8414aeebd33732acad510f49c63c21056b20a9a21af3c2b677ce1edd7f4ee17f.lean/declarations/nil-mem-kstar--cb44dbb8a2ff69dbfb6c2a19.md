# nil_mem_kstar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d73f32fb-c45a-5fcd-22ec-14508b3e1c0f",
  "kind": "theorem",
  "lexical_name": "nil_mem_kstar",
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
  "slug": "nil-mem-kstar--cb44dbb8a2ff69dbfb6c2a19",
  "source": {
    "blob": "1d58f3eac9f99d9a77fad851f63746eb7f138597",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variant8414aeebd33732acad510f49c63c21056b20a9a21af3c2b677ce1edd7f4ee17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb44dbb8a2ff69dbfb6c2a1997cbd14ce6b443d16edc412a44373e936312e569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Language/Variant8414aeebd33732acad510f49c63c21056b20a9a21af3c2b677ce1edd7f4ee17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73f32fb-c45a-5fcd-22ec-14508b3e1c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nil_mem_kstar (l : Language α) : [] ∈ l∗ :=
  ⟨[], rfl, fun _ h ↦ by contradiction⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Language/Variant8414aeebd33732acad510f49c63c21056b20a9a21af3c2b677ce1edd7f4ee17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Language/Variant8414aeebd33732acad510f49c63c21056b20a9a21af3c2b677ce1edd7f4ee17f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d58f3eac9f99d9a77fad851f63746eb7f138597` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
