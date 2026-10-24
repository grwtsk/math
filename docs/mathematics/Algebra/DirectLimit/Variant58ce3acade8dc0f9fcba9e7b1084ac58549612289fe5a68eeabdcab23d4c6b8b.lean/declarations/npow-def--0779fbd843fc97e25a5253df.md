# npow_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62c9f03f-7ffd-1244-36f6-cdf7997d67d6",
  "kind": "theorem",
  "lexical_name": "npow_def",
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
  "slug": "npow-def--0779fbd843fc97e25a5253df",
  "source": {
    "blob": "0594ee4303d0d4e46f9364056f572e4fbb72f8c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 230,
    "path": "GRWTSK/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0779fbd843fc97e25a5253df5ed040d9783c03f3a44da8b51ca0e342aff91370",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62c9f03f-7ffd-1244-36f6-cdf7997d67d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem npow_def (i x) (n : ℕ) : ⟦⟨i, x⟩⟧ ^ n = (⟦⟨i, x ^ n⟩⟧ : DirectLimit G f) :=
  rfl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant58ce3acade8dc0f9fcba9e7b1084ac58549612289fe5a68eeabdcab23d4c6b8b.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0594ee4303d0d4e46f9364056f572e4fbb72f8c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
