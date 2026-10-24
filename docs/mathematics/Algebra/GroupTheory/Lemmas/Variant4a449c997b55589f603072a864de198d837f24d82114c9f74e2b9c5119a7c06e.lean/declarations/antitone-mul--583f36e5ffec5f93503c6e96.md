# Antitone.mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9584337874155f8b0b3d61930a857873f57f9622",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70a6c6e4-4d10-e525-3bb9-54da6a74907f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bd503a3-d7fa-d361-fd81-57e67000df27",
  "kind": "theorem",
  "lexical_name": "Antitone.mul'",
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
  "slug": "antitone-mul--583f36e5ffec5f93503c6e96",
  "source": {
    "blob": "9584337874155f8b0b3d61930a857873f57f9622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1360,
    "line": 1353,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:583f36e5ffec5f93503c6e96d88d61c53a0446ca9369b1a69b4d31200123c1bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bd503a3-d7fa-d361-fd81-57e67000df27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1353–1360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antitone.mul' [CovariantClass α α (· * ·) (· ≤ ·)]
    [CovariantClass α α (swap (· * ·)) (· ≤ ·)] (hf : Antitone f) (hg : Antitone g) :
    Antitone fun x => f x * g x := fun _ _ h => mul_le_mul' (hf h) (hg h)
#align antitone.mul' Antitone.mul'
#align antitone.add Antitone.add

/-- The product of two antitone functions is antitone. -/
@[to_additive add "The sum of two antitone functions is antitone."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean#L1353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9584337874155f8b0b3d61930a857873f57f9622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
