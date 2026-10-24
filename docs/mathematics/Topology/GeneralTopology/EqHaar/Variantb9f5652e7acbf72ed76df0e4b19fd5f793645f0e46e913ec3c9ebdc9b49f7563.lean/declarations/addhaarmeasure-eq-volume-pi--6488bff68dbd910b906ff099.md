# addHaarMeasure_eq_volume_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40737cd6-71b5-7838-f7cf-ed806700588e",
  "kind": "theorem",
  "lexical_name": "addHaarMeasure_eq_volume_pi",
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
  "slug": "addhaarmeasure-eq-volume-pi--6488bff68dbd910b906ff099",
  "source": {
    "blob": "3ef415bffee55a89d8af50fea647b7b5afb1871a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6488bff68dbd910b906ff099a2ad9bacf30290c65c8916741a5fbf2766a4ccd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40737cd6-71b5-7838-f7cf-ed806700588e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaarMeasure_eq_volume_pi (ι : Type*) [Fintype ι] :
    addHaarMeasure (piIcc01 ι) = volume := by
  convert! (addHaarMeasure_unique volume (piIcc01 ι)).symm
  simp only [piIcc01, volume_pi_pi fun _ => Icc (0 : ℝ) 1, PositiveCompacts.coe_mk,
    Compacts.coe_mk, Finset.prod_const_one, ENNReal.ofReal_one, Real.volume_Icc, one_smul, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variantb9f5652e7acbf72ed76df0e4b19fd5f793645f0e46e913ec3c9ebdc9b49f7563.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef415bffee55a89d8af50fea647b7b5afb1871a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
