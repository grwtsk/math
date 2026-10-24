# comp_prod_eq_prod_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dac21ba-08dc-a78e-0b25-7152a5bbd1f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:903215a6-ce45-580d-17f1-47f998f84f33",
  "kind": "theorem",
  "lexical_name": "comp_prod_eq_prod_comp",
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
  "slug": "comp-prod-eq-prod-comp--4a5db03b1cbd27441df9f9db",
  "source": {
    "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 214,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a5db03b1cbd27441df9f9dbe29a60b2a79e0c1ed1120f725aad7b5897702754",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:903215a6-ce45-580d-17f1-47f998f84f33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_prod_eq_prod_comp : prod q₁ q₂ ⬝ prod r₁ r₂ = prod (q₁ ⬝ r₁) (q₂ ⬝ r₂) := by
  apply Quotient.inductionOn₂ (motive := _) q₁ q₂
  intro a b
  apply Quotient.inductionOn₂ (motive := _) r₁ r₂
  intros
  simp only [prod_lift, ← Path.Homotopic.comp_lift, Path.trans_prod_eq_prod_trans]
#align path.homotopic.comp_prod_eq_prod_comp Path.Homotopic.comp_prod_eq_prod_comp

variable {c₁ c₂ : α × β}

/-- Abbreviation for projection onto the left coordinate of a path class. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3f92ffe6771c8d70acb23c76f94f015dcf7edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
