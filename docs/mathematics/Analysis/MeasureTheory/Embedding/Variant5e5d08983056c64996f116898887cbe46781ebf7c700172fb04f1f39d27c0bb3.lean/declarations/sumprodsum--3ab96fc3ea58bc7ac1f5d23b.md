# sumProdSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa1365b98dc8324e1c07606ccf8972fbd6546895903ce910e3a410944c33e91b",
  "kind": "def",
  "lexical_name": "sumProdSum",
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
  "slug": "sumprodsum--3ab96fc3ea58bc7ac1f5d23b",
  "source": {
    "blob": "575bea33c92b621ceb196eb8bfa36d822435b1be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 470,
    "path": "GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ab96fc3ea58bc7ac1f5d23bce62608ac900ce7954e28ddd85b9a67c997ca74b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa1365b98dc8324e1c07606ccf8972fbd6546895903ce910e3a410944c33e91b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumProdSum (α β γ δ) [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    [MeasurableSpace δ] : (α ⊕ β) × (γ ⊕ δ) ≃ᵐ ((α × γ) ⊕ (α × δ)) ⊕ ((β × γ) ⊕ (β × δ)) :=
  (sumProdDistrib _ _ _).trans <| sumCongr (prodSumDistrib _ _ _) (prodSumDistrib _ _ _)

variable {π π' : δ' → Type*} [∀ x, MeasurableSpace (π x)] [∀ x, MeasurableSpace (π' x)]

/-- The type of functions `f : ∀ a, β a` such that for all `a` we have `p a (f a)` is measurably
equivalent to the type of functions `∀ a, {b : β a // p a b}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `575bea33c92b621ceb196eb8bfa36d822435b1be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
