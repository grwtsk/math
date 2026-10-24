# bernstein_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc452bf78ac60be1ad209a732b45faa15e973e9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ba5a4da-8072-4a65-0952-07d61a032e82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32b37094-0e9b-e17c-930f-8264c82825b3",
  "kind": "theorem",
  "lexical_name": "bernstein_one",
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
  "slug": "bernstein-one--e4cc73a35ec28acd6ed7dab6",
  "source": {
    "blob": "cc452bf78ac60be1ad209a732b45faa15e973e9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4cc73a35ec28acd6ed7dab69126c91969e37c3c294f53fc781ff53bb4397206",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b37094-0e9b-e17c-930f-8264c82825b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernstein_one (degree : ℕ) (i : Fin (degree + 1)) :
    bernstein degree i 1 = if i = Fin.last degree then 1 else 0 := by
  by_cases hi : i = Fin.last degree
  · subst i
    simp [bernstein]
  · have hval : i.1 ≠ degree := fun h => hi (Fin.ext h)
    have hlt : i.1 < degree := lt_of_le_of_ne i.is_le hval
    have hsub : degree - i.1 ≠ 0 := Nat.ne_of_gt (Nat.sub_pos_of_lt hlt)
    simp [bernstein, hi, hsub]

/-- Bernstein coordinates reverse when the parameter is reflected. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variantfac087cbef46917c7063edf210c7559393ea57050f97a36a895673ff78790864.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc452bf78ac60be1ad209a732b45faa15e973e9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
