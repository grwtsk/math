# subsingleton_rat_module

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a5aa2c9c2a9f01a46be87871845f455304a30208747116086eaba45d7b3853c",
  "kind": "instance",
  "lexical_name": "subsingleton_rat_module",
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
  "slug": "subsingleton-rat-module--8c73e0cf03d2ba4c46ab0b5e",
  "source": {
    "blob": "d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c73e0cf03d2ba4c46ab0b5e9e39295f9396ef3840de1292d0ce3fb3e1eec8d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a5aa2c9c2a9f01a46be87871845f455304a30208747116086eaba45d7b3853c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_rat_module (E : Type*) [AddCommGroup E] : Subsingleton (Module ℚ E) :=
  ⟨fun P Q => (Module.ext' P Q) fun r x =>
    map_rat_smul (_instM := P) (_instM₂ := Q) (AddMonoidHom.id E) r x⟩

/-- If `E` is a vector space over two division semirings `R` and `S`, then scalar multiplications
agree on non-negative rational numbers in `R` and `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
