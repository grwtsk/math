# CNF_fst_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea77809-494b-c5f6-73c4-1f5129d08f42",
  "kind": "theorem",
  "lexical_name": "CNF_fst_le_log",
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
  "slug": "cnf-fst-le-log--8f4bc5deb9a5f58f6ab05d26",
  "source": {
    "blob": "f8a26b59a863f7bb7e48207db5691f0b018bf072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4bc5deb9a5f58f6ab05d263fef0943bf849e7d31e02869c46d0177465ec01d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea77809-494b-c5f6-73c4-1f5129d08f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CNF_fst_le_log {b o : Ordinal.{u}} {x : Ordinal × Ordinal} :
    x ∈ CNF b o → x.1 ≤ log b o := by
  refine' CNFRec b _ (fun o ho H ↦ _) o
  · rw [CNF_zero]
    intro contra; contradiction
  · rw [CNF_ne_zero ho, mem_cons]
    rintro (rfl | h)
    · exact le_rfl
    · exact (H h).trans (log_mono_right _ (mod_opow_log_lt_self b ho).le)
set_option linter.uppercaseLean3 false in
#align ordinal.CNF_fst_le_log Ordinal.CNF_fst_le_log

/-- Every exponent in the Cantor normal form `CNF b o` is less or equal to `o`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant76dba4a8b1a7392370ecda0601fbeaf913b5bff44c67cd05960001eec3d75df6.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a26b59a863f7bb7e48207db5691f0b018bf072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
