# iInf_mul_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a49932e-9143-4663-cf3a-f81ef79c2b44",
  "kind": "lemma",
  "lexical_name": "iInf_mul_iInf",
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
  "slug": "iinf-mul-iinf--312319facf2f112a6992ad2f",
  "source": {
    "blob": "f00119e15b7aa2c835f004bf85c0f182deb67976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 941,
    "line": 935,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variantc45e76a1b6785da83d2ea856f62bafcf80ad54e91e1f6d2cce62a668a58687e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:312319facf2f112a6992ad2f40ad1da59a18d82f33b411baa07deeb432c76838",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variantc45e76a1b6785da83d2ea856f62bafcf80ad54e91e1f6d2cce62a668a58687e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a49932e-9143-4663-cf3a-f81ef79c2b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–941.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iInf_mul_iInf {f g : ι → ℝ≥0∞} (hf : ∃ i, f i ≠ ∞) (hg : ∃ j, g j ≠ ∞)
    (h : ∀ i j, ∃ k, f k * g k ≤ f i * g j) : (⨅ i, f i) * ⨅ i, g i = ⨅ i, f i * g i := by
  refine le_antisymm (le_iInf fun i ↦ mul_le_mul' (iInf_le ..) (iInf_le ..))
    (le_iInf_mul_iInf hf hg fun i j ↦ ?_)
  obtain ⟨k, hk⟩ := h i j
  exact iInf_le_of_le k hk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variantc45e76a1b6785da83d2ea856f62bafcf80ad54e91e1f6d2cce62a668a58687e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Inv/Variantc45e76a1b6785da83d2ea856f62bafcf80ad54e91e1f6d2cce62a668a58687e5.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f00119e15b7aa2c835f004bf85c0f182deb67976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
