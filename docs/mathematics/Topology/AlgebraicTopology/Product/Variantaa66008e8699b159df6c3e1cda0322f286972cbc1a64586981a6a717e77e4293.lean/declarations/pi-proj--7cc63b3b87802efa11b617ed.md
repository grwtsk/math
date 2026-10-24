# pi_proj

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
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68eab35d-bfda-1411-1249-624a66ef2929",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09129551-eee8-8df6-02a7-1ccf54748cf9",
  "kind": "theorem",
  "lexical_name": "pi_proj",
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
  "slug": "pi-proj--7cc63b3b87802efa11b617ed",
  "source": {
    "blob": "9f3f92ffe6771c8d70acb23c76f94f015dcf7edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 175,
    "path": "GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cc63b3b87802efa11b617edb790389e9d55756fb7ec69b60e374b71c61a38be",
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

Occurrence: `result:09129551-eee8-8df6-02a7-1ccf54748cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_proj (p : Path.Homotopic.Quotient as bs) : (pi fun i => proj i p) = p := by
  apply Quotient.inductionOn (motive := _) p
  intro; unfold proj
  simp_rw [← Path.Homotopic.map_lift]
  erw [pi_lift]
  congr
#align path.homotopic.pi_proj Path.Homotopic.pi_proj

end Pi

section Prod

variable {α β : Type*} [TopologicalSpace α] [TopologicalSpace β] {a₁ a₂ a₃ : α} {b₁ b₂ b₃ : β}
  {p₁ p₁' : Path a₁ a₂} {p₂ p₂' : Path b₁ b₂} (q₁ : Path.Homotopic.Quotient a₁ a₂)
  (q₂ : Path.Homotopic.Quotient b₁ b₂)

/-- The product of homotopies h₁ and h₂.
    This is `HomotopyRel.prod` specialized for path homotopies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Product/Variantaa66008e8699b159df6c3e1cda0322f286972cbc1a64586981a6a717e77e4293.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3f92ffe6771c8d70acb23c76f94f015dcf7edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
