# quadraticFactor_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7228098e-f437-609f-669f-f66616c5afb9",
  "kind": "lemma",
  "lexical_name": "quadraticFactor_sq",
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
  "slug": "quadraticfactor-sq--5f7cf318b125cc679c77afe0",
  "source": {
    "blob": "3472d46896fd15416d4a930929c933cbb85997e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f7cf318b125cc679c77afe0de4b42f09f25b97f8d31e419039048dfc8451126",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7228098e-f437-609f-669f-f66616c5afb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quadraticFactor_sq (s : ℂ) :
    ‖quadraticFactor s‖ ^ 2 = EightHeightCertificate.quadraticNormSq s.re (s.im ^ 2) := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  simp only [quadraticFactor, pow_two, Complex.sub_re, Complex.add_re, Complex.mul_re,
    Complex.sub_im, Complex.add_im, Complex.mul_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, mul_zero, sub_zero, add_zero, EightHeightCertificate.quadraticNormSq]
  ring

/-- The quadratic factor's complex roots do not lie in Re(s)<=1. This estimate
uses an exact completed square, not a claim that its real part stays positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightSeed.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3472d46896fd15416d4a930929c933cbb85997e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
