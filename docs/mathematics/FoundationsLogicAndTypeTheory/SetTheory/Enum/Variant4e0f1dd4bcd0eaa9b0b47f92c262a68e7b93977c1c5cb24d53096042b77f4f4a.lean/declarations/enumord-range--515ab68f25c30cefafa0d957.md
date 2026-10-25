# enumOrd_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e71338d-753b-5874-47fb-a173f42d6cf9",
  "kind": "theorem",
  "lexical_name": "enumOrd_range",
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
  "slug": "enumord-range--515ab68f25c30cefafa0d957",
  "source": {
    "blob": "51e967fe6cd334ceb83d48749f213b4c64bd2f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:515ab68f25c30cefafa0d957d85d68491cf2c9e0c57c9f564ef99947f0e3dc5e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e71338d-753b-5874-47fb-a173f42d6cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem enumOrd_range {f : Ordinal → Ordinal} (hf : StrictMono f) : enumOrd (range f) = f :=
  (eq_enumOrd _ hf.not_bddAbove_range_of_wellFoundedLT).2 ⟨hf, rfl⟩

/-- If `s` is closed under nonempty suprema, then its enumerator function is normal.
See also `enumOrd_isNormal_iff_isClosed`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4e0f1dd4bcd0eaa9b0b47f92c262a68e7b93977c1c5cb24d53096042b77f4f4a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e967fe6cd334ceb83d48749f213b4c64bd2f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
