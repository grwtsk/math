# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9bb590a049301be1c22333cf2e5469e7e77f013b7aa80af23a02bba62a48fa3",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--3540fe74ea29ba72dae032df",
  "source": {
    "blob": "b8e33cac2901aa64ec406b110001f81c77e4cee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 8,
    "path": "GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterLaplace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3540fe74ea29ba72dae032dfd3a8da6e3b86cecdecd072c7b6e0a655d683e9a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/Checks/Positive/PrimeFilterLaplace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9bb590a049301be1c22333cf2e5469e7e77f013b7aa80af23a02bba62a48fa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {f : ℝ → ℝ} (hf : Continuous f) (hf0 : f 0 = 0) (z : ℂ)
    {p : ℕ} (hp : p.Prime) {T : ℝ} (hpT : Real.log p ≤ T) :
    noteWindowLaplace (primeNoteFilter p f) z T =
      (1-primeLaplaceWeight p z)*noteWindowLaplace f z T +
        primeLaplaceWeight p z*noteLaplaceTail f z (Real.log p) T :=
  noteWindowLaplace_primeFilter hf hf0 z hp hpT
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Moebius/Checks/Positive/PrimeFilterLaplace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/Checks/Positive/PrimeFilterLaplace.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8e33cac2901aa64ec406b110001f81c77e4cee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
