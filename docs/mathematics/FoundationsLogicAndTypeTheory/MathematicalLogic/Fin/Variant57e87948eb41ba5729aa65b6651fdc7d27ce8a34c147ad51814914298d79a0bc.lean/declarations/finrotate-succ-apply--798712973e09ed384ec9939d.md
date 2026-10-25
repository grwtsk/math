# finRotate_succ_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dedbad5-e450-03ac-df4a-8ec3cbcb31a4",
  "kind": "theorem",
  "lexical_name": "finRotate_succ_apply",
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
  "slug": "finrotate-succ-apply--798712973e09ed384ec9939d",
  "source": {
    "blob": "296d66aeeb76eee2261115d14f3006bcff607c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798712973e09ed384ec9939d18d42e984f19440fbdcfa6ba04e383497b20abd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dedbad5-e450-03ac-df4a-8ec3cbcb31a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem finRotate_succ_apply (i : Fin (n + 1)) : finRotate (n + 1) i = i + 1 := by
  cases n
  · exact @Subsingleton.elim (Fin 1) _ _ _
  rcases i.le_last.eq_or_lt with (rfl | h)
  · simp [finRotate_last]
  · cases i
    simp only [Fin.lt_iff_val_lt_val, Fin.val_last, Fin.val_mk] at h
    simp [finRotate_of_lt h, Fin.eq_iff_veq, Fin.add_def, Nat.mod_eq_of_lt (Nat.succ_lt_succ h)]
#align fin_rotate_succ_apply finRotate_succ_apply

-- porting note: was a @[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant57e87948eb41ba5729aa65b6651fdc7d27ce8a34c147ad51814914298d79a0bc.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `296d66aeeb76eee2261115d14f3006bcff607c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
