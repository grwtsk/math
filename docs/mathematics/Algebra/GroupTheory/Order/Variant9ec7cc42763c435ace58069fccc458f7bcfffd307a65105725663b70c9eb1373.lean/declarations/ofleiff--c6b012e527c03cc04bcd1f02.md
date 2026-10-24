# ofLeIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d5211186088535e719c13e1d9f64cf0e6982c255d26e710cc413be9fc6c0e8",
  "kind": "def",
  "lexical_name": "ofLeIff",
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
  "slug": "ofleiff--c6b012e527c03cc04bcd1f02",
  "source": {
    "blob": "38da555b3bc86e0917587ac5c9ce142311b16ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 101,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6b012e527c03cc04bcd1f0256bc30b8210e4721d80913282358771a5ad68935",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d5211186088535e719c13e1d9f64cf0e6982c255d26e710cc413be9fc6c0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofLeIff [NonUnitalSemiring R] [PartialOrder R] [StarRing R]
    (h_le_iff : ∀ x y : R, x ≤ y ↔ ∃ s, y = x + star s * s) : StarOrderedRing R where
  le_iff := fun x y => by
    refine' ⟨fun h => _, _⟩
    · obtain ⟨p, hp⟩ := (h_le_iff x y).mp h
      exact ⟨star p * p, AddSubmonoid.subset_closure ⟨p, rfl⟩, hp⟩
    · rintro ⟨p, hp, hpxy⟩
      revert x y hpxy
      refine' AddSubmonoid.closure_induction hp _ (fun x y h => add_zero x ▸ h.ge) _
      · rintro _ ⟨s, rfl⟩ x y rfl
        exact (h_le_iff _ _).mpr ⟨s, rfl⟩
      · rintro a b ha hb x y rfl
        rw [← add_assoc]
        exact (ha _ _ rfl).trans (hb _ _ rfl)
#align star_ordered_ring.of_le_iff StarOrderedRing.ofLeIffₓ

-- set note [reducible non-instances]
/-- When `R` is a non-unital ring, to construct a `StarOrderedRing` instance it suffices to
show that the nonnegative elements are precisely those elements in the `AddSubmonoid` generated
by `star s * s` for `s : R`. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38da555b3bc86e0917587ac5c9ce142311b16ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
