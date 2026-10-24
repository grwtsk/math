# setOf_isMaximal_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0eb903b-0cb8-81bf-ece8-6485b4817a06",
  "kind": "lemma",
  "lexical_name": "setOf_isMaximal_finite",
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
  "slug": "setof-ismaximal-finite--a3d24178f6baf77cbbaa7d8f",
  "source": {
    "blob": "5fb15940923be41eed15a2d29744240ea81df8b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 473,
    "path": "GRWTSK/Algebra/Module/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3d24178f6baf77cbbaa7d8f7059b7ac4119fbbcb2e073fdf1e5a45a05609d1b",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0eb903b-0cb8-81bf-ece8-6485b4817a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setOf_isMaximal_finite : {I : Ideal R | I.IsMaximal}.Finite := by
  have ⟨s, H⟩ := Finset.exists_inf_le (Subtype.val (p := fun I : Ideal R ↦ I.IsMaximal))
  refine Set.finite_def.2 ⟨s, fun p ↦ ?_⟩
  have ⟨q, hq1, hq2⟩ := p.2.isPrime.inf_le'.mp (H p)
  rwa [← Subtype.ext <| q.2.eq_of_le p.2.ne_top hq2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variant3151e11895a0b4273f0843f540245190f0de33b77677def6646ff37a34d5dec8.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb15940923be41eed15a2d29744240ea81df8b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
