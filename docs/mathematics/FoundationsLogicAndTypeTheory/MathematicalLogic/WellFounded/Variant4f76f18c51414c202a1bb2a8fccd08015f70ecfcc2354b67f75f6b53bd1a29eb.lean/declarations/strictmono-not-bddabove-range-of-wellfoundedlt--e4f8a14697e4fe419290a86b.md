# StrictMono.not_bddAbove_range_of_wellFoundedLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73e3040d-419f-4c3b-5de4-a406ccd8e668",
  "kind": "theorem",
  "lexical_name": "StrictMono.not_bddAbove_range_of_wellFoundedLT",
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
  "slug": "strictmono-not-bddabove-range-of-wellfoundedlt--e4f8a14697e4fe419290a86b",
  "source": {
    "blob": "32201738e61dc8191c04d727e57ca02afc375394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f8a14697e4fe419290a86bebb6aeabd5299d0cfb1ea2b12de08c41887e8d07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e3040d-419f-4c3b-5de4-a406ccd8e668`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictMono.not_bddAbove_range_of_wellFoundedLT {f : β → β} [WellFoundedLT β] [NoMaxOrder β]
    (hf : StrictMono f) : ¬ BddAbove (Set.range f) := by
  rintro ⟨a, ha⟩
  obtain ⟨b, hb⟩ := exists_gt a
  exact ((hf.le_apply.trans_lt (hf hb)).trans_le <| ha (Set.mem_range_self _)).false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32201738e61dc8191c04d727e57ca02afc375394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
