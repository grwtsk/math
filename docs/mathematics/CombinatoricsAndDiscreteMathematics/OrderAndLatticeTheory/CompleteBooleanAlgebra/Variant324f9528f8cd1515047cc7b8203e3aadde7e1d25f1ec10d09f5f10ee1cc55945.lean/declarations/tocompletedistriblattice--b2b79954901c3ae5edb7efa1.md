# toCompleteDistribLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e8afb15-c3f6-7622-cb66-ec56c11d44b8",
  "kind": "theorem",
  "lexical_name": "toCompleteDistribLattice",
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
  "slug": "tocompletedistriblattice--b2b79954901c3ae5edb7efa1",
  "source": {
    "blob": "72b9082d728256f9a78510b35272b52181d5d445",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2b79954901c3ae5edb7efa1517bd8be775215639e86c9b3bf5b75d55cd9a481",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e8afb15-c3f6-7622-cb66-ec56c11d44b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toCompleteDistribLattice [CompleteLattice α] (minAx : MinimalAxioms α) :
    CompleteDistribLattice.MinimalAxioms α where
  inf_sSup_le_iSup_inf a s := by
    calc
      _ = ⨅ i : ULift.{u} Bool, ⨆ j : match i with | .up true => PUnit.{u + 1} | .up false => s,
          match i with
          | .up true => a
          | .up false => j := by simp [sSup_eq_iSup', iSup_unique, iInf_bool_eq]
      _ ≤ _ := by
        simp only [minAx.iInf_iSup_eq, iInf_ulift, iInf_bool_eq, iSup_le_iff]
        exact fun x ↦ le_biSup _ (x (.up false)).2
  iInf_sup_le_sup_sInf a s := by
    calc
      _ ≤ ⨆ i : ULift.{u} Bool, ⨅ j : match i with | .up true => PUnit.{u + 1} | .up false => s,
          match i with
          | .up true => a
          | .up false => j := by
        simp only [minAx.iSup_iInf_eq, iSup_ulift, iSup_bool_eq, le_iInf_iff]
        exact fun x ↦ biInf_le _ (x (.up false)).2
      _ = _ := by simp [sInf_eq_iInf', iInf_unique, iSup_bool_eq]

/-- The `CompletelyDistribLattice.MinimalAxioms` element corresponding to a frame. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteBooleanAlgebra/Variant324f9528f8cd1515047cc7b8203e3aadde7e1d25f1ec10d09f5f10ee1cc55945.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b9082d728256f9a78510b35272b52181d5d445` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
