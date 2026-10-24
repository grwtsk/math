# span_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85a0db03-3d61-e101-3e3a-910af2296b71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12145737-cbf8-15b1-0d97-3b3ba28e8f46",
  "kind": "theorem",
  "lexical_name": "span_induction₂",
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
  "slug": "span-induction--832c778fb1f5505bb94a9873",
  "source": {
    "blob": "b6b4415b3be762e3b779b42c608e391ce93a9b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:832c778fb1f5505bb94a98736cd5e24e98a5f51aa8ae7b16333336e05f5c9826",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12145737-cbf8-15b1-0d97-3b3ba28e8f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_induction₂ {p : M → M → Prop} {a b : M} (ha : a ∈ Submodule.span R s)
    (hb : b ∈ Submodule.span R s) (Hs : ∀ x ∈ s, ∀ y ∈ s, p x y)
    (H0_left : ∀ y, p 0 y) (H0_right : ∀ x, p x 0)
    (Hadd_left : ∀ x₁ x₂ y, p x₁ y → p x₂ y → p (x₁ + x₂) y)
    (Hadd_right : ∀ x y₁ y₂, p x y₁ → p x y₂ → p x (y₁ + y₂))
    (Hsmul_left : ∀ (r : R) x y, p x y → p (r • x) y)
    (Hsmul_right : ∀ (r : R) x y, p x y → p x (r • y)) : p a b :=
  Submodule.span_induction ha
    (fun x hx => Submodule.span_induction hb (Hs x hx) (H0_right x) (Hadd_right x) fun r =>
      Hsmul_right r x)
    (H0_left b) (fun x₁ x₂ => Hadd_left x₁ x₂ b) fun r x => Hsmul_left r x b

/-- A dependent version of `Submodule.span_induction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6b4415b3be762e3b779b42c608e391ce93a9b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
