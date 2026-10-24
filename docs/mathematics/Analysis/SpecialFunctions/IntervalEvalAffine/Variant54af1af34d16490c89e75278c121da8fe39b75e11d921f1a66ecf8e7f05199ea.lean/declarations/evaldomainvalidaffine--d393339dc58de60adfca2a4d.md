# evalDomainValidAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb3104c1a477152d84b3e0a4652614fe15910a4a9ce26d9a4c475adfb04ddcad",
  "kind": "def",
  "lexical_name": "evalDomainValidAffine",
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
  "slug": "evaldomainvalidaffine--d393339dc58de60adfca2a4d",
  "source": {
    "blob": "efeff7616967a6a26ef787568fdf4fe3e07002e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 190,
    "path": "GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d393339dc58de60adfca2a4d1a02d71f6fb0e980cc06e3641d710847c3c3ab8f",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb3104c1a477152d84b3e0a4652614fe15910a4a9ce26d9a4c475adfb04ddcad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDomainValidAffine (e : Expr) (ρ : AffineEnv) (cfg : AffineConfig := {}) : Prop :=
  match e with
  | Expr.const _ => True
  | Expr.var _ => True
  | Expr.add e₁ e₂ => evalDomainValidAffine e₁ ρ cfg ∧ evalDomainValidAffine e₂ ρ cfg
  | Expr.mul e₁ e₂ => evalDomainValidAffine e₁ ρ cfg ∧ evalDomainValidAffine e₂ ρ cfg
  | Expr.neg e => evalDomainValidAffine e ρ cfg
  | Expr.inv e => evalDomainValidAffine e ρ cfg
  | Expr.exp e => evalDomainValidAffine e ρ cfg
  | Expr.sin e => evalDomainValidAffine e ρ cfg
  | Expr.cos e => evalDomainValidAffine e ρ cfg
  | Expr.log e => evalDomainValidAffine e ρ cfg ∧ (evalIntervalAffine e ρ cfg).toInterval.lo > 0
  | Expr.atan e => evalDomainValidAffine e ρ cfg
  | Expr.arsinh e => evalDomainValidAffine e ρ cfg
  | Expr.atanh e => evalDomainValidAffine e ρ cfg
  | Expr.sinc e => evalDomainValidAffine e ρ cfg
  | Expr.erf e => evalDomainValidAffine e ρ cfg
  | Expr.sinh e => evalDomainValidAffine e ρ cfg
  | Expr.cosh e => evalDomainValidAffine e ρ cfg
  | Expr.tanh e => evalDomainValidAffine e ρ cfg
  | Expr.sqrt e => evalDomainValidAffine e ρ cfg
  | Expr.namedConst _ => True

/-- Domain validity is trivially true for ExprSupported expressions (which exclude log). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/IntervalEvalAffine/Variant54af1af34d16490c89e75278c121da8fe39b75e11d921f1a66ecf8e7f05199ea.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efeff7616967a6a26ef787568fdf4fe3e07002e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
