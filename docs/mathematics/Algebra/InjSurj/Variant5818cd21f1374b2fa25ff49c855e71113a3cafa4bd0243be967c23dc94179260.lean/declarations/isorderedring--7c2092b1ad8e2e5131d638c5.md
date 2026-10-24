# isOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59667b59-c8af-1768-1751-6b2b8b5ccfb1",
  "kind": "lemma",
  "lexical_name": "isOrderedRing",
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
  "slug": "isorderedring--7c2092b1ad8e2e5131d638c5",
  "source": {
    "blob": "94b1ce239b2768990c2389f60295593e6863f65e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c2092b1ad8e2e5131d638c500f85f7b1238315fdd8631380f70dd8f5106a010",
  "verification": {
    "reference": "docs/verification/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59667b59-c8af-1768-1751-6b2b8b5ccfb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isOrderedRing [IsOrderedRing R] (zero : f 0 = 0) (one : f 1 = 1)
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (n : ℕ) (x), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (natCast : ∀ n : ℕ, f n = n) :
    letI _ : Semiring S := hf.semiring f zero one add mul nsmul npow natCast
    letI _ : PartialOrder S := PartialOrder.lift f hf
    IsOrderedRing S :=
  letI _ : Semiring S := hf.semiring f zero one add mul nsmul npow natCast
  letI _ : PartialOrder S := PartialOrder.lift f hf
  { __ := hf.isOrderedAddMonoid f zero add (swap nsmul)
    zero_le_one := show f 0 ≤ f 1 by simp only [zero, one, zero_le_one]
    mul_le_mul_of_nonneg_left a b c h hc := show f (c * a) ≤ f (c * b) by
      rw [mul, mul]; refine mul_le_mul_of_nonneg_left h ?_; rwa [← zero]
    mul_le_mul_of_nonneg_right a b c h hc := show f (a * c) ≤ f (b * c) by
      rw [mul, mul]; refine mul_le_mul_of_nonneg_right h ?_; rwa [← zero] }

/-- Pullback a `IsStrictOrderedRing` under an injective map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InjSurj/Variant5818cd21f1374b2fa25ff49c855e71113a3cafa4bd0243be967c23dc94179260.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b1ce239b2768990c2389f60295593e6863f65e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
