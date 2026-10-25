# ulower_down

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f39027f4-0907-0c54-1694-086df1df35dc",
  "kind": "theorem",
  "lexical_name": "ulower_down",
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
  "slug": "ulower-down--4774c93d1bb3b1a766ad67e7",
  "source": {
    "blob": "aa29e01f0d1a686ffad25e687375d46bcadcfeb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1178,
    "line": 1175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4774c93d1bb3b1a766ad67e79218aad627175c7eed6c62c3976e72af91ff6b71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f39027f4-0907-0c54-1694-086df1df35dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1175–1178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ulower_down : Primrec (ULower.down : α → ULower α) :=
  letI : ∀ a, Decidable (a ∈ Set.range (encode : α → ℕ)) := decidableRangeEncode _
  subtype_mk .encode

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variant0abfdccdc49d8d69ba6fd7792ebd5da17fa7a11fad7a19067ab990ed786c96d7.lean#L1175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa29e01f0d1a686ffad25e687375d46bcadcfeb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
