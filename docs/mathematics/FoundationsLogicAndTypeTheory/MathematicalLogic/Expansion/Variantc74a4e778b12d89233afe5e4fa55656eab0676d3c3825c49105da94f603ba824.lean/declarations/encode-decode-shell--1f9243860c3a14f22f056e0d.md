# encode_decode_shell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73df29a9-30c6-baa1-dcdc-069fb05abc44",
  "kind": "theorem",
  "lexical_name": "encode_decode_shell",
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
  "slug": "encode-decode-shell--1f9243860c3a14f22f056e0d",
  "source": {
    "blob": "9361562ec8aaae9b6b16a7edf18e0485a0a82019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f9243860c3a14f22f056e0d95f9efab3f80e1925d50ab056a5cd5600af59093",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73df29a9-30c6-baa1-dcdc-069fb05abc44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_decode_shell {s : GridShape} {k : Nat}
    (E : SpectralShellEncoded s k) :
    encodeShell (decodeShell E) = E := by
  classical
  apply SpectralShellEncoded.ext
  · ext c q
    simp [decodeShell, Expansion.centerCell_isCenter, Expansion.centerOf_centerCell]
  · ext c q
    have hs : ¬ Expansion.IsCenterCell c.1 := c.2
    simp [decodeShell, hs]

end Spectral
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Expansion/Variantc74a4e778b12d89233afe5e4fa55656eab0676d3c3825c49105da94f603ba824.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9361562ec8aaae9b6b16a7edf18e0485a0a82019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
