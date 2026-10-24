# mk_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6815280-ab4a-e0d7-f95b-bcdd4850d187",
  "kind": "theorem",
  "lexical_name": "mk_coe",
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
  "slug": "mk-coe--5f32db5292e0784ddf84efd0",
  "source": {
    "blob": "af782cea4794d830078e28c42f22bc5780063ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 338,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f32db5292e0784ddf84efd06df540352e4c4c94b8e9fdd84080ae4729af6107",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6815280-ab4a-e0d7-f95b-bcdd4850d187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem mk_coe (f : G →+c[a, b] H) : mk f f.2 = f := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1e2b8919a621c209fd31d2f21dffd12776b43dcaa8d082e7ae5b9f6ac45a598f.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af782cea4794d830078e28c42f22bc5780063ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
