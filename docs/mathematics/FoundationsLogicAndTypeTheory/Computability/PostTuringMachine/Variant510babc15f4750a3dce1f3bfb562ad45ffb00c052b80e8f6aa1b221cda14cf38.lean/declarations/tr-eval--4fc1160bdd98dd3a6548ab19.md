# tr_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5f083eb-ee50-d94c-14a8-1758fb16c8a0",
  "kind": "theorem",
  "lexical_name": "tr_eval",
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
  "slug": "tr-eval--4fc1160bdd98dd3a6548ab19",
  "source": {
    "blob": "ff3c8d98086c1766a674afbe0dba144815751274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 775,
    "line": 766,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fc1160bdd98dd3a6548ab194932d7cf4cb879ceed3ab7931c7bedf5257fa62f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5f083eb-ee50-d94c-14a8-1758fb16c8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 766–775.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_eval [Inhabited Γ] (l : List Γ) : TM0.eval (tr M) l = TM1.eval M l :=
  (congr_arg _ (tr_eval' _ _ _ (tr_respects M) ⟨some _, _, _⟩)).trans
    (by
      rw [Part.map_eq_map, Part.map_map, TM1.eval]
      congr with ⟨⟩)

variable [Fintype σ]

/-- Given a finite set of accessible `Λ` machine states, there is a finite set of accessible
machine states in the target (even though the type `Λ'` is infinite). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variant510babc15f4750a3dce1f3bfb562ad45ffb00c052b80e8f6aa1b221cda14cf38.lean#L766).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3c8d98086c1766a674afbe0dba144815751274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
