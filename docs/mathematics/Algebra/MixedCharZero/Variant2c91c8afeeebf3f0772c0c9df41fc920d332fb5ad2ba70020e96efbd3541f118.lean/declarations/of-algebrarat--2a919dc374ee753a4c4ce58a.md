# of_algebraRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc0b6245-376a-cf6c-a195-a049bacc913c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98b57260-120a-0078-f00e-14353aa6acd0",
  "kind": "theorem",
  "lexical_name": "of_algebraRat",
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
  "slug": "of-algebrarat--2a919dc374ee753a4c4ce58a",
  "source": {
    "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a919dc374ee753a4c4ce58acedb7af92982e1ea4e8cfd3166a4667f69a31226",
  "verification": {
    "reference": "docs/verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98b57260-120a-0078-f00e-14353aa6acd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_algebraRat [Algebra ℚ R] : ∀ I : Ideal R, I ≠ ⊤ → CharZero (R ⧸ I) := by
  intro I hI
  constructor
  intro a b h_ab
  contrapose! hI
  -- `↑a - ↑b` is a unit contained in `I`, which contradicts `I ≠ ⊤`.
  refine' I.eq_top_of_isUnit_mem _ (IsUnit.map (algebraMap ℚ R) (IsUnit.mk0 (a - b : ℚ) _))
  · simpa only [← Ideal.Quotient.eq_zero_iff_mem, map_sub, sub_eq_zero, map_natCast]
  simpa only [Ne.def, sub_eq_zero] using (@Nat.cast_injective ℚ _ _).ne hI
set_option linter.uppercaseLean3 false in
#align Q_algebra_to_equal_char_zero EqualCharZero.of_algebraRat

section ConstructionAlgebraRat

variable {R}

/-- Internal: Not intended to be used outside this local construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce50f18412cf34a2d0040b5e72477abd5ff8b7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
