# encoded_source_refines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a35ebe18-e328-e3db-228b-27e0e39a570d",
  "kind": "theorem",
  "lexical_name": "encoded_source_refines",
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
  "slug": "encoded-source-refines--a4fcfbe2f110ab4190c4ef81",
  "source": {
    "blob": "a635bbbe5b1afa30c7225b36fd283f94c32f9cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4fcfbe2f110ab4190c4ef81872ef3ee52c1576bcebf02a853a95874317fa288",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a35ebe18-e328-e3db-228b-27e0e39a570d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encoded_source_refines {ι : Type*} (s : Finset ι)
    (parent : QuadraticEvaluationCode ℂ)
    (child : ι → QuadraticEvaluationCode ℂ)
    (g : ℝ → ℂ) (childFunction : ι → ℝ → ℂ) (t u : ℝ)
    (refines : ∀ v, g v = ∑ i ∈ s, childFunction i v) :
    parent.encode (sourcePayload g t u) =
      ∑ i ∈ s, transport parent.toCode (child i).toCode
        ((child i).encode (sourcePayload (childFunction i) t u)) := by
  exact encode_aggregate s parent.toCode (fun i => (child i).toCode)
    (sourcePayload g t u) (fun i => sourcePayload (childFunction i) t u)
    (sourcePayload_refines s g childFunction t u refines)

/-- Source-preserving Reed--Solomon refinement with all certified errors returned to the
actual screw-kernel functional.

The parent audit error is the aggregate comparison seam `δ_B`; each child audit error is
its independent source enclosure `ε_j`.  The coverage proof is stored in the parent audit
record.  Syndrome and comparison data remain available for separate falsification and
positivity checks but do not silently strengthen this analytic estimate.  Instantiating
`g` with `zeroBinFunction B root multiplicity` gives the stated finite-zero-bin theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ScrewKernelRefinement.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a635bbbe5b1afa30c7225b36fd283f94c32f9cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
