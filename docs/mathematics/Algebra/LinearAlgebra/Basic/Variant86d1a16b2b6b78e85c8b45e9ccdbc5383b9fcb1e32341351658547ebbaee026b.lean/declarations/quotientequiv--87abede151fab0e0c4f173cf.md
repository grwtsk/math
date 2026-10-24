# quotientEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb253dd0eb6479dcf7defe2c4206ca81dabe4006f0a67e2f5500eece9f6fb91b",
  "kind": "def",
  "lexical_name": "quotientEquiv",
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
  "slug": "quotientequiv--87abede151fab0e0c4f173cf",
  "source": {
    "blob": "500406adf6f99576f675c0993f02cb54f422a446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87abede151fab0e0c4f173cf88113c85b73b7e224837ba8241128a04147a080a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb253dd0eb6479dcf7defe2c4206ca81dabe4006f0a67e2f5500eece9f6fb91b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientEquiv [Fintype ι] :
    E ⧸ span ℤ (Set.range b) ≃ (fundamentalDomain b) := by
  refine Equiv.ofBijective ?_ ⟨fun x y => ?_, fun x => ?_⟩
  · refine fun q => Quotient.liftOn q (fractRestrict b) (fun _ _ h => ?_)
    rw [Subtype.mk.injEq, fractRestrict_apply, fractRestrict_apply, fract_eq_fract]
    exact QuotientAddGroup.leftRel_apply.mp h
  · refine Quotient.inductionOn₂ x y (fun _ _ hxy => ?_)
    rw [Quotient.liftOn_mk (s := quotientRel (span ℤ (Set.range b))), fractRestrict,
      Quotient.liftOn_mk (s := quotientRel (span ℤ (Set.range b))), fractRestrict,
      Subtype.mk.injEq] at hxy
    apply Quotient.sound'
    rwa [QuotientAddGroup.leftRel_apply, mem_toAddSubgroup, ← fract_eq_fract]
  · obtain ⟨a, rfl⟩ := fractRestrict_surjective b x
    exact ⟨Quotient.mk'' a, rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant86d1a16b2b6b78e85c8b45e9ccdbc5383b9fcb1e32341351658547ebbaee026b.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `500406adf6f99576f675c0993f02cb54f422a446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
