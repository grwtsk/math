# Int8.ofInt_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c5d523-5a7a-85f7-f402-09622197a48d",
  "kind": "theorem",
  "lexical_name": "Int8.ofInt_add",
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
  "slug": "int8-ofint-add--0a9da916525b163f22faacff",
  "source": {
    "blob": "0a76608c8bd1ba88ce1de70aa16b43d67932f802",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2189,
    "line": 2188,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a9da916525b163f22faacffce0ec942a993df57bd9f1b94e298d6d18587ec12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c5d523-5a7a-85f7-f402-09622197a48d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2188–2189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Int8.ofInt_add (a b : Int) : Int8.ofInt (a + b) = Int8.ofInt a + Int8.ofInt b := by
  simp [Int8.ofInt_eq_iff_bmod_eq_toInt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantd14a6751184bcd1f64e652e1fcdd3454c5126490e16306017dce12f6662a230a.lean#L2188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a76608c8bd1ba88ce1de70aa16b43d67932f802` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
