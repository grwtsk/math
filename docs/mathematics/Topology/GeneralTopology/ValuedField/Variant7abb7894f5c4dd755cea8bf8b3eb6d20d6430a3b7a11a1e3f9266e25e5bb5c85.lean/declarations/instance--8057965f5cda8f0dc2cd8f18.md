# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ecda633c52867819de61fa2bd969e9e04c33371f290e12f91c50075df677c57",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8057965f5cda8f0dc2cd8f18",
  "source": {
    "blob": "eaa3e86da26ba034441cd460067c4f6896efcbe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8057965f5cda8f0dc2cd8f189113b3dba9a1a234d1652b6f0d08d7841a0e30b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ecda633c52867819de61fa2bd969e9e04c33371f290e12f91c50075df677c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) ValuedRing.separated [Valued K Γ₀] : SeparatedSpace K := by
  rw [separated_iff_t2]
  apply TopologicalAddGroup.t2Space_of_zero_sep
  intro x x_ne
  refine' ⟨{ k | v k < v x }, _, fun h => lt_irrefl _ h⟩
  rw [Valued.mem_nhds]
  have vx_ne := (Valuation.ne_zero_iff <| v).mpr x_ne
  let γ' := Units.mk0 _ vx_ne
  exact ⟨γ', fun y hy => by simpa using hy⟩
#align valued_ring.separated ValuedRing.separated

section

open WithZeroTopology

open Valued

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant7abb7894f5c4dd755cea8bf8b3eb6d20d6430a3b7a11a1e3f9266e25e5bb5c85.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa3e86da26ba034441cd460067c4f6896efcbe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
