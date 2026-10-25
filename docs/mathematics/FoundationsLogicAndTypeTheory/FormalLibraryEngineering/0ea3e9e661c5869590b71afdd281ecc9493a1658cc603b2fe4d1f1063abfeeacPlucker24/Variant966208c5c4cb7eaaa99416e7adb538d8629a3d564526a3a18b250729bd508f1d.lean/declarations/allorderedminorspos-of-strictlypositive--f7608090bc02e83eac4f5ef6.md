# allOrderedMinorsPos_of_strictlyPositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21825bfd-5d28-c415-19b3-8e36d61e7648",
  "kind": "theorem",
  "lexical_name": "allOrderedMinorsPos_of_strictlyPositive",
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
  "slug": "allorderedminorspos-of-strictlypositive--f7608090bc02e83eac4f5ef6",
  "source": {
    "blob": "8c83fdb803871fc24f0fdcceb1f93167d8ac6511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant966208c5c4cb7eaaa99416e7adb538d8629a3d564526a3a18b250729bd508f1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7608090bc02e83eac4f5ef65d882588528b6c25169f88436d5a6529640454a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant966208c5c4cb7eaaa99416e7adb538d8629a3d564526a3a18b250729bd508f1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21825bfd-5d28-c415-19b3-8e36d61e7648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allOrderedMinorsPos_of_strictlyPositive
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : (ofMatrix A).StrictlyPositive) :
    AllOrderedMinorsPos A := by
  rcases h with ⟨h12, h13, h14, h23, h24, h34⟩
  have hp : ∀ i j : Fin 4, i < j → 0 < minor₂ A i j := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [ofMatrix]
  intro I
  rw [orderedMinor_two]
  exact hp (I 0) (I 1) (I.strictMono (by decide))

/-- The analogous finite-to-ordered bridge on the nonnegative boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant966208c5c4cb7eaaa99416e7adb538d8629a3d564526a3a18b250729bd508f1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/0ea3e9e661c5869590b71afdd281ecc9493a1658cc603b2fe4d1f1063abfeeacPlucker24/Variant966208c5c4cb7eaaa99416e7adb538d8629a3d564526a3a18b250729bd508f1d.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c83fdb803871fc24f0fdcceb1f93167d8ac6511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
