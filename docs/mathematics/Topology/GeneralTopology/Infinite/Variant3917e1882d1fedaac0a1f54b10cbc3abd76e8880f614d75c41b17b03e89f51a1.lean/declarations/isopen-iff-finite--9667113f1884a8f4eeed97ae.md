# isOpen_iff_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61fa11b1-5c6a-ff48-ad0b-63180b79e476",
  "kind": "theorem",
  "lexical_name": "isOpen_iff_finite",
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
  "slug": "isopen-iff-finite--9667113f1884a8f4eeed97ae",
  "source": {
    "blob": "6aff0f690d21cd86887156330f15ed6e648f7fdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9667113f1884a8f4eeed97ae66e8a6faace44f505115862f883545d32d13b3b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61fa11b1-5c6a-ff48-ad0b-63180b79e476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_iff_finite (L : IntermediateField k K) [IsGalois k K] :
    IsOpen L.fixingSubgroup.carrier ↔ FiniteDimensional k L := by
  refine ⟨fun h ↦ ?_, fun h ↦ IntermediateField.fixingSubgroup_isOpen L⟩
  have : (IntermediateFieldEquivClosedSubgroup.toFun L).carrier ∈ nhds 1 :=
    IsOpen.mem_nhds h (congrFun rfl)
  rw [GroupFilterBasis.nhds_one_eq] at this
  rcases this with ⟨S, ⟨gp, ⟨M, hM, eq'⟩, eq⟩, sub⟩
  rw [← eq, ← eq'] at sub
  have := hM.out
  let L' : FiniteGaloisIntermediateField k K := {
    normalClosure k M K with
    finiteDimensional := normalClosure.is_finiteDimensional k M K
    isGalois := IsGalois.normalClosure k M K }
  have : L ≤ L'.1 := by
    apply le_trans _ (IntermediateField.le_normalClosure M)
    rw [←  fixedField_fixingSubgroup M, IntermediateField.le_iff_le]
    exact sub
  let _ : Algebra L L'.1 := RingHom.toAlgebra (IntermediateField.inclusion this)
  exact FiniteDimensional.left k L L'.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aff0f690d21cd86887156330f15ed6e648f7fdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
