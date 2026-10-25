# hIterate_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfd33aafa4b53d2dc9ce3457f38f348ae975669c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffd8219f-a0d9-ad4e-2a8f-d0d2976fbeb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93955542-90f5-4668-5848-fe4ade2a9c61",
  "kind": "theorem",
  "lexical_name": "hIterate_elim",
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
  "slug": "hiterate-elim--21db2de9dd1d2af950a4b59e",
  "source": {
    "blob": "bfd33aafa4b53d2dc9ce3457f38f348ae975669c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21db2de9dd1d2af950a4b59ec65e6249583f4a052b3f2c85ff1303e8f3f95f18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93955542-90f5-4668-5848-fe4ade2a9c61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hIterate_elim {P : Nat → Sort _} (Q : ∀(i : Nat), P i → Prop)
    {n : Nat} (f : ∀(i : Fin n), P i.val → P (i.val+1)) (s : P 0) (init : Q 0 s)
    (step : ∀(k : Fin n) (s : P k.val), Q k.val s → Q (k.val+1) (f k s)) :
    Q n (hIterate P s f) := by
  exact hIterateFrom_elim _ _ _ _ init step

/--
`hIterate_eq`provides a mechanism for replacing `hIterate P s f` with a
function `state` showing that matches the steps performed by `hIterate`.

This allows rewriting incremental code using `hIterate` with a
non-incremental state function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variant485d26387d0c8e1e8053db00127c675b529e26491ddaa2ce4134fc98c2dde3e7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd33aafa4b53d2dc9ce3457f38f348ae975669c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
