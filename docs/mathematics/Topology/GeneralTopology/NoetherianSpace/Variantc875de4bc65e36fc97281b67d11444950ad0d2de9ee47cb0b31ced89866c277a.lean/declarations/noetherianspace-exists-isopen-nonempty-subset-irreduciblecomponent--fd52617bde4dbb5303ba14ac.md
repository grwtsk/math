# NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c7a8313-fb19-9b3d-67e0-ab43f1833ce0",
  "kind": "theorem",
  "lexical_name": "NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent",
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
  "slug": "noetherianspace-exists-isopen-nonempty-subset-irreduciblecomponent--fd52617bde4dbb5303ba14ac",
  "source": {
    "blob": "fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 210,
    "path": "GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd52617bde4dbb5303ba14ac0e793a33a60783f0eec7da806582a2fa64653763",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7a8313-fb19-9b3d-67e0-ab43f1833ce0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent [NoetherianSpace α]
    (Z : Set α) (H : Z ∈ irreducibleComponents α) :
    ∃ o : Set α, IsOpen o ∧ o.Nonempty ∧ o ⊆ Z := by
  have hα : (irreducibleComponents α).Finite := finite_irreducibleComponents
  have hZ := closure_sUnion_irreducibleComponents_sdiff_singleton hα Z H
  refine ⟨(⋃₀ (irreducibleComponents α \ {Z}))ᶜ, ?_, ?_, subset_closure.trans hZ.le⟩
  · rw [Set.sUnion_eq_biUnion, isOpen_compl_iff]
    exact hα.sdiff.isClosed_biUnion fun W hW ↦ isClosed_of_mem_irreducibleComponents W hW.1
  · contrapose! hZ
    rw [hZ, closure_empty, ← Set.nonempty_iff_empty_ne]
    exact H.1.nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NoetherianSpace/Variantc875de4bc65e36fc97281b67d11444950ad0d2de9ee47cb0b31ced89866c277a.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb4b2f547532ff6a01ed6cf3618f0e8dcc960b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
