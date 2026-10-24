# eq_cycleOf_of_mem_cycleFactorsFinset_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3380a6c1-7124-c9f4-4178-4fa7a084b368",
  "kind": "theorem",
  "lexical_name": "eq_cycleOf_of_mem_cycleFactorsFinset_iff",
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
  "slug": "eq-cycleof-of-mem-cyclefactorsfinset-iff--45ead4728595f1391fbe929b",
  "source": {
    "blob": "22bcdd88db207682520dfc42779dcca1dbf6b45a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 725,
    "path": "GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45ead4728595f1391fbe929b8455b97f7c58481871daedb8f1613332f7791c89",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3380a6c1-7124-c9f4-4178-4fa7a084b368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_cycleOf_of_mem_cycleFactorsFinset_iff
    (g c : Perm α) (hc : c ∈ g.cycleFactorsFinset) (x : α) :
    c = g.cycleOf x ↔ x ∈ c.support := by
  refine ⟨?_, (cycle_is_cycleOf · hc)⟩
  rintro rfl
  rw [mem_support, cycleOf_apply_self, ne_eq, ← cycleOf_eq_one_iff]
  exact (mem_cycleFactorsFinset_iff.mp hc).left.ne_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Factors/Variante6508ef027ebd3ec8eed3351afaa52f32195a33ecfa4bf873ddbb913513dfcf1.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22bcdd88db207682520dfc42779dcca1dbf6b45a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
