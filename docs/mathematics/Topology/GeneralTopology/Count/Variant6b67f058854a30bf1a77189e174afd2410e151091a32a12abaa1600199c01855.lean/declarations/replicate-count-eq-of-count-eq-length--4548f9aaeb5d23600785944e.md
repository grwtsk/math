# replicate_count_eq_of_count_eq_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e6424ab-28dc-5397-2748-0ae1f0b75b22",
  "kind": "theorem",
  "lexical_name": "replicate_count_eq_of_count_eq_length",
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
  "slug": "replicate-count-eq-of-count-eq-length--4548f9aaeb5d23600785944e",
  "source": {
    "blob": "accad7a46e5390c05a2ccd917dee266166562af1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 393,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4548f9aaeb5d23600785944ec25e286f6d4b8fa703fdb25da622c4a468e6fc80",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e6424ab-28dc-5397-2748-0ae1f0b75b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem replicate_count_eq_of_count_eq_length {l : List α} (h : count a l = length l) :
    replicate (count a l) a = l :=
  (replicate_sublist_iff.mpr (Nat.le_refl _)).eq_of_length <| length_replicate.trans h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variant6b67f058854a30bf1a77189e174afd2410e151091a32a12abaa1600199c01855.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accad7a46e5390c05a2ccd917dee266166562af1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
