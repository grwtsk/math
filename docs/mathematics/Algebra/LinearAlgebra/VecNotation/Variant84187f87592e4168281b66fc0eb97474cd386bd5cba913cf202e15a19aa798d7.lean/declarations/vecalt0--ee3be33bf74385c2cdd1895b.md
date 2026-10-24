# vecAlt0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d33e1c15253d6c3a95ab7fe5b710962eb57c60fc64c8a7d0ae45be52c7b7c7b3",
  "kind": "def",
  "lexical_name": "vecAlt0",
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
  "slug": "vecalt0--ee3be33bf74385c2cdd1895b",
  "source": {
    "blob": "33154f6b9f4968e0860dadda4df25c9af010df88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 310,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee3be33bf74385c2cdd1895b048871ae0ff9913360a118e9f444ed415955cf3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d33e1c15253d6c3a95ab7fe5b710962eb57c60fc64c8a7d0ae45be52c7b7c7b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vecAlt0 (hm : m = n + n) (v : Fin m → α) (k : Fin n) : α :=
  v ⟨(k : ℕ) + k, hm.symm ▸ add_lt_add k.2 k.2⟩
#align matrix.vec_alt0 Matrix.vecAlt0

/-- `vecAlt1 v` gives a vector with half the length of `v`, with
only alternate elements (odd-numbered). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33154f6b9f4968e0860dadda4df25c9af010df88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
