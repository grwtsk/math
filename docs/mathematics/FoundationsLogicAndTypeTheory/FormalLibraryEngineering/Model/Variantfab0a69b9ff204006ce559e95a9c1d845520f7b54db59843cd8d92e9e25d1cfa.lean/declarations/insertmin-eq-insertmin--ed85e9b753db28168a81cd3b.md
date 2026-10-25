# insertMin_eq_insertMin!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b9f4c54c110488b8d29b38915e87a5f45d2ea5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 889,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e448f814-afd2-0c18-23f1-0c45049b91ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1838afb0-1909-6e8b-3a02-d10d3897f404",
  "kind": "theorem",
  "lexical_name": "insertMin_eq_insertMin!",
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
  "slug": "insertmin-eq-insertmin--ed85e9b753db28168a81cd3b",
  "source": {
    "blob": "07b9f4c54c110488b8d29b38915e87a5f45d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 894,
    "line": 889,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed85e9b753db28168a81cd3bfd3100df134be9b4e0ada606f44a1e098b9c63d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1838afb0-1909-6e8b-3a02-d10d3897f404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertMin_eq_insertMin! [Ord α] {a b} {t : Impl α β} (htb) :
    (t.insertMin a b htb).impl = t.insertMin! a b := by
  fun_cases insertMin!
  · rfl
  · simp only [insertMin, balanceL_eq_balanceL!, insertMin_eq_insertMin! htb.left]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variantfab0a69b9ff204006ce559e95a9c1d845520f7b54db59843cd8d92e9e25d1cfa.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b9f4c54c110488b8d29b38915e87a5f45d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
