# reverse_get_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b22429f57fedb55d5af78f635541741fc6dfb04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edef5cfd-b6de-871b-9c63-d07f04498f20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:144bfb07-9a90-7266-4e39-3fe9014bed0e",
  "kind": "theorem",
  "lexical_name": "reverse_get_zero",
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
  "slug": "reverse-get-zero--99cc4346feaa56cac3574848",
  "source": {
    "blob": "8b22429f57fedb55d5af78f635541741fc6dfb04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 286,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99cc4346feaa56cac3574848d3bcdadf143faf4c57cdd923d5590bea73630aa2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144bfb07-9a90-7266-4e39-3fe9014bed0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_get_zero {v : Vector α (n + 1)} : v.reverse.head = v.last := by
  rw [← get_zero, last_def, get_eq_get_toList, get_eq_get_toList]
  simp_rw [toList_reverse]
  rw [List.get_eq_getElem, List.get_eq_getElem, ← Option.some_inj, Fin.cast, Fin.cast,
    ← List.getElem?_eq_getElem, ← List.getElem?_eq_getElem, List.getElem?_reverse]
  · congr
    simp
  · simp

section Scan

variable {β : Type*}
variable (f : β → α → β) (b : β)
variable (v : Vector α n)

/-- Construct a `Vector β (n + 1)` from a `Vector α n` by scanning `f : β → α → β`
from the "left", that is, from 0 to `Fin.last n`, using `b : β` as the starting value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b22429f57fedb55d5af78f635541741fc6dfb04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
