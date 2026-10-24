# einfsep_eq_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f95ad70-5fcc-73c8-f369-549f3569d151",
  "kind": "theorem",
  "lexical_name": "einfsep_eq_iInf",
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
  "slug": "einfsep-eq-iinf--ced5b0d9ee250b28e288a366",
  "source": {
    "blob": "5ded06d8a961e71b879c1c49853bcb9d828a18c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced5b0d9ee250b28e288a3667b1ddfa4fb40aa4249ab100ac1ed8b8859695366",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f95ad70-5fcc-73c8-f369-549f3569d151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem einfsep_eq_iInf : s.einfsep = ⨅ d : s.offDiag, (uncurry edist) (d : α × α) := by
  refine' eq_of_forall_le_iff fun _ => _
  simp_rw [le_einfsep_iff, le_iInf_iff, imp_forall_iff, SetCoe.forall, mem_offDiag,
    Prod.forall, uncurry_apply_pair, and_imp]
#align set.einfsep_eq_infi Set.einfsep_eq_iInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ded06d8a961e71b879c1c49853bcb9d828a18c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
