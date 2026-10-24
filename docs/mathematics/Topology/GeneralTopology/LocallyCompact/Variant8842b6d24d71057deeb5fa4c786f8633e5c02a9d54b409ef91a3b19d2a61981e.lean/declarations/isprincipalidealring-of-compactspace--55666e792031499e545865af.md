# isPrincipalIdealRing_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c016714-e98a-90ae-621a-b6272a624960",
  "kind": "lemma",
  "lexical_name": "isPrincipalIdealRing_of_compactSpace",
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
  "slug": "isprincipalidealring-of-compactspace--55666e792031499e545865af",
  "source": {
    "blob": "5954c79e4ebd7e5ca547e02ce3e71223237f48ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55666e792031499e545865af10fe2a97379cf5c2baa057364217b69085744cc7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c016714-e98a-90ae-621a-b6272a624960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrincipalIdealRing_of_compactSpace [hc : CompactSpace 𝒪[K]] :
    IsPrincipalIdealRing 𝒪[K] := by
  -- The strategy to show that we have a PIR is by contradiction,
  -- assuming that the range of the valuation is densely ordered.
  have hi : Valuation.Integers (R := K) Valued.v 𝒪[K] := Valuation.integer.integers v
  have hc : IsCompact (X := K) 𝒪[K] := isCompact_iff_compactSpace.mpr hc
  -- We can also construct that it has a locally finite order, by compactness
  -- which leads to a contradiction.
  obtain ⟨_⟩ := locallyFiniteOrder_units_mrange_of_isCompact_integer hc
  have hm := mulArchimedean_mrange_of_isCompact_integer hc
  -- The key result is that a valuation ring that maps into a `MulArchimedean` value group
  -- is a PIR iff the value group is not densely ordered.
  refine hi.isPrincipalIdealRing_iff_not_denselyOrdered_mrange.mpr fun _ ↦ ?_
  -- since we are densely ordered, we necessarily are nontrivial
  exact not_subsingleton (MonoidHom.mrange (v : Valuation K Γ₀))ˣ
    (LocallyFiniteOrder.denselyOrdered_iff_subsingleton.mp inferInstance)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant8842b6d24d71057deeb5fa4c786f8633e5c02a9d54b409ef91a3b19d2a61981e.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5954c79e4ebd7e5ca547e02ce3e71223237f48ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
