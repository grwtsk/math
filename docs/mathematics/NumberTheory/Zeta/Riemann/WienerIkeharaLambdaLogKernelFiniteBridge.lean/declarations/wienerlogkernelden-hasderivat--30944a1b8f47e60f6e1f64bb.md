# wienerLogKernelDen_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09e0e99b-2450-1c08-dcec-b2ed526952df",
  "kind": "theorem",
  "lexical_name": "wienerLogKernelDen_hasDerivAt",
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
  "slug": "wienerlogkernelden-hasderivat--30944a1b8f47e60f6e1f64bb",
  "source": {
    "blob": "ac9a6976c068cb036133ffedbe789e3057e9c482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30944a1b8f47e60f6e1f64bbf6c76b68797a55172faea640d7dc82460ca1a683",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09e0e99b-2450-1c08-dcec-b2ed526952df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerLogKernelDen_hasDerivAt (v : ℝ) :
    HasDerivAt wienerLogKernelDen
      (Real.exp v *
        (1 + (v / wienerLogKernelC) ^ 2 +
          2 * v / wienerLogKernelC ^ 2)) v := by
  have hd :
      HasDerivAt
        (fun x : ℝ => x / wienerLogKernelC)
        (1 / wienerLogKernelC) v := by
    convert (hasDerivAt_id v).div_const wienerLogKernelC using 1 <;> ring
  have hpoly :
      HasDerivAt
        (fun x : ℝ => 1 + (x / wienerLogKernelC) ^ 2)
        (2 * (v / wienerLogKernelC) *
          (1 / wienerLogKernelC)) v := by
    convert (hasDerivAt_const v (1 : ℝ)).add (hd.pow 2) using 1 <;> ring
  have hprod := (Real.hasDerivAt_exp v).mul hpoly
  convert hprod using 1 <;> ring

/-- The crucial discriminant estimate: the denominator derivative
has strictly positive sign for EVERY real v, including v<0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9a6976c068cb036133ffedbe789e3057e9c482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
