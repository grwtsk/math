# exceptionalKernelTwistedMertensPrefix_even_eq_halfSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca9c23ee-d0e2-e095-c9f6-fbcd73defb86",
  "kind": "theorem",
  "lexical_name": "exceptionalKernelTwistedMertensPrefix_even_eq_halfSum",
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
  "slug": "exceptionalkerneltwistedmertensprefix-even-eq-halfsum--42f9a781324a56027ffcbd54",
  "source": {
    "blob": "c86320aa4fcaa58bb6a06247fa559e8be971d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f9a781324a56027ffcbd546f48e8aab4a44acd8c76cc8e369e7f2f27debf24",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca9c23ee-d0e2-e095-c9f6-fbcd73defb86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exceptionalKernelTwistedMertensPrefix_even_eq_halfSum
    (b d : ℕ) [NeZero d]
    (hNonunit : TwoNonunitSquareModulusParameter d) :
    exceptionalKernelTwistedMertensPrefix b d 0 =
      ∑ m ∈ Finset.Icc 1 (b / 2),
        (moebiusReal (2 * m) : ℂ) * (-1 : ℂ) ^ m := by
  classical
  rw [exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
    b d 0 hNonunit]
  unfold endpointParitySet
  refine Finset.sum_bij'
    (fun u _hu => u / 2)
    (fun m _hm => 2 * m) ?_ ?_ ?_ ?_ ?_
  · intro u hu
    have hu' := Finset.mem_filter.mp hu
    have huI := Finset.mem_Icc.mp hu'.1
    have huEven := hu'.2
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro m hm
    have hmI := Finset.mem_Icc.mp hm
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    omega
  · intro m _hm
    omega
  · intro u hu
    have huEven := (Finset.mem_filter.mp hu).2
    have huEq : 2 * (u / 2) = u := by omega
    rw [huEq]

/-- The even parity exceptional prefix is the odd ordinary-Mertens prefix at
half scale.  The squarefree-zero case in `mu(2m)` is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ExceptionalKernelCharacterChiFour.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86320aa4fcaa58bb6a06247fa559e8be971d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
