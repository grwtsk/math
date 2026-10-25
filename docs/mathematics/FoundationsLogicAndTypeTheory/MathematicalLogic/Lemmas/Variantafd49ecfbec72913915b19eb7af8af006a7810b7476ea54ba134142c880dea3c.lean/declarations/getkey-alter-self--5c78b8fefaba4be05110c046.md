# getKey_alter_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ec23819-dc8d-92a8-1397-23a6fbf55933",
  "kind": "theorem",
  "lexical_name": "getKey_alter_self",
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
  "slug": "getkey-alter-self--5c78b8fefaba4be05110c046",
  "source": {
    "blob": "52cf1f0e2009d97be473c9ce15757b2053caabab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3657,
    "line": 3652,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c78b8fefaba4be05110c046be6d7ece846093b5f36e216c54e1a670d37cc68c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ec23819-dc8d-92a8-1397-23a6fbf55933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3652–3657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey_alter_self [TransCmp cmp] [LawfulEqCmp cmp] [Inhabited α] {k : α}
    {f : Option (β k) → Option (β k)} {hc : k ∈ t.alter k f} :
    (t.alter k f).getKey k hc = k :=
  Impl.getKey_alter_self t.wf

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantafd49ecfbec72913915b19eb7af8af006a7810b7476ea54ba134142c880dea3c.lean#L3652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52cf1f0e2009d97be473c9ce15757b2053caabab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
