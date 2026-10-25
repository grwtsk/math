# intersperse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99b6b6f499d66f2ab42653b79f441cf27cd322694ab6205928016c30e16cd3ab",
  "kind": "def",
  "lexical_name": "intersperse",
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
  "slug": "intersperse--13f1256cb0e80af9a00ca1c3",
  "source": {
    "blob": "3e18afc9357aa3c4b8984eff5bfb18e439717a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 254,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13f1256cb0e80af9a00ca1c32a84449a6bd5e5711d16daaead862323220ba139",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99b6b6f499d66f2ab42653b79f441cf27cd322694ab6205928016c30e16cd3ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intersperse (selector₁ selector₂ : Selector) (ratio : Float := 0.5) : Selector := fun g c => do
  let ratio := min 1.0 (max 0.0 ratio)
  let suggestions₁ ← selector₁ g c
  let suggestions₂ ← selector₂ g c

  let mut result := #[]
  let mut i₁ := 0
  let mut i₂ := 0
  let mut count₁ := 0.0
  let mut count₂ := 0.0

  -- Intersperse while both arrays have elements
  while h : i₁ < suggestions₁.size ∧ i₂ < suggestions₂.size ∧ result.size < c.maxSuggestions do
    -- Take from whichever selector keeps the running fraction of `selector₁`
    -- contributions closest to `ratio`. Comparing the two candidate next states
    -- (rather than the achieved fraction) stays accurate at the endpoints, so
    -- `ratio = 1` draws entirely from `selector₁` and `ratio = 0` entirely from
    -- `selector₂` while both have results.
    let total := count₁ + count₂
    let errIfTake₁ := Float.abs ((count₁ + 1) / (total + 1) - ratio)
    let errIfTake₂ := Float.abs (count₁ / (total + 1) - ratio)
    if errIfTake₁ <= errIfTake₂ then
      result := result.push suggestions₁[i₁]
      i₁ := i₁ + 1
      count₁ := count₁ + 1
    else
      result := result.push suggestions₂[i₂]
      i₂ := i₂ + 1
      count₂ := count₂ + 1

  -- Append remaining elements from selector₁
  while h : i₁ < suggestions₁.size ∧ result.size < c.maxSuggestions do
    result := result.push suggestions₁[i₁]
    i₁ := i₁ + 1

  -- Append remaining elements from selector₂
  while h : i₂ < suggestions₂.size ∧ result.size < c.maxSuggestions do
    result := result.push suggestions₂[i₂]
    i₂ := i₂ + 1

  return result

end Selector

section DenyList

/--
Premises from a module whose name has one of the following components are not retrieved.

Use `run_cmd modifyEnv fun env => moduleDenyListExt.addEntry env module` to add a module to the deny list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2070e1ce53687fe97d55b2d6a8bbac42e1589022f4bfc16c99b5ef01589c9f94.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e18afc9357aa3c4b8984eff5bfb18e439717a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
