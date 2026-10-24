# Bornology.ofDist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc1eee0b301e2bce86ccfc99acdd4528044867b83e9736b230d49aaf5bbe7e36",
  "kind": "def",
  "lexical_name": "Bornology.ofDist",
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
  "slug": "bornology-ofdist--66f3af37ee88b1b84493ddb1",
  "source": {
    "blob": "58243fb8fb707a94222d863dd235774213e02743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66f3af37ee88b1b84493ddb13751555c4795d1799c99f19affd1f0d271b40409",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc1eee0b301e2bce86ccfc99acdd4528044867b83e9736b230d49aaf5bbe7e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Bornology.ofDist {α : Type*} (dist : α → α → ℝ) (dist_comm : ∀ x y, dist x y = dist y x)
    (dist_triangle : ∀ x y z, dist x z ≤ dist x y + dist y z) : Bornology α :=
  Bornology.ofBounded { s : Set α | ∃ C, ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → dist x y ≤ C }
    ⟨0, fun x hx y => hx.elim⟩ (fun s ⟨c, hc⟩ t h => ⟨c, fun x hx y hy => hc (h hx) (h hy)⟩)
    (fun s hs t ht => by
      rcases s.eq_empty_or_nonempty with rfl | ⟨x, hx⟩
      · rwa [empty_union]
      rcases t.eq_empty_or_nonempty with rfl | ⟨y, hy⟩
      · rwa [union_empty]
      rsuffices ⟨C, hC⟩ : ∃ C, ∀ z ∈ s ∪ t, dist x z ≤ C
      · refine ⟨C + C, fun a ha b hb => (dist_triangle a x b).trans ?_⟩
        simpa only [dist_comm] using add_le_add (hC _ ha) (hC _ hb)
      rcases hs with ⟨Cs, hs⟩; rcases ht with ⟨Ct, ht⟩
      refine ⟨max Cs (dist x y + Ct), fun z hz => hz.elim
        (fun hz => (hs hx hz).trans (le_max_left _ _))
        (fun hz => (dist_triangle x y z).trans <|
          (add_le_add le_rfl (ht hy hz)).trans (le_max_right _ _))⟩)
    fun z => ⟨dist z z, forall_eq.2 <| forall_eq.2 le_rfl⟩
#align bornology.of_dist Bornology.ofDistₓ

/-- The distance function (given an ambient metric space on `α`), which returns
  a nonnegative real number `dist x y` given `x y : α`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0d3405212ad47a8f492154b64194ba3b1d1b3b90534419ab99d61025211f232b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58243fb8fb707a94222d863dd235774213e02743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
