# Prod.instZeroLEOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d45acb70609c0ab40ebaeaae2cc5b2fb9f2a1b58e3264a806d3031fd1c2c7dec",
  "kind": "instance",
  "lexical_name": "Prod.instZeroLEOneClass",
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
  "slug": "prod-instzeroleoneclass--ede3b1a2de3ac8688a8f4bc2",
  "source": {
    "blob": "c9d4e15447f0287b89cb7df60fc974f1aa524bb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 37,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ede3b1a2de3ac8688a8f4bc296ad84f03afca4235d438c7ca1c8581cf15882e0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d45acb70609c0ab40ebaeaae2cc5b2fb9f2a1b58e3264a806d3031fd1c2c7dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instZeroLEOneClass {R S : Type*} [Zero R] [One R] [LE R] [ZeroLEOneClass R]
    [Zero S] [One S] [LE S] [ZeroLEOneClass S] : ZeroLEOneClass (R × S) :=
  ⟨⟨zero_le_one, zero_le_one⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ZeroLEOne/Variant15653df2fdf13d454ac2448fec47c319379b61b60624493962631de8f0c7fa3f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d4e15447f0287b89cb7df60fc974f1aa524bb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
