# ascPochhammer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd15168e8d5c6c7946a8fa432d7ef3783a1550b7956889f74c34b56ab6d65740",
  "kind": "def",
  "lexical_name": "ascPochhammer",
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
  "slug": "ascpochhammer--ff1e852b17c2e330802a956b",
  "source": {
    "blob": "b3e72f1bfd6c728bee050e7cda463456adced908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff1e852b17c2e330802a956b97e71ef3c190a5db6b2c6e74fc3da6743ff2037c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd15168e8d5c6c7946a8fa432d7ef3783a1550b7956889f74c34b56ab6d65740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ascPochhammer : ℕ → S[X]
  | 0 => 1
  | n + 1 => X * (ascPochhammer n).comp (X + 1)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant6be071fba3593fd29f128df0f5cfb234dac9d677cfcc63e8c67bf8d57a1ff0aa.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3e72f1bfd6c728bee050e7cda463456adced908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
