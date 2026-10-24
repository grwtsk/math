# tendsto_untop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17403fae-55e7-5568-f795-e0c778b0559d",
  "kind": "lemma",
  "lexical_name": "tendsto_untop",
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
  "slug": "tendsto-untop--e0dcf022cdfb069906645581",
  "source": {
    "blob": "9c0d607bd6e09c1bef06613328ac69db8cb8bc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0dcf022cdfb069906645581286ff5fc3ded2a693b4c755f1e73348a5ba32b7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17403fae-55e7-5568-f795-e0c778b0559d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_untop (a : {a : WithTop ι | a ≠ ⊤}) :
    Tendsto (fun x ↦ untop x.1 x.2) (𝓝 a) (𝓝 (untop a.1 a.2)) := by
  have : Nonempty ι := ⟨untop a.1 a.2⟩
  simp only [← untopA_eq_untop, ne_eq, coe_ofPred, mem_ofPred_eq]
  exact (tendsto_untopA a.2).comp <| tendsto_subtype_rng.mp tendsto_id

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithTop/Variantc4af9a5d62e57add3262081db09d46d4e55907ed3278e1f1c57f8cf57d7fcd2a.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0d607bd6e09c1bef06613328ac69db8cb8bc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
