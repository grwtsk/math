# unchecked_authority_refuses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1851e34e-99c6-962f-7f97-1c8917fc452f",
  "kind": "theorem",
  "lexical_name": "unchecked_authority_refuses",
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
  "slug": "unchecked-authority-refuses--9069d9714e79ff23d2c0dfb2",
  "source": {
    "blob": "1157459177208593b697ece63aabdadcd691790e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616/Variantb7d7b275c3d6f6a492c6318eb70e00adcdb8b1137a4c5986f1499cad78e7db0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9069d9714e79ff23d2c0dfb25f2bb8068ecbdbb706b4918bffbbef0e0bfa1f5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616/Variantb7d7b275c3d6f6a492c6318eb70e00adcdb8b1137a4c5986f1499cad78e7db0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1851e34e-99c6-962f-7f97-1c8917fc452f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unchecked_authority_refuses
    (v : MedoidMoveValidator)
    (h : v.checkedAuthority = false) :
    accepts v = false := by
  unfold accepts
  rw [h]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616/Variantb7d7b275c3d6f6a492c6318eb70e00adcdb8b1137a4c5986f1499cad78e7db0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616/Variantb7d7b275c3d6f6a492c6318eb70e00adcdb8b1137a4c5986f1499cad78e7db0d.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1157459177208593b697ece63aabdadcd691790e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
