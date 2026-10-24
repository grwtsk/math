# constantBoolPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b522135ecebe6cdee0a7ab240a91dad0c358430a2ec7f20b9542a310a12fd44",
  "kind": "def",
  "lexical_name": "constantBoolPresheaf",
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
  "slug": "constantboolpresheaf--8f05e0c06fa74fa8ea28b100",
  "source": {
    "blob": "a690579855b97426de217152128319da7338a383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variant2d89bd3c0141f8061e34ffc48b51614093fdcaf8fb791756acd07d829ea6ebd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f05e0c06fa74fa8ea28b100416c55253134a60787c72f3e67feb2c36c6f7a3c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Examples/Variant2d89bd3c0141f8061e34ffc48b51614093fdcaf8fb791756acd07d829ea6ebd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b522135ecebe6cdee0a7ab240a91dad0c358430a2ec7f20b9542a310a12fd44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantBoolPresheaf : FiniteWorldModelPresheaf boolEqualitySite where
  Section := fun _ ↦ Bool
  restrict := fun _ value ↦ value
  restrict_id := by intros; rfl
  restrict_comp := by intros; rfl

/-- Complete descent for the constant fixture. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Examples/Variant2d89bd3c0141f8061e34ffc48b51614093fdcaf8fb791756acd07d829ea6ebd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Examples/Variant2d89bd3c0141f8061e34ffc48b51614093fdcaf8fb791756acd07d829ea6ebd1.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a690579855b97426de217152128319da7338a383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
