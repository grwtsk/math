# oneHotSourceState_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b2b987-d040-0ffa-b360-7bdbe157bcf7",
  "kind": "theorem",
  "lexical_name": "oneHotSourceState_injective",
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
  "slug": "onehotsourcestate-injective--8451d3903b6ea197d48a710a",
  "source": {
    "blob": "381d17ae899b3f77618839ce18d4fe09b7f02048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantca8964fb9c4e57f531d8be42bcaa7e60d6562aa9386d170b3bb73b584339ecbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8451d3903b6ea197d48a710a6637591c97789bc530bc09603a65de8cfa25bbd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantca8964fb9c4e57f531d8be42bcaa7e60d6562aa9386d170b3bb73b584339ecbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b2b987-d040-0ffa-b360-7bdbe157bcf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneHotSourceState_injective : Function.Injective oneHotSourceState := by
  intro left right equal
  apply CanonicalSource.code_injective
  by_contra different
  have atLeft := congrFun equal left.code
  simp [oneHotSourceState, different] at atLeft

/--
Exact image decoder for `oneHotSourceState`.  Decoding is noncomputable because
membership in the unrestricted function-space image is not decidable; the
round-trip laws are nevertheless kernel checked.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantca8964fb9c4e57f531d8be42bcaa7e60d6562aa9386d170b3bb73b584339ecbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantca8964fb9c4e57f531d8be42bcaa7e60d6562aa9386d170b3bb73b584339ecbf.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381d17ae899b3f77618839ce18d4fe09b7f02048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
