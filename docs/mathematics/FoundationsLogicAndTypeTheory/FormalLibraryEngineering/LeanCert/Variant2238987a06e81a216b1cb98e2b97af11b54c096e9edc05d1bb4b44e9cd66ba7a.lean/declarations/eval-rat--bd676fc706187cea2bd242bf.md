# eval₀_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4284618f2af451ed67aa3ea8c156ac3b8fa223c274dd163b927ebe2064ce80bf",
  "kind": "def",
  "lexical_name": "eval₀_rat",
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
  "slug": "eval-rat--bd676fc706187cea2bd242bf",
  "source": {
    "blob": "0852111c029e660c237e710c6131acc6a6df249b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 278,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd676fc706187cea2bd242bfa5f6869d98bbd3ec3a0aaff7cdef21e3d907e0f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4284618f2af451ed67aa3ea8c156ac3b8fa223c274dd163b927ebe2064ce80bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eval₀_rat (e : LeanCert.Core.Expr) (x : ℚ) : ℚ :=
  match e with
  | .const q => q
  | .var _ => x
  | .add e₁ e₂ => eval₀_rat e₁ x + eval₀_rat e₂ x
  | .mul e₁ e₂ => eval₀_rat e₁ x * eval₀_rat e₂ x
  | .neg e => -eval₀_rat e x
  | .inv e => (eval₀_rat e x)⁻¹
  | .exp _ => 0  -- Not computable over ℚ
  | .sin _ => 0  -- Not computable over ℚ
  | .cos _ => 0  -- Not computable over ℚ
  | .log _ => 0  -- Not computable over ℚ
  | .atan _ => 0  -- Not computable over ℚ
  | .arsinh _ => 0  -- Not computable over ℚ
  | .atanh _ => 0  -- Not computable over ℚ
  | .sinc _ => 0  -- Not computable over ℚ
  | .erf _ => 0  -- Not computable over ℚ
  | .sinh _ => 0  -- Not computable over ℚ
  | .cosh _ => 0  -- Not computable over ℚ
  | .tanh _ => 0  -- Not computable over ℚ
  | .sqrt _ => 0  -- Not computable over ℚ
  | .namedConst c => c.toRatApprox

/-- The unit interval [0, 1] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanCert/Variant2238987a06e81a216b1cb98e2b97af11b54c096e9edc05d1bb4b44e9cd66ba7a.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0852111c029e660c237e710c6131acc6a6df249b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
