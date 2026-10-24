# eq_on_nat_iff_eq_on_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f9c70a4-5b89-d04f-e3ea-0a8186d256a3",
  "kind": "lemma",
  "lexical_name": "eq_on_nat_iff_eq_on_int",
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
  "slug": "eq-on-nat-iff-eq-on-int--3b8d223789ca67a607e1222b",
  "source": {
    "blob": "fc85d03cd226975ad22321ca65f5e52696090534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 256,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8d223789ca67a607e1222ba9e275c98c7231c1b762f661c633eae89562e167",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f9c70a4-5b89-d04f-e3ea-0a8186d256a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_on_nat_iff_eq_on_int {f g : AbsoluteValue R S} :
    (∀ n : ℕ , f n = g n) ↔ ∀ n : ℤ , f n = g n := by
  refine ⟨fun h z ↦ ?_, fun a n ↦ mod_cast a n⟩
  obtain ⟨n , rfl | rfl⟩ := Int.eq_nat_or_neg z <;> simp [h n]

end OrderedCommRing

section LinearOrderedRing

variable {R S : Type*} [Semiring R] [Ring S] [LinearOrder S] [IsStrictOrderedRing S]
  (abv : AbsoluteValue R S)

/-- `AbsoluteValue.abs` is `abs` as a bundled `AbsoluteValue`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc85d03cd226975ad22321ca65f5e52696090534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
