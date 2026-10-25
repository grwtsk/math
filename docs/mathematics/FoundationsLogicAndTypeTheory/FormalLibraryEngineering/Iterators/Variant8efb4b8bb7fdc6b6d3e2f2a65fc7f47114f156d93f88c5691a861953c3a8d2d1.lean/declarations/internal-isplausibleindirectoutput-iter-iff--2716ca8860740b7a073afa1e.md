# Internal.isPlausibleIndirectOutput_iter_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf46a363-1c79-5750-82b3-6eda509234aa",
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
  "slug": "internal-isplausibleindirectoutput-iter-iff--2716ca8860740b7a073afa1e",
  "source": {
    "blob": "9cd1124b07777808d3b3eeba696d5599494db31f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 567,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2716ca8860740b7a073afa1e857a34ac7b38aa5911425c1af9944b346aa55ec4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf46a363-1c79-5750-82b3-6eda509234aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–584.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterators/Variant8efb4b8bb7fdc6b6d3e2f2a65fc7f47114f156d93f88c5691a861953c3a8d2d1.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cd1124b07777808d3b3eeba696d5599494db31f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
