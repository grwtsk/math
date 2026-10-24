# smul_mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67e40056-3df7-2481-8949-4a1952ba3189",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0bcf1ae-6934-3efe-8ec9-a5da5185d219",
  "kind": "theorem",
  "lexical_name": "smul_mem_iff",
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
  "slug": "smul-mem-iff--f1fc99b5b8fc638add2bae0f",
  "source": {
    "blob": "fda4f378edba50c35e4f82e1186764443b8650e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 396,
    "path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1fc99b5b8fc638add2bae0f75a40c9cedb9f69cc269c81704a651930e8aa46e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0bcf1ae-6934-3efe-8ec9-a5da5185d219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_iff (s0 : s ≠ 0) : s • x ∈ p ↔ x ∈ p :=
  p.smul_mem_iff' (Units.mk0 s s0)
#align sub_mul_action.smul_mem_iff SubMulAction.smul_mem_iff

end SubMulAction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SubMulAction/Variant0cdbddbfb332373b13669bd0b32f41a703d990b52cd7af41136aa6706925b457.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fda4f378edba50c35e4f82e1186764443b8650e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
