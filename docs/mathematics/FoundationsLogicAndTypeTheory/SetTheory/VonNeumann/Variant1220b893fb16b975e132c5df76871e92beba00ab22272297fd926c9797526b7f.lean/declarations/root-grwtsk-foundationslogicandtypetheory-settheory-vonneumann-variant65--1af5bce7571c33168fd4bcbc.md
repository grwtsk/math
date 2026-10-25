# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.VonNeumann.Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.Ordinal.card_le_card_vonNeumann

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4c58aa-aaad-0c9f-23a9-8ca3ca6cd811",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.VonNeumann.Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.Ordinal.card_le_card_vonNeumann",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-vonneumann-variant65--1af5bce7571c33168fd4bcbc",
  "source": {
    "blob": "385c2ed4d4426281af33a1078f28ffbe7ad17384",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af5bce7571c33168fd4bcbced18ce424d7117fd163596b412efe1bf348d3c3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4c58aa-aaad-0c9f-23a9-8ca3ca6cd811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.VonNeumann.Variant655c3ac026f15c654b3b49874d9158220d9fd96f453800b4e5a87718b0ff6eed.Ordinal.card_le_card_vonNeumann (o : Ordinal) : o.card ≤ card (V_ o) := by
  simpa using card_mono o.toZFSet_subset_vonNeumann

open Cardinal in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385c2ed4d4426281af33a1078f28ffbe7ad17384` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
