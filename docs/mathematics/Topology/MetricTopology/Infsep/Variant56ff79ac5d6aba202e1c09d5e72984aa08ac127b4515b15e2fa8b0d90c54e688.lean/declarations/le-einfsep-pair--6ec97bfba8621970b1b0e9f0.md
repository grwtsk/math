# le_einfsep_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4e23ce-301d-7152-fabd-9b36cfdeda26",
  "kind": "theorem",
  "lexical_name": "le_einfsep_pair",
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
  "slug": "le-einfsep-pair--6ec97bfba8621970b1b0e9f0",
  "source": {
    "blob": "5ded06d8a961e71b879c1c49853bcb9d828a18c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 157,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ec97bfba8621970b1b0e9f0ee5c714fe772b5c791de900f60f6fb707cd87c80",
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

Occurrence: `result:ee4e23ce-301d-7152-fabd-9b36cfdeda26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_einfsep_pair : edist x y ⊓ edist y x ≤ ({x, y} : Set α).einfsep := by
  simp_rw [le_einfsep_iff, inf_le_iff, mem_insert_iff, mem_singleton_iff]
  rintro a (rfl | rfl) b (rfl | rfl) hab <;> (try simp only [le_refl, true_or, or_true]) <;>
    contradiction
#align set.le_einfsep_pair Set.le_einfsep_pair

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ded06d8a961e71b879c1c49853bcb9d828a18c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
