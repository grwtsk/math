# isOpen_re_lt_EReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:870c1cde-0a2a-6c16-9b0b-293f72159a9d",
  "kind": "lemma",
  "lexical_name": "isOpen_re_lt_EReal",
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
  "slug": "isopen-re-lt-ereal--c7f59bcabb138ba362d7f660",
  "source": {
    "blob": "e6c5ca6a015a30323a83663406dc3f9e343b92e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f59bcabb138ba362d7f6609affb8ef33ca2062bea4c378b94fa0eb6deeeb9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:870c1cde-0a2a-6c16-9b0b-293f72159a9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_re_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.re < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_re) continuous_const

/-- An open right half-plane (with boundary real part given by an `EReal`) is an open set
in the complex plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HalfPlane/Variant3cc62577a61bdcf7d06a79915f71ddf0d080a62f27d644e427751cd81dda747e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6c5ca6a015a30323a83663406dc3f9e343b92e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
