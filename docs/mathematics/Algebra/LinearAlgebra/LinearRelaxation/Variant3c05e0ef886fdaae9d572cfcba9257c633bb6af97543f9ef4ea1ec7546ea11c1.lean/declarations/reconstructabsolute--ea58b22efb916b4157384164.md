# reconstructAbsolute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f3469a28feb2c63fe84e4384b67cfba09e13449d849bdee859d585aa11dcae8",
  "kind": "def",
  "lexical_name": "reconstructAbsolute",
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
  "slug": "reconstructabsolute--ea58b22efb916b4157384164",
  "source": {
    "blob": "b4d035c5b8aff4629e939c73c649ec64a4b817cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea58b22efb916b4157384164c4a4cad744bece6624525df035578ab2b0c3173c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f3469a28feb2c63fe84e4384b67cfba09e13449d849bdee859d585aa11dcae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reconstructAbsolute (reference deviation : Signal) : Signal :=
  reference + deviation

end FrozenMetricLinearRelaxation

/--
A continuous interpolation is a separate proof-bearing capability.  Merely
having finite samples does not manufacture a continuous path; an instance must
supply both sample times and agreement at every sample.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearRelaxation/Variant3c05e0ef886fdaae9d572cfcba9257c633bb6af97543f9ef4ea1ec7546ea11c1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d035c5b8aff4629e939c73c649ec64a4b817cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
