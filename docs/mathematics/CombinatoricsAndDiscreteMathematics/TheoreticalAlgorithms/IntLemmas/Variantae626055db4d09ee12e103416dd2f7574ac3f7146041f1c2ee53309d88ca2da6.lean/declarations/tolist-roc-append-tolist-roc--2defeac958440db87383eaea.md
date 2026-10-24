# toList_roc_append_toList_roc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6438e37b-8ace-f37c-671d-00564b2140b4",
  "kind": "theorem",
  "lexical_name": "toList_roc_append_toList_roc",
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
  "slug": "tolist-roc-append-tolist-roc--2defeac958440db87383eaea",
  "source": {
    "blob": "9104bea2058338fad7470d114810259cfa341fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1388,
    "line": 1384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantae626055db4d09ee12e103416dd2f7574ac3f7146041f1c2ee53309d88ca2da6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2defeac958440db87383eaea6c3b2a8fcb9b6458a5d974950f86ffa6f98d58f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantae626055db4d09ee12e103416dd2f7574ac3f7146041f1c2ee53309d88ca2da6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6438e37b-8ace-f37c-671d-00564b2140b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1384–1388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_roc_append_toList_roc {l m n : Int} (h : l ≤ m) (h' : m ≤ n) :
    (l<...=m).toList ++ (m<...=n).toList = (l<...=n).toList := by
  simp [toList_roc_eq_toList_rco, toList_rco_append_toList_rco (Int.add_le_add_right h 1) (Int.add_le_add_right h' 1)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantae626055db4d09ee12e103416dd2f7574ac3f7146041f1c2ee53309d88ca2da6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntLemmas/Variantae626055db4d09ee12e103416dd2f7574ac3f7146041f1c2ee53309d88ca2da6.lean#L1384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9104bea2058338fad7470d114810259cfa341fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
