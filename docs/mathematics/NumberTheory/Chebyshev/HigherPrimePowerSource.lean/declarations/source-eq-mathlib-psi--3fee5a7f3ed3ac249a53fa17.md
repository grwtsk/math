# source_eq_mathlib_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f62f1430-b023-e508-92df-575f6f181a08",
  "kind": "theorem",
  "lexical_name": "source_eq_mathlib_psi",
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
  "slug": "source-eq-mathlib-psi--3fee5a7f3ed3ac249a53fa17",
  "source": {
    "blob": "648ba8cc9873e647af70dd079847d85f7eea27f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fee5a7f3ed3ac249a53fa176b59900b268613bc1bbbf03079a5aa17c8c3479c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f62f1430-b023-e508-92df-575f6f181a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_eq_mathlib_psi (x : ℝ) :
    chebyshevPrimePower x = _root_.Chebyshev.psi x := by
  unfold chebyshevPrimePower _root_.Chebyshev.psi
  apply Finset.sum_subset
  · intro m hm
    have h := Finset.mem_Icc.mp hm
    exact Finset.mem_Ioc.mpr ⟨by omega, h.2⟩
  · intro m hm hnot
    have h := Finset.mem_Ioc.mp hm
    have hmone : m = 1 := by
      by_contra hne
      exact hnot (Finset.mem_Icc.mpr ⟨by omega, h.2⟩)
    simpa only [hmone] using ArithmeticFunction.vonMangoldt_apply_one

/-- Finite endpoint subtraction with the exact left-open/right-closed inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ba8cc9873e647af70dd079847d85f7eea27f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
