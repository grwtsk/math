# bits_append_bit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c9b0da-e311-7609-f781-ee6ee4c3820f",
  "kind": "theorem",
  "lexical_name": "bits_append_bit",
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
  "slug": "bits-append-bit--07746e55e7a8e0e1bb179061",
  "source": {
    "blob": "35c12bd1a77d162124ea8d50d799a6cdd9c73002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07746e55e7a8e0e1bb179061f805f90ef2332bb992fe14abd3934af32f8c688a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c9b0da-e311-7609-f781-ee6ee4c3820f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bits_append_bit (n : ℕ) (b : Bool) (hn : n = 0 → b = true) :
    (bit b n).bits = b :: n.bits := by
  rw [Nat.bits, binaryRec_eq']
  simpa
#align nat.bits_append_bit Nat.bits_append_bit

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bits/Varianta6805914084cb39e6d9a19e55b6102e41443a16c27c01634f72ecd9801d79e2d.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c12bd1a77d162124ea8d50d799a6cdd9c73002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
