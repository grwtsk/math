# isOpen_of_isClosed_of_finiteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42cb8c51-491f-0b2a-1ed9-b8dd029bdad9",
  "kind": "lemma",
  "lexical_name": "isOpen_of_isClosed_of_finiteIndex",
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
  "slug": "isopen-of-isclosed-of-finiteindex--8a4eb5a6fbb77a3ed793c470",
  "source": {
    "blob": "820a2a95e00a9d4464abfaae2aa2079594ceab3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4eb5a6fbb77a3ed793c470d352785c43a3294902f5dad8fecd21d4df19d6de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42cb8c51-491f-0b2a-1ed9-b8dd029bdad9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_of_isClosed_of_finiteIndex (H : Subgroup G) [H.FiniteIndex]
    (h : IsClosed (H : Set G)) : IsOpen (H : Set G) := by
  apply isClosed_compl_iff.mp
  convert isClosed_iUnion_of_finite <| fun (x : {x : (G ⧸ H) // x ≠ QuotientGroup.mk 1})
    ↦ IsClosed.smul h (Quotient.out x.1)
  ext x
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · have : QuotientGroup.mk 1 ≠ QuotientGroup.mk (s := H) x := by
      apply QuotientGroup.eq.not.mpr
      simpa only [inv_one, one_mul, ne_eq]
    simp only [ne_eq, Set.mem_iUnion]
    use ⟨QuotientGroup.mk (s := H) x, this.symm⟩,
      (Quotient.out (QuotientGroup.mk (s := H) x))⁻¹ * x
    simp only [SetLike.mem_coe, smul_eq_mul, mul_inv_cancel_left, and_true]
    exact QuotientGroup.eq.mp <| QuotientGroup.out_eq' (QuotientGroup.mk (s := H) x)
  · rcases h with ⟨S,⟨y,hS⟩,mem⟩
    simp only [← hS] at mem
    rcases mem with ⟨h,hh,eq⟩
    simp only [Set.mem_compl_iff, SetLike.mem_coe]
    by_contra mH
    simp only [← eq, ne_eq, smul_eq_mul] at mH
    absurd y.2.symm
    rw [← QuotientGroup.out_eq' y.1, QuotientGroup.eq]
    simp only [inv_one, ne_eq, one_mul, (Subgroup.mul_mem_cancel_right H hh).mp mH]

end Subgroup

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `820a2a95e00a9d4464abfaae2aa2079594ceab3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
