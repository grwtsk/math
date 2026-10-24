# closure_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "261f2253437460ae65b20b126b381c11c74c1cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ee12dbd-4a4d-e8f0-d9bb-44105138d2e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18ccb907-9f24-c792-a41b-1688c3d1c3b9",
  "kind": "theorem",
  "lexical_name": "closure_mono",
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
  "slug": "closure-mono--ca56a5905ede14aa9789175e",
  "source": {
    "blob": "261f2253437460ae65b20b126b381c11c74c1cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 41,
    "path": "GRWTSK/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca56a5905ede14aa9789175ed2e87bcf431198228598246fe37d0e5065016525",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ccb907-9f24-c792-a41b-1688c3d1c3b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_mono (h : s ⊆ t) : closure R s ≤ closure R t :=
  closure_le.2 <| h.trans subset_closure

/-- A `SubMulAction` is finitely generated if it is the closure of a finite set. -/
@[to_additive /-- A `SubAddAction` is finitely generated if it is the closure of a finite set. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Closure/Variant0be7995ceda1f6ad6765b9bdbba40dd6458631ffc56556b83c281c76f0ebc80a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `261f2253437460ae65b20b126b381c11c74c1cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
