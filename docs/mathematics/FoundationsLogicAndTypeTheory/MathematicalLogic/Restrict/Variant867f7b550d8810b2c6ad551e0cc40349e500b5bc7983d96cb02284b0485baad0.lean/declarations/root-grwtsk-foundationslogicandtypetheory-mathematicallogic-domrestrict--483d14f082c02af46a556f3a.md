# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.Injective.extend_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:976ab2f3-cf76-bd8d-b4ea-3877daff52ba",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.Injective.extend_of_disjoint",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-domrestrict--483d14f082c02af46a556f3a",
  "source": {
    "blob": "301799cbeec3c7486a4fa22ce2dda066f4a33020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483d14f082c02af46a556f3abd626ba8c2414bb7ce99a72f15a663b31a7519ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:976ab2f3-cf76-bd8d-b4ea-3877daff52ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DomRestrict.Variant7f630d806fa1ec2c554b78f4618c1c05ca2bcd59c5550af223908b0334577be4.Function.Injective.extend_of_disjoint {f : α → β} {g : α → γ} {j : β → γ}
    (hf : f.Injective) (hg : g.Injective) (hj : j.Injective)
    (hd : Disjoint (range g) (range j)) :
    Injective (extend f g j) := by
  intro x y h
  obtain ⟨a, rfl⟩ | hx := em (∃ a, f a = x) <;> obtain ⟨b, rfl⟩ | hy := em (∃ a, f a = y)
  · rw [hf.extend_apply, hf.extend_apply] at h
    rw [hg h]
  · rw [hf.extend_apply, extend_apply' _ _ _ hy] at h
    exact absurd ⟨y, h.symm⟩ (disjoint_left.1 hd (mem_range_self a))
  · rw [extend_apply' _ _ _ hx, hf.extend_apply] at h
    exact absurd ⟨x, h⟩ (disjoint_left.1 hd (mem_range_self b))
  · rw [extend_apply' _ _ _ hx, extend_apply' _ _ _ hy] at h
    exact hj h

/-- Restrict codomain of a function `f` to a set `s`. Same as `Subtype.coind` but this version
has codomain `↥s` instead of `Subtype s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301799cbeec3c7486a4fa22ce2dda066f4a33020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
