# defaultExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d13bada5e9612e996eb6b6b94d0b49f0475887f98373da6155fbae7f6cedadda",
  "kind": "def",
  "lexical_name": "defaultExpansion",
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
  "slug": "defaultexpansion--cc820c7508266efa47c0221e",
  "source": {
    "blob": "055246139aa8e6d862bde76e4e4578893fbb4bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc820c7508266efa47c0221edfefc66a47aa6f502667c5fb95dd22474d8a7ae9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d13bada5e9612e996eb6b6b94d0b49f0475887f98373da6155fbae7f6cedadda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def defaultExpansion (ϕ : L →ᴸ L')
    [∀ (n) (f : L'.Functions n), Decidable (f ∈ Set.range fun f : L.Functions n => onFunction ϕ f)]
    [∀ (n) (r : L'.Relations n), Decidable (r ∈ Set.range fun r : L.Relations n => onRelation ϕ r)]
    (M : Type*) [Inhabited M] [L.Structure M] : L'.Structure M where
  funMap {n} f xs :=
    if h' : f ∈ Set.range fun f : L.Functions n => onFunction ϕ f then funMap h'.choose xs
    else default
  RelMap {n} r xs :=
    if h' : r ∈ Set.range fun r : L.Relations n => onRelation ϕ r then RelMap h'.choose xs
    else default

/-- A language homomorphism is an expansion on a structure if it commutes with the interpretation of
all symbols on that structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `055246139aa8e6d862bde76e4e4578893fbb4bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
