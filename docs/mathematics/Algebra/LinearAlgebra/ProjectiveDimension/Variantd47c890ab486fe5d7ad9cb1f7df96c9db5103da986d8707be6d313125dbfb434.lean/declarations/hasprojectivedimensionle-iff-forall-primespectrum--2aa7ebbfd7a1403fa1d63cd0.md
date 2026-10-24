# hasProjectiveDimensionLE_iff_forall_primeSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c20bc558-4c1c-b4bd-e5ca-05f2f5e508a0",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLE_iff_forall_primeSpectrum",
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
  "slug": "hasprojectivedimensionle-iff-forall-primespectrum--2aa7ebbfd7a1403fa1d63cd0",
  "source": {
    "blob": "8be8b6b7db30e33748ad464a0a2d358693d137df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa7ebbfd7a1403fa1d63cd0478c88c77fb122be1f4b64fc67e396677ba2c333",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c20bc558-4c1c-b4bd-e5ca-05f2f5e508a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLE_iff_forall_primeSpectrum (n : ℕ) [Small.{v} R]
    [IsNoetherianRing R] (M : ModuleCat.{v} R) [Module.Finite R M] : HasProjectiveDimensionLE M n ↔
    ∀ (p : PrimeSpectrum R), HasProjectiveDimensionLE (M.localizedModule p.1.primeCompl) n :=
  ⟨fun _ p ↦ M.localizedModule_hasProjectiveDimensionLE n p.1.primeCompl,
    fun h ↦ (M.hasProjectiveDimensionLE_iff_forall_maximalSpectrum n).mpr
    fun m ↦ h ⟨m.1, Ideal.IsMaximal.isPrime' m.1⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectiveDimension/Variantd47c890ab486fe5d7ad9cb1f7df96c9db5103da986d8707be6d313125dbfb434.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be8b6b7db30e33748ad464a0a2d358693d137df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
