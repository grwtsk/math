# mem_coindV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37684718-888e-5f46-80be-b40e3294b407",
  "kind": "lemma",
  "lexical_name": "mem_coindV",
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
  "slug": "mem-coindv--5d135d5c1b2b4f0298cd2c02",
  "source": {
    "blob": "75aec53916f41d3e5edd337d36d1fb5a7edd6504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d135d5c1b2b4f0298cd2c0286a0f0fc37b7abe174feb96a34a08ca4536d1101",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37684718-888e-5f46-80be-b40e3294b407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_coindV (f : H → A) : f ∈ coindV φ σ ↔ ∀ (g : G) (h : H), f (φ g * h) = σ g (f h) :=
  Iff.rfl

set_option backward.isDefEq.respectTransparency.types false in
/--
If `ρ : Representation k G A` and `φ : G →* H` then `coind φ ρ` is the representation
coinduced by `ρ` along `φ`, defined as the following action of `H` on the submodule `coindV φ ρ`
of `G`-equivariant functions from `H` to `A`: we let `h : H` send the function `f : H → A`
to the function sending `h₁` to `f (h₁ * h)`.

See also `Rep.coind` and `Representation.coind'` for variants involving the category `Rep k G`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3a6da4c1ccde64e309c871e1d1a6692a4b53257dbf228d8bab75a3baa9926636.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75aec53916f41d3e5edd337d36d1fb5a7edd6504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
