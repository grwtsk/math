# toAddCircle_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f6ca29d-28db-16a1-283a-46c6fb3f3be5",
  "kind": "lemma",
  "lexical_name": "toAddCircle_injective",
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
  "slug": "toaddcircle-injective--a520a1d3228bd173a86b9828",
  "source": {
    "blob": "efa5f458bddc4b5000927bfd1e124273ccf3c89a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variant867444d78972aa787094cf6b5451b71fe9f4095d0b8dd52f2c409005420e85d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a520a1d3228bd173a86b9828270ce48e6aae0bc99d295c89d671630e0c8f73bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variant867444d78972aa787094cf6b5451b71fe9f4095d0b8dd52f2c409005420e85d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6ca29d-28db-16a1-283a-46c6fb3f3be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddCircle_injective : Function.Injective (toAddCircle : ZMod N → _) := by
  intro x y hxy
  have : (0 : ℝ) < N := Nat.cast_pos.mpr (NeZero.pos _)
  rwa [toAddCircle_apply, toAddCircle_apply, AddCircle.coe_eq_coe_iff_of_mem_Ico,
    div_left_inj' this.ne', Nat.cast_inj, (val_injective N).eq_iff] at hxy <;>
  exact ⟨by positivity, by simpa only [zero_add, div_lt_one this, Nat.cast_lt] using val_lt _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variant867444d78972aa787094cf6b5451b71fe9f4095d0b8dd52f2c409005420e85d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variant867444d78972aa787094cf6b5451b71fe9f4095d0b8dd52f2c409005420e85d5.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efa5f458bddc4b5000927bfd1e124273ccf3c89a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
