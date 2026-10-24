# sqrt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5ae1c479d61a1f7f9c1f993bf9c7ecad28866147fbbbf4e592962de6f7aa067",
  "kind": "def",
  "lexical_name": "sqrt?",
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
  "slug": "sqrt--ba5c8955961e4a9d8ebf7c5a",
  "source": {
    "blob": "00c11673a88fd82b3a1e3761f0a7dd35fe088dc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba5c8955961e4a9d8ebf7c5ac783c78f4130162c5d796f0f0e29eead07ee874f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5ae1c479d61a1f7f9c1f993bf9c7ecad28866147fbbbf4e592962de6f7aa067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sqrt? (d : DualInterval) : Option DualInterval :=
  if h : IntervalRat.isPositive d.val then
    let sqrt_val := IntervalRat.sqrtInterval d.val
    -- d(sqrt f) = f' / (2 * sqrt(f)) = f' * (1 / (2 * sqrt(f)))
    let deriv_coef := sqrtDerivCoefBound d.val.lo h
    let der' := IntervalRat.mul d.der deriv_coef
    some { val := sqrt_val, der := der' }
  else
    none

end DualInterval

end LeanCert.Engine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Transcendental/Variante4f07961e91995727023b45cb577c8908632916fb69956b1241970ac2074e5f9.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c11673a88fd82b3a1e3761f0a7dd35fe088dc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
