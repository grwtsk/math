# Prod.isMax_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53bdeb89-7ee8-e109-d128-2f0ab1d051f1",
  "kind": "theorem",
  "lexical_name": "Prod.isMax_iff",
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
  "slug": "prod-ismax-iff--94b5904e01a58b62b0abfb32",
  "source": {
    "blob": "4ea0848ef8bc9051f774b74388badee3f10160e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 464,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b5904e01a58b62b0abfb328cdca03b0b05701f6dd65e58c7e42327301e01b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53bdeb89-7ee8-e109-d128-2f0ab1d051f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prod.isMax_iff : IsMax x ↔ IsMax x.1 ∧ IsMax x.2 :=
  ⟨fun hx => ⟨hx.fst, hx.snd⟩, fun h => h.1.prod_mk h.2⟩
#align prod.is_max_iff Prod.isMax_iff

end Prod
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ea0848ef8bc9051f774b74388badee3f10160e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
