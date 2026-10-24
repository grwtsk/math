# condVar_ae_eq_condExp_sq_sub_sq_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a729724e505ef4b59de55221fd18c6fd8fc04fb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41a92b05-8518-2793-777d-404a8db30c9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11224e83-370f-f59a-f21b-dbf8e424d11a",
  "kind": "lemma",
  "lexical_name": "condVar_ae_eq_condExp_sq_sub_sq_condExp",
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
  "slug": "condvar-ae-eq-condexp-sq-sub-sq-condexp--bb43439043f1f103973a7f1a",
  "source": {
    "blob": "a729724e505ef4b59de55221fd18c6fd8fc04fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb43439043f1f103973a7f1ae48810181d59201af037fb0822c04fbcdac38db1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11224e83-370f-f59a-f21b-dbf8e424d11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condVar_ae_eq_condExp_sq_sub_sq_condExp (hm : m ≤ m₀) [IsFiniteMeasure μ] (hX : MemLp X 2 μ) :
    Var[X; μ | m] =ᵐ[μ] μ[X ^ 2 | m] - μ[X | m] ^ 2 := by
  calc
    Var[X; μ | m]
    _ = μ[X ^ 2 - 2 * X * μ[X | m] + μ[X | m] ^ 2 | m] := by rw [condVar, sub_sq]
    _ =ᵐ[μ] μ[X ^ 2 | m] - 2 * μ[X | m] ^ 2 + μ[X | m] ^ 2 := by
      have aux₀ : Integrable (X ^ 2) μ := hX.integrable_sq
      have aux₁ : Integrable (2 * X * μ[X | m]) μ := by
        rw [mul_assoc]
        exact (memLp_one_iff_integrable.1 <| hX.condExp.mul hX).const_mul _
      have aux₂ : Integrable (μ[X | m] ^ 2) μ := hX.condExp.integrable_sq
      filter_upwards [condExp_add (m := m) (aux₀.sub aux₁) aux₂, condExp_sub (m := m) aux₀ aux₁,
        condExp_mul_of_stronglyMeasurable_right stronglyMeasurable_condExp aux₁
          ((hX.integrable one_le_two).const_mul _), condExp_ofNat (m := m) 2 X]
        with ω hω₀ hω₁ hω₂ hω₃
      simp [hω₀, hω₁, hω₂, hω₃, condExp_const,
        condExp_of_stronglyMeasurable hm (stronglyMeasurable_condExp.pow _) aux₂]
      simp [mul_assoc, sq]
    _ = μ[X ^ 2 | m] - μ[X | m] ^ 2 := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant38681cf67a03ec32a73420fd864638e29c046b1f0d1eb6dfda45d3c05005252a.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a729724e505ef4b59de55221fd18c6fd8fc04fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
