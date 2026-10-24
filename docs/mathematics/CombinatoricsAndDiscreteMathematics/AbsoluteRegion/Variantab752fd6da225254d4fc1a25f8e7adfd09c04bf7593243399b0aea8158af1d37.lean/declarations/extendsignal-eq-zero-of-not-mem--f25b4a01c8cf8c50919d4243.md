# extendSignal_eq_zero_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe91b341c0cd920f2ceffea467110294e0346c56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc2dca46-3211-6c51-f3eb-92395835c632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd366ce8-d105-b3cc-3bbb-c4fdcd9d2b23",
  "kind": "theorem",
  "lexical_name": "extendSignal_eq_zero_of_not_mem",
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
  "slug": "extendsignal-eq-zero-of-not-mem--f25b4a01c8cf8c50919d4243",
  "source": {
    "blob": "fe91b341c0cd920f2ceffea467110294e0346c56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f25b4a01c8cf8c50919d4243657f3c9c3cde4c322b832edb7b591d0311a1cf25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd366ce8-d105-b3cc-3bbb-c4fdcd9d2b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extendSignal_eq_zero_of_not_mem [Zero α]
    (R : AbsoluteRegion G) (u : R.LocalCoord → α)
    {c : G.Coord} (hc : c ∉ R.coordinates) :
    extendSignal R u c = 0 := by
  letI : DecidableEq G.Coord := G.coordDecEq
  simp [extendSignal, hc]

/-- Restrict and zero-extend a global signal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AbsoluteRegion/Variantab752fd6da225254d4fc1a25f8e7adfd09c04bf7593243399b0aea8158af1d37.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe91b341c0cd920f2ceffea467110294e0346c56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
