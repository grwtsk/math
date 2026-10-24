# jacobiSum_mem_algebraAdjoin_of_pow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fdd9227-9751-3cb5-e60d-a50b046d7cc2",
  "kind": "lemma",
  "lexical_name": "jacobiSum_mem_algebraAdjoin_of_pow_eq_one",
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
  "slug": "jacobisum-mem-algebraadjoin-of-pow-eq-one--d9b4b90b1ba1a9b7c4d4f07b",
  "source": {
    "blob": "6e1af8b061b9d202ffe79e2881e13e2e895548a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 286,
    "path": "GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9b4b90b1ba1a9b7c4d4f07b56a8211e4b461b5fcab5f3d1848edc49b6a29108",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdd9227-9751-3cb5-e60d-a50b046d7cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma jacobiSum_mem_algebraAdjoin_of_pow_eq_one {n : ℕ} [NeZero n] {χ φ : MulChar F R}
    (hχ : χ ^ n = 1) (hφ : φ ^ n = 1) {μ : R} (hμ : IsPrimitiveRoot μ n) :
    jacobiSum χ φ ∈ ℤ[μ] :=
  Subalgebra.sum_mem _ fun _ _ ↦ Subalgebra.mul_mem _
    (MulChar.apply_mem_algebraAdjoin_of_pow_eq_one hχ hμ _)
    (MulChar.apply_mem_algebraAdjoin_of_pow_eq_one hφ hμ _)

/-- If `χ` and `ψ` are multiplicative characters of order dividing `n` on a finite field `F`
with values in an integral domain `R` and `μ` is a primitive `n`th root of unity in `R`,
then `J(χ,ψ) = -1 + z*(μ - 1)^2` for some `z ∈ ℤ[μ] ⊆ R`. (We assume that `#F ≡ 1 mod n`.)
Note that we do not state this as a divisibility in `R`, as this would give a weaker statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant853e986ca9c2e2a2d7810fffec80b5e07c65e6d8845a4d1a02bdce11168e657d.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e1af8b061b9d202ffe79e2881e13e2e895548a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
