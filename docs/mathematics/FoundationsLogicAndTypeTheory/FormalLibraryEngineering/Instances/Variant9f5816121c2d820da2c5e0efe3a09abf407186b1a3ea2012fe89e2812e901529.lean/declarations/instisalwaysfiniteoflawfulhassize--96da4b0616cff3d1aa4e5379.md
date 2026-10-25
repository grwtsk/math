# instIsAlwaysFiniteOfLawfulHasSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beb6abfb9229369beb00f5a170dcf0ca88c89a70c4cb2e253adedb9863a5aaf1",
  "kind": "instance",
  "lexical_name": "instIsAlwaysFiniteOfLawfulHasSize",
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
  "slug": "instisalwaysfiniteoflawfulhassize--96da4b0616cff3d1aa4e5379",
  "source": {
    "blob": "4926f7a9eeeae02cd2c1b903b3f298b61b13ebd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9f5816121c2d820da2c5e0efe3a09abf407186b1a3ea2012fe89e2812e901529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96da4b0616cff3d1aa4e53790803b881323101141922145f7858462189fc80d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9f5816121c2d820da2c5e0efe3a09abf407186b1a3ea2012fe89e2812e901529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beb6abfb9229369beb00f5a170dcf0ca88c89a70c4cb2e253adedb9863a5aaf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsAlwaysFiniteOfLawfulHasSize [LT α] [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] [HasSize α] [LawfulHasSize α] :
    IsAlwaysFinite α where
  finite lo := by
    refine ⟨HasSize.size lo, ?_⟩
    generalize hn : HasSize.size lo = n
    induction n generalizing lo with
    | zero =>
      simp [Nat.ne_of_gt size_pos] at hn
    | succ =>
      rename_i n ih
      rw [succMany?_add_one_eq_succ?_bind_succMany?]
      match hs : succ? lo with
      | none => simp
      | some a =>
        simp only [Option.bind_some]
        apply ih
        rw [LawfulHasSize.size_eq_succ_of_succ?_eq_some (h := hs)] at hn
        omega

end Rxi

end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9f5816121c2d820da2c5e0efe3a09abf407186b1a3ea2012fe89e2812e901529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant9f5816121c2d820da2c5e0efe3a09abf407186b1a3ea2012fe89e2812e901529.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4926f7a9eeeae02cd2c1b903b3f298b61b13ebd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
