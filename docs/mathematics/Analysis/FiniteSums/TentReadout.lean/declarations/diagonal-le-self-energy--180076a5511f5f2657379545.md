# diagonal_le_self_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b330d1ba-56b7-c169-63dd-733fb1ed36db",
  "kind": "theorem",
  "lexical_name": "diagonal_le_self_energy",
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
  "slug": "diagonal-le-self-energy--180076a5511f5f2657379545",
  "source": {
    "blob": "6edec918598b27fd4b794012cfc60b36fdd0178a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Analysis/FiniteSum/TentReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180076a5511f5f265737954522da7179fc7d43c4f79d60b0c61d420f76f6ece8",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/TentReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b330d1ba-56b7-c169-63dd-733fb1ed36db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_le_self_energy {ι : Type*} (s : Finset ι) (a t : ι → ℝ)
    (ht : ∀ i∈s, 0≤t i ∧ t i≤1) :
    (∑ i∈s, (a i*t i)^2)≤∑ i∈s, (a i)^2 := by
  apply Finset.sum_le_sum
  intro i hi
  have hsq : (t i)^2≤1 := by nlinarith [(ht i hi).1,(ht i hi).2]
  calc
    (a i*t i)^2=(a i)^2*(t i)^2 := by ring
    _ ≤ (a i)^2*1 := mul_le_mul_of_nonneg_left hsq (sq_nonneg _)
    _ = (a i)^2 := mul_one _

/-- The off-diagonal residual is kept signed, not replaced by its absolute value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/TentReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/TentReadout.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6edec918598b27fd4b794012cfc60b36fdd0178a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
