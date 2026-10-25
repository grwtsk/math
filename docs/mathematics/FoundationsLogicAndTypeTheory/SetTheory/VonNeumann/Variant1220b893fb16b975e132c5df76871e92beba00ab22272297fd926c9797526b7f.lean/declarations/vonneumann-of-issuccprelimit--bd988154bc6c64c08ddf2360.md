# vonNeumann_of_isSuccPrelimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b9b47d1-15f9-d350-c861-01bc42966ef4",
  "kind": "theorem",
  "lexical_name": "vonNeumann_of_isSuccPrelimit",
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
  "slug": "vonneumann-of-issuccprelimit--bd988154bc6c64c08ddf2360",
  "source": {
    "blob": "385c2ed4d4426281af33a1078f28ffbe7ad17384",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 135,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd988154bc6c64c08ddf236076fdc1a45bc2bb4c2b7701c0ed13100223e31de9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b9b47d1-15f9-d350-c861-01bc42966ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonNeumann_of_isSuccPrelimit (h : IsSuccPrelimit o) :
    V_ o = ⋃ a : Set.Iio o, vonNeumann a :=
  ext fun z ↦ by simp [mem_vonNeumann, h.lt_iff_nonempty_Ioo (b := z.rank), Set.Nonempty, and_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `385c2ed4d4426281af33a1078f28ffbe7ad17384` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
