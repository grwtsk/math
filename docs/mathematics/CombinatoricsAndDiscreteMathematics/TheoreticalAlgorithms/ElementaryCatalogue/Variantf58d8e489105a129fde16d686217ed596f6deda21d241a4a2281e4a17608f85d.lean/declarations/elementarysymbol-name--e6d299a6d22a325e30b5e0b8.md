# ElementarySymbol.name

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75925d0ecf023adb19d6f1a3cef79ac7a2011f99db2bfdd92a363ebaa3eb2dd5",
  "kind": "def",
  "lexical_name": "ElementarySymbol.name",
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
  "slug": "elementarysymbol-name--e6d299a6d22a325e30b5e0b8",
  "source": {
    "blob": "465299540d5a33ecc2b813bd075b399cf1a008a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d299a6d22a325e30b5e0b80f46b5c6683890a6d927438a935c9135cedb2855",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75925d0ecf023adb19d6f1a3cef79ac7a2011f99db2bfdd92a363ebaa3eb2dd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ElementarySymbol.name : ElementarySymbol -> String
  | .one => "one"
  | .var => "var"
  | .neg => "neg"
  | .inv => "inv"
  | .add => "add"
  | .sub => "sub"
  | .mul => "mul"
  | .div => "div"
  | .pow => "pow"
  | .exp => "exp"
  | .log => "log"
  | .sqrt => "sqrt"
  | .sin => "sin"
  | .cos => "cos"
  | .tan => "tan"
  | .pi => "pi"
  | .e => "e"
  | .I => "I"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ElementaryCatalogue/Variantf58d8e489105a129fde16d686217ed596f6deda21d241a4a2281e4a17608f85d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465299540d5a33ecc2b813bd075b399cf1a008a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
