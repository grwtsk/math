# numeratorHom_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84e4cc76-2f2a-1756-613a-62bae7c2e376",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26b763c5-c1fd-b1c8-0344-1dafe39d21a9",
  "kind": "theorem",
  "lexical_name": "numeratorHom_inj",
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
  "slug": "numeratorhom-inj--9b87d8a3cb9dc8950b40e5f7",
  "source": {
    "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 198,
    "path": "GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b87d8a3cb9dc8950b40e5f7d1d10cad494e5461a7090d6820c1fbe383407baa",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b763c5-c1fd-b1c8-0344-1dafe39d21a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem numeratorHom_inj (hS : S ≤ nonZeroDivisorsRight R) :
    Function.Injective (numeratorHom : R → R[S⁻¹]) :=
  fun r₁ r₂ h => by
  rw [numeratorHom_apply, numeratorHom_apply, oreDiv_eq_iff] at h
  rcases h with ⟨u, v, h₁, h₂⟩
  simp only [S.coe_one, mul_one, Submonoid.smul_def, smul_eq_mul] at h₁ h₂
  rw [← h₂, ← sub_eq_zero, ← mul_sub] at h₁
  exact (sub_eq_zero.mp (hS u.2 _ h₁)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984c72969891f4231b6ea7f64064d5b47c2d1b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
