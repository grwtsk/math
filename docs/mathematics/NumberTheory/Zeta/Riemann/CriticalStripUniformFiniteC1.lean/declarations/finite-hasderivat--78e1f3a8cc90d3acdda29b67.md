# finite_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7ebb9ee-8ec7-1bc0-1a9c-4cfcde729f34",
  "kind": "lemma",
  "lexical_name": "finite_hasDerivAt",
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
  "slug": "finite-hasderivat--78e1f3a8cc90d3acdda29b67",
  "source": {
    "blob": "25b29233df2adc8c915dabbce81ca8ccf6f08d96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e1f3a8cc90d3acdda29b6722bbad45bb225dce34397422c9533a27ccfbe9bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7ebb9ee-8ec7-1bc0-1a9c-4cfcde729f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_hasDerivAt {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    HasDerivAt (finiteModel N) (finiteSlope N s) s := by
  have he : finiteModel N = fun z =>
      (z-1)*(∑ k ∈ Finset.Icc 1 N,UniformPowerC1.power k z)+weightC N z*UniformPowerC1.power N z := by
    funext z
    simpa only [finiteDirichletPowerSum,UniformPowerC1.power] using finiteModel_regroup hN z
  rw [he]
  have hsum := HasDerivAt.fun_sum (u := Finset.Icc 1 N)
    (fun k hk => UniformPowerC1.power_hasDerivAt (Finset.mem_Icc.mp hk).1 s)
  have h := (((hasDerivAt_id s).sub_const 1).mul hsum).add
    ((weight_hasDerivAt N s).mul (UniformPowerC1.power_hasDerivAt hN s))
  convert h using 1 <;> simp only [finiteSlope,powerSlope,one_mul] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripUniformFiniteC1.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b29233df2adc8c915dabbce81ca8ccf6f08d96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
