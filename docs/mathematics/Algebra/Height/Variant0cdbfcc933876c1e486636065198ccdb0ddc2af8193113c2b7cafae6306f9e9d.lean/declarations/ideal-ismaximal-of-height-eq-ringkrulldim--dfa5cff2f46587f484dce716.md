# Ideal.isMaximal_of_height_eq_ringKrullDim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fca1d8ee-157d-d539-a1aa-fa6e11959e7c",
  "kind": "theorem",
  "lexical_name": "Ideal.isMaximal_of_height_eq_ringKrullDim",
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
  "slug": "ideal-ismaximal-of-height-eq-ringkrulldim--dfa5cff2f46587f484dce716",
  "source": {
    "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 298,
    "path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa5cff2f46587f484dce71685360cd0bf1f4690b1c80f47056ef06b8f7a6a32",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca1d8ee-157d-d539-a1aa-fa6e11959e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.isMaximal_of_height_eq_ringKrullDim {I : Ideal R} [I.IsPrime]
    [FiniteRingKrullDim R] (e : I.height = ringKrullDim R) : I.IsMaximal := by
  have h : I ≠ ⊤ := Ideal.IsPrime.ne_top'
  obtain ⟨M, hM, hM'⟩ := Ideal.exists_le_maximal I h
  rcases lt_or_eq_of_le hM' with (hM' | hM')
  · have h1 := Ideal.height_strict_mono_of_isPrime hM'
    have h2 := e ▸ M.height_le_ringKrullDim_of_ne_top hM.ne_top
    simp [← not_lt, h1] at h2
  · exact hM' ▸ hM

@[deprecated "Use `Ideal.isMaximal_of_height_eq_ringKrullDim` instead." (since := "2026-04-02")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
