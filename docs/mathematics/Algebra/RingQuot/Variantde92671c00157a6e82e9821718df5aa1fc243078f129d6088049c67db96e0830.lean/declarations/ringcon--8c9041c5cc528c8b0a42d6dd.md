# ringCon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78c7df2f483f4207cecda5cbf9cb79cba858245e64bc02a7f07a553ac8a2ff09",
  "kind": "def",
  "lexical_name": "ringCon",
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
  "slug": "ringcon--8c9041c5cc528c8b0a42d6dd",
  "source": {
    "blob": "56fdf476b4b90f00ae150f20a1e526a7eb20cf9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 97,
    "path": "GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c9041c5cc528c8b0a42d6dd7a7455f3d70df1a00a6954e627200d461566bdea",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78c7df2f483f4207cecda5cbf9cb79cba858245e64bc02a7f07a553ac8a2ff09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ringCon (r : R → R → Prop) : RingCon R where
  r := EqvGen (Rel r)
  iseqv := EqvGen.is_equivalence _
  add' {a b c d} hab hcd := by
    induction hab generalizing c d with
    | rel _ _ hab =>
      refine' (EqvGen.rel _ _ hab.add_left).trans _ _ _ _
      induction hcd with
      | rel _ _ hcd => exact EqvGen.rel _ _ hcd.add_right
      | refl => exact EqvGen.refl _
      | symm _ _ _ h => exact h.symm _ _
      | trans _ _ _ _ _ h h' => exact h.trans _ _ _ h'
    | refl => induction hcd with
      | rel _ _ hcd => exact EqvGen.rel _ _ hcd.add_right
      | refl => exact EqvGen.refl _
      | symm _ _ _ h => exact h.symm _ _
      | trans _ _ _ _ _ h h' => exact h.trans _ _ _ h'
    | symm x y _ hxy => exact (hxy hcd.symm).symm
    | trans x y z _ _ h h' => exact (h hcd).trans _ _ _ (h' <| EqvGen.refl _)
  mul' {a b c d} hab hcd := by
    induction hab generalizing c d with
    | rel _ _ hab =>
      refine' (EqvGen.rel _ _ hab.mul_left).trans _ _ _ _
      induction hcd with
      | rel _ _ hcd => exact EqvGen.rel _ _ hcd.mul_right
      | refl => exact EqvGen.refl _
      | symm _ _ _ h => exact h.symm _ _
      | trans _ _ _ _ _ h h' => exact h.trans _ _ _ h'
    | refl => induction hcd with
      | rel _ _ hcd => exact EqvGen.rel _ _ hcd.mul_right
      | refl => exact EqvGen.refl _
      | symm _ _ _ h => exact h.symm _ _
      | trans _ _ _ _ _ h h' => exact h.trans _ _ _ h'
    | symm x y _ hxy => exact (hxy hcd.symm).symm
    | trans x y z _ _ h h' => exact (h hcd).trans _ _ _ (h' <| EqvGen.refl _)
#align ring_quot.ring_con RingQuot.ringCon

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantde92671c00157a6e82e9821718df5aa1fc243078f129d6088049c67db96e0830.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fdf476b4b90f00ae150f20a1e526a7eb20cf9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
