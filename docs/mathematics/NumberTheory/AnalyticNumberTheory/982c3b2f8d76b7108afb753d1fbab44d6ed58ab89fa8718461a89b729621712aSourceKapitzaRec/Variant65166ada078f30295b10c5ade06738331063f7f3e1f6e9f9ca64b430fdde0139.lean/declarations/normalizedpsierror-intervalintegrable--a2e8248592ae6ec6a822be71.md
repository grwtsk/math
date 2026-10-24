# normalizedPsiError_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99f2fb79-e1f8-4da6-3064-b1c9db88e84a",
  "kind": "theorem",
  "lexical_name": "normalizedPsiError_intervalIntegrable",
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
  "slug": "normalizedpsierror-intervalintegrable--a2e8248592ae6ec6a822be71",
  "source": {
    "blob": "179bf0f1f35fad3b4bb08733a6808cdc2966b535",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant65166ada078f30295b10c5ade06738331063f7f3e1f6e9f9ca64b430fdde0139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2e8248592ae6ec6a822be711784bff17ab6e886315123c1e300f7cece312a47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant65166ada078f30295b10c5ade06738331063f7f3e1f6e9f9ca64b430fdde0139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f2fb79-e1f8-4da6-3064-b1c9db88e84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPsiError_intervalIntegrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable normalizedPsiError volume a b := by
  have he : Continuous (fun s : ℝ => Real.exp (-s)) := by fun_prop
  have hi := (chebyshev_mul_continuous_intervalIntegrable a b hab _ he).sub
    ((continuous_const : Continuous (fun _ : ℝ => (1 : ℝ))).intervalIntegrable a b)
  convert hi using 1
  funext s
  rw [normalizedPsiError_eq_prefix]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant65166ada078f30295b10c5ade06738331063f7f3e1f6e9f9ca64b430fdde0139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/982c3b2f8d76b7108afb753d1fbab44d6ed58ab89fa8718461a89b729621712aSourceKapitzaRec/Variant65166ada078f30295b10c5ade06738331063f7f3e1f6e9f9ca64b430fdde0139.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179bf0f1f35fad3b4bb08733a6808cdc2966b535` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
