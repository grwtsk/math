# Internal.isPlausibleIndirectOutput_iter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70aff769660878fd0eb0e1fcd549ac44f7056133",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 559,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9d3c378-c5c2-1ef5-afcd-c02c199a8f64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e34879cf-787d-4be6-95cc-bb046aa3f889",
  "kind": "theorem",
  "lexical_name": "Internal.isPlausibleIndirectOutput_iter_iff",
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
  "slug": "internal-isplausibleindirectoutput-iter-iff--60d6a1761a30fc6c21838ba8",
  "source": {
    "blob": "70aff769660878fd0eb0e1fcd549ac44f7056133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 559,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d6a1761a30fc6c21838ba870fb5518bfffcfeb175cd2c85b0121993b29915f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34879cf-787d-4be6-95cc-bb046aa3f889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 559–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Internal.isPlausibleIndirectOutput_iter_iff
    [UpwardEnumerable α] [Least? α] [LE α] [DecidableLE α]
    [LawfulUpwardEnumerable α] [LawfulUpwardEnumerableLE α]
    [LawfulUpwardEnumerableLeast? α]
    {r : Ric α} {a : α} :
    (Internal.iter r).IsPlausibleIndirectOutput a ↔ a ∈ r := by
  rw [Rxc.Iterator.isPlausibleIndirectOutput_iff]
  constructor
  · rintro ⟨n, hn, hu⟩
    simp only [Membership.mem, LawfulUpwardEnumerableLE.le_iff]
    cases hr : (Internal.iter r).internalState.next
    · simp [hr] at hn
    · simpa [LawfulUpwardEnumerableLE.le_iff] using! hu
  · intro hu
    obtain ⟨init, hi, hia⟩ := LawfulUpwardEnumerableLeast?.least?_le a
    simpa [iter, hi] using ⟨hia, hu⟩

@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Varianta999f78031466141ae6e19b3a7abff86e788e4a9e25fd962a1e05985a1ccf267.lean#L559).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70aff769660878fd0eb0e1fcd549ac44f7056133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
