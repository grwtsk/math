# uncurry_mulSingle_mulSingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09ec846e10e42650083fe01cdd3d7eba3eae90a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6339191-ed4e-f094-d905-d016f7efb9ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0500023a-50f6-6d33-e43b-c96ea2256da8",
  "kind": "theorem",
  "lexical_name": "uncurry_mulSingle_mulSingle",
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
  "slug": "uncurry-mulsingle-mulsingle--dc04152c66d7d9937a861b02",
  "source": {
    "blob": "c09ec846e10e42650083fe01cdd3d7eba3eae90a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 479,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc04152c66d7d9937a861b02bf7e38713e1a54ae89d57336fc5589bb46058958",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0500023a-50f6-6d33-e43b-c96ea2256da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uncurry_mulSingle_mulSingle [DecidableEq α] [∀ a, DecidableEq (β a)] [∀ a b, One (γ a b)]
    (a : α) (b : β a) (x : γ a b) :
    Sigma.uncurry (Pi.mulSingle a (Pi.mulSingle b x)) = Pi.mulSingle (Sigma.mk a b) x := by
  rw [← curry_mulSingle ⟨a, b⟩, uncurry_curry]

end Sigma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant840907b8f5e277d18b4350e6fb4762803ce406975ac091954a623317e520c3c8.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09ec846e10e42650083fe01cdd3d7eba3eae90a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
