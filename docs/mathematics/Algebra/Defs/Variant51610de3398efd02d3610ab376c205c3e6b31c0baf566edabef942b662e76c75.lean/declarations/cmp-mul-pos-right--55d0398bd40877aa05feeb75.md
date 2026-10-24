# cmp_mul_pos_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b6352bb3954ee7b2d3e9a95de1456db50e2b00a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 960,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fd8d8b6-6ad8-608d-4bf8-64aa032dfee3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24f103bf-f053-6318-0164-99e52860f324",
  "kind": "theorem",
  "lexical_name": "cmp_mul_pos_right",
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
  "slug": "cmp-mul-pos-right--55d0398bd40877aa05feeb75",
  "source": {
    "blob": "5b6352bb3954ee7b2d3e9a95de1456db50e2b00a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 963,
    "line": 960,
    "path": "GRWTSK/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d0398bd40877aa05feeb7524f173fee8a33301374308525ba9f1245c80fe3a",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24f103bf-f053-6318-0164-99e52860f324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–963.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cmp_mul_pos_right (ha : 0 < a) (b c : α) : cmp (b * a) (c * a) = cmp b c :=
  (strictMono_mul_right_of_pos ha).cmp_map_eq b c
#align cmp_mul_pos_right cmp_mul_pos_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant51610de3398efd02d3610ab376c205c3e6b31c0baf566edabef942b662e76c75.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6352bb3954ee7b2d3e9a95de1456db50e2b00a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
