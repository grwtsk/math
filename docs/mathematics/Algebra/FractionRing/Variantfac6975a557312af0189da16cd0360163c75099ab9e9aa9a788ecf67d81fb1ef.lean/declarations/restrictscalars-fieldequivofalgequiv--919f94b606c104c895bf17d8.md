# restrictScalars_fieldEquivOfAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "915d9cf3c6c25054c2bbf7a29b63b6208183cc0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 573,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64f1b4ae-57e5-038e-b976-4a93eed01783",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:998318b3-decb-02f9-d1bc-0f455036c477",
  "kind": "lemma",
  "lexical_name": "restrictScalars_fieldEquivOfAlgEquiv",
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
  "slug": "restrictscalars-fieldequivofalgequiv--919f94b606c104c895bf17d8",
  "source": {
    "blob": "915d9cf3c6c25054c2bbf7a29b63b6208183cc0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 573,
    "path": "GRWTSK/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919f94b606c104c895bf17d8ffe11bf6591a7be97cec8bfbf21c0dc1c8a1d9bf",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:998318b3-decb-02f9-d1bc-0f455036c477`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrictScalars_fieldEquivOfAlgEquiv (f : B ≃ₐ[A] C) :
    (fieldEquivOfAlgEquiv FA FB FC f).restrictScalars A = algEquivOfAlgEquiv f := by
  ext; rfl

/-- This says that `fieldEquivOfAlgEquiv f` is an extension of `f` (i.e., it agrees with `f` on
`B`). Whereas `(fieldEquivOfAlgEquiv f).commutes` says that `fieldEquivOfAlgEquiv f` fixes `K`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915d9cf3c6c25054c2bbf7a29b63b6208183cc0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
