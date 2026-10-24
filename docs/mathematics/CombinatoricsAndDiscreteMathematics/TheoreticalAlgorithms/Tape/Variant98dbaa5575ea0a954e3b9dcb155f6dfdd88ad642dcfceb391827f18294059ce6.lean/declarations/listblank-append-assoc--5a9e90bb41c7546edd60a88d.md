# ListBlank.append_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eda96fe-fd78-c28a-42f5-92d8429dcb1d",
  "kind": "theorem",
  "lexical_name": "ListBlank.append_assoc",
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
  "slug": "listblank-append-assoc--5a9e90bb41c7546edd60a88d",
  "source": {
    "blob": "3e303b73e744f4202343c1b6e3bb38d56d17c346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 377,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a9e90bb41c7546edd60a88dc5630ee05f6f45d710e1c1290325383b647b3106",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eda96fe-fd78-c28a-42f5-92d8429dcb1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ListBlank.append_assoc {Γ} [Inhabited Γ] (l₁ l₂ : List Γ) (l₃ : ListBlank Γ) :
    ListBlank.append (l₁ ++ l₂) l₃ = ListBlank.append l₁ (ListBlank.append l₂ l₃) := by
  refine l₃.inductionOn fun l ↦ ?_
  -- Porting note: Added `suffices` to get `simp` to work.
  suffices append (l₁ ++ l₂) (mk l) = append l₁ (append l₂ (mk l)) by exact this
  simp only [ListBlank.append_mk, List.append_assoc]

/-- The `flatMap` function on lists is well defined on `ListBlank`s provided that the default
element is sent to a sequence of default elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e303b73e744f4202343c1b6e3bb38d56d17c346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
