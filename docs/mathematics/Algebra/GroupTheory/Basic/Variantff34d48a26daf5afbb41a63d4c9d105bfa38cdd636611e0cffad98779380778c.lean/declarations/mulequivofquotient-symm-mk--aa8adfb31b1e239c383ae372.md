# mulEquivOfQuotient_symm_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c873fdb3-7356-d1b8-86ce-29968c147307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:754e367d-60e6-a776-fdac-cb33bb28ad40",
  "kind": "theorem",
  "lexical_name": "mulEquivOfQuotient_symm_mk'",
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
  "slug": "mulequivofquotient-symm-mk--aa8adfb31b1e239c383ae372",
  "source": {
    "blob": "b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1300,
    "line": 1296,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa8adfb31b1e239c383ae37239340ee0227fa03cc7aa08f8f91a5ac1670f9a7c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754e367d-60e6-a776-fdac-cb33bb28ad40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1296–1300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulEquivOfQuotient_symm_mk' (x y) :
    (mulEquivOfQuotient f).symm (f.mk' x y) = (monoidOf S).mk' x y :=
  f.lift_mk' (monoidOf S).map_units _ _

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantff34d48a26daf5afbb41a63d4c9d105bfa38cdd636611e0cffad98779380778c.lean#L1296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ad4d45fb75bf6e2fb813747fdaf3b4f3d74e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
