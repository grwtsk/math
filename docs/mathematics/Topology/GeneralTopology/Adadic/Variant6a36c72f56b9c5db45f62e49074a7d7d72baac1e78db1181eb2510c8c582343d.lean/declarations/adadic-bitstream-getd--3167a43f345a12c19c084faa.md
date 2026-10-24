# Adadic.Bitstream.getD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf290986cf11c7187eafb75a39740a79b2809fbd1e74fc60bb1d9123e0f08859",
  "kind": "def",
  "lexical_name": "Adadic.Bitstream.getD",
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
  "slug": "adadic-bitstream-getd--3167a43f345a12c19c084faa",
  "source": {
    "blob": "a858bab49ee7120a65ba86195b1a184d896d4fe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3167a43f345a12c19c084faa709cc7589ec472323fc6c0965d715cd105d44798",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf290986cf11c7187eafb75a39740a79b2809fbd1e74fc60bb1d9123e0f08859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Adadic.Bitstream.getD : Adadic.Bitstream → Nat → Bool
  | [], _ => false
  | b :: _, 0 => b
  | _ :: bits, n + 1 => Adadic.Bitstream.getD bits n

/-- Serialize a frame into a canonical 7-bit bitstream. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adadic/Variant6a36c72f56b9c5db45f62e49074a7d7d72baac1e78db1181eb2510c8c582343d.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a858bab49ee7120a65ba86195b1a184d896d4fe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
