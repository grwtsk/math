# ker_le_range_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2130100-278b-5b66-6d2a-2399dbeb3aa9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ed4fa0-5146-6e80-1494-a80bdf374a64",
  "kind": "theorem",
  "lexical_name": "ker_le_range_iff",
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
  "slug": "ker-le-range-iff--f22e42283be8f237ba649468",
  "source": {
    "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 113,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f22e42283be8f237ba6494684fda5be0535414c9d8336bbfe592fe1e5ba722ce",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ed4fa0-5146-6e80-1494-a80bdf374a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_le_range_iff {I : Type w} [MulOneClass I] (f : G →* H) [f.range.Normal] (g : H →* I) :
    g.ker ≤ f.range ↔ (mk' f.range).comp g.ker.subtype = 1 :=
  ⟨fun h => MonoidHom.ext fun ⟨_, hx⟩ => (eq_one_iff _).mpr <| h hx,
    fun h x hx => (eq_one_iff _).mp <| by exact DFunLike.congr_fun h ⟨x, hx⟩⟩

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d5fbcf2fa6aed2482a06bd78656b7245562994` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
