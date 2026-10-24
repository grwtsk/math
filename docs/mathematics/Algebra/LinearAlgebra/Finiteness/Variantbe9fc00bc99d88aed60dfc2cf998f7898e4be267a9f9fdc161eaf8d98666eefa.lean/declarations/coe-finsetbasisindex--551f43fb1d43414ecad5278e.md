# coe_finsetBasisIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79c29d85-469b-edaf-70da-a3da101f537f",
  "kind": "theorem",
  "lexical_name": "coe_finsetBasisIndex",
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
  "slug": "coe-finsetbasisindex--551f43fb1d43414ecad5278e",
  "source": {
    "blob": "3c683bf4884ab301c257e353b58f4deb761a4728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551f43fb1d43414ecad5278ecf68ab2177673ead78f57480738d48c342bbafaf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79c29d85-469b-edaf-70da-a3da101f537f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_finsetBasisIndex [IsNoetherian K V] :
    (↑(finsetBasisIndex K V) : Set V) = Basis.ofVectorSpaceIndex K V :=
  Set.Finite.coe_toFinset _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantbe9fc00bc99d88aed60dfc2cf998f7898e4be267a9f9fdc161eaf8d98666eefa.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c683bf4884ab301c257e353b58f4deb761a4728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
