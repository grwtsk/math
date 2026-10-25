# var_apps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c01b887c-16b2-f7c9-af1e-63372b6c480e",
  "kind": "theorem",
  "lexical_name": "var_apps",
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
  "slug": "var-apps--9e79ed734bca5bf6b147ae22",
  "source": {
    "blob": "ba85b83b99a40044ee429d8a1455adf5d6827d60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 782,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e79ed734bca5bf6b147ae22c1816de448e5a25297e7cad78facf3cdb349c5d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c01b887c-16b2-f7c9-af1e-63372b6c480e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 782–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem var_apps (n : Nat) {as : List (Expr S)} (has : StronglyNormalizingArgs as) :
    StronglyNormalizing ((Expr.var n : Expr S).apps as) := by
  induction has with
  | intro as has ih =>
      apply Acc.intro
      intro N hN
      obtain ⟨f, hf, rfl⟩ | ⟨bs, hbs, rfl⟩ :=
        hN.apps_inv (by intro A b heq; cases heq)
      · cases hf
      · exact ih _ hbs

/-- The source's head-expansion lemma, with any finite argument spine.
The proof uses nested accessibility induction, not a raised recursion budget
or an assumed maximal reduction height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantd179bb5d04446aa8f44a5c5ff2764540825a28e97f28f955c8216114bfe0ce4d.lean#L782).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba85b83b99a40044ee429d8a1455adf5d6827d60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
