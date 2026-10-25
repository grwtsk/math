# renameBVarTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba3e13c640bc196bae30a9019316656a8cd3c625705e3ad70c9e85f400f0f1d0",
  "kind": "def",
  "lexical_name": "renameBVarTarget",
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
  "slug": "renamebvartarget--02c911d71e54b094e2e92310",
  "source": {
    "blob": "b4e883e14eb482804d157f174d4f9fdb63b26dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameBVar/Variantdffd7ae54242c2ebdb901397c47f2fc6cec27fc4996f7133588aedb8069bb25f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02c911d71e54b094e2e923108211a17ef0b7852261a3603843da758e4a4bed80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameBVar/Variantdffd7ae54242c2ebdb901397c47f2fc6cec27fc4996f7133588aedb8069bb25f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba3e13c640bc196bae30a9019316656a8cd3c625705e3ad70c9e85f400f0f1d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def renameBVarTarget (mvarId : MVarId) (old new : Name) : MetaM Unit :=
  modifyTarget mvarId fun e ↦ e.renameBVar old new

/--
* `rename_bvar old → new` renames all bound variables named `old` to `new` in the target.
* `rename_bvar old → new at h` does the same in hypothesis `h`.

```lean
example (P : ℕ → ℕ → Prop) (h : ∀ n, ∃ m, P n m) : ∀ l, ∃ m, P l m := by
  rename_bvar n → q at h -- h is now ∀ (q : ℕ), ∃ (m : ℕ), P q m,
  rename_bvar m → n -- target is now ∀ (l : ℕ), ∃ (n : ℕ), P k n,
  exact h -- Lean does not care about those bound variable names
```
Note: name clashes are resolved automatically.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameBVar/Variantdffd7ae54242c2ebdb901397c47f2fc6cec27fc4996f7133588aedb8069bb25f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameBVar/Variantdffd7ae54242c2ebdb901397c47f2fc6cec27fc4996f7133588aedb8069bb25f.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4e883e14eb482804d157f174d4f9fdb63b26dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
