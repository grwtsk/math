# Rel.star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8633430a1659d67e0714cdea0e64ffcc0d7f50f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f04cd45-f716-3525-d202-14552ca20ed1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e9c242b-1262-ffb8-b9a5-955ade98a751",
  "kind": "theorem",
  "lexical_name": "Rel.star",
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
  "slug": "rel-star--19a2a99efcd8c7cea61e9a38",
  "source": {
    "blob": "c8633430a1659d67e0714cdea0e64ffcc0d7f50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RingQuot/Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19a2a99efcd8c7cea61e9a385592adc4841bd25256479509feddb4794bbb9957",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RingQuot/Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9c242b-1262-ffb8-b9a5-955ade98a751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : R⦄ (h : Rel r a b) : Rel r (star a) (star b) := by
  induction h with
  | of h          => exact Rel.of (hr _ _ h)
  | add_left _ h  => rw [star_add, star_add]
                     exact Rel.add_left h
  | mul_left _ h  => rw [star_mul, star_mul]
                     exact Rel.mul_right h
  | mul_right _ h => rw [star_mul, star_mul]
                     exact Rel.mul_left h

private irreducible_def star' (hr : ∀ a b, r a b → r (star a) (star b)) : RingQuot r → RingQuot r
  | ⟨a⟩ => ⟨Quot.map (star : R → R) (Rel.star r hr) a⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RingQuot/Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RingQuot/Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8633430a1659d67e0714cdea0e64ffcc0d7f50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
