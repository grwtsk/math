# sigma_pi_lt_strongLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e2181c6-a923-2156-f676-58735222c8bb",
  "kind": "theorem",
  "lexical_name": "sigma_pi_lt_strongLimit",
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
  "slug": "sigma-pi-lt-stronglimit--78dacef426a84027e397e746",
  "source": {
    "blob": "2d8af74869e9f055953cce202bde92f49c6f7a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variant7aae430c4ef70cf4ba20c62520bbe4a957605c1bf2e429ffb51b49bf914d375f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78dacef426a84027e397e74632db2a759d3bcdbc416f6cc8b72f999410461232",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variant7aae430c4ef70cf4ba20c62520bbe4a957605c1bf2e429ffb51b49bf914d375f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e2181c6-a923-2156-f676-58735222c8bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_pi_lt_strongLimit {I : Type u} (X : I → Type u)
    (μ ι ρ : Cardinal.{u}) (hμ : μ.IsStrongLimit)
    (hI : #I ≤ ι) (hι : ι < μ) (hρ : ρ < μ) (hX : ∀ i, #(X i) ≤ ρ) :
    #(Σ i, X i) < μ ∧ #(Π i, X i) < μ := by
  constructor
  · exact (sigma_uniform_bound X ρ hX).trans_lt
      (Cardinal.mul_lt_of_lt hμ.aleph0_le (hI.trans_lt hι) hρ)
  · exact (pi_uniform_bound X ρ hX).trans_lt
      (power_lt_strongLimit μ ρ #I hμ hρ (hI.trans_lt hι))

/-- Below cofinality, pointwise smallness supplies a common fiber bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variant7aae430c4ef70cf4ba20c62520bbe4a957605c1bf2e429ffb51b49bf914d375f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variant7aae430c4ef70cf4ba20c62520bbe4a957605c1bf2e429ffb51b49bf914d375f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8af74869e9f055953cce202bde92f49c6f7a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
