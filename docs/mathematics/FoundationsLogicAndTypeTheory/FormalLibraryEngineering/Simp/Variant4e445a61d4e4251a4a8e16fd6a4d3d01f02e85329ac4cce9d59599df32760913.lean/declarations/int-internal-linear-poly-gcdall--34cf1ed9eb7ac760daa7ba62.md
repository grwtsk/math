# Int.Internal.Linear.Poly.gcdAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:440fec28f55de99f073292959dca49863b0aa5068150c146dc0dd7a91252bfc4",
  "kind": "def",
  "lexical_name": "Int.Internal.Linear.Poly.gcdAll",
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
  "slug": "int-internal-linear-poly-gcdall--34cf1ed9eb7ac760daa7ba62",
  "source": {
    "blob": "e9728356d55f1bcd9deec15ca1ce906f8befa72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34cf1ed9eb7ac760daa7ba627989d106414fab40526f2642c6194ccdda4e166a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:440fec28f55de99f073292959dca49863b0aa5068150c146dc0dd7a91252bfc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Int.Internal.Linear.Poly.gcdAll : Poly → Nat
  | .num k => k.natAbs
  | .add k _ p => go k.natAbs p
where
  go (k : Nat) (p : Poly) : Nat :=
    if k == 1 then k
    else match p with
      | .num k' => Nat.gcd k k'.natAbs
      | .add k' _ p => go (Nat.gcd k k'.natAbs) p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4e445a61d4e4251a4a8e16fd6a4d3d01f02e85329ac4cce9d59599df32760913.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9728356d55f1bcd9deec15ca1ce906f8befa72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
