# evalDomainValidExtended

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2eef8ad9050cb09124f2bb98bb75aae2848a47239d36b58b640d090dfe576d0",
  "kind": "def",
  "lexical_name": "evalDomainValidExtended",
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
  "slug": "evaldomainvalidextended--d27a6935a13c1d7ec6a1bf50",
  "source": {
    "blob": "f96d0904b8789741ec7593dd0fed34aec5dc2b77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 504,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d27a6935a13c1d7ec6a1bf5088ef48e8a714029d962e27b0db30c62f0eca8783",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2eef8ad9050cb09124f2bb98bb75aae2848a47239d36b58b640d090dfe576d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalDomainValidExtended (e : Expr) (ρ : ExtendedEnv) (cfg : ExtendedConfig := {}) : Prop :=
  match e with
  | Expr.const _ => True
  | Expr.var _ => True
  | Expr.add e₁ e₂ => evalDomainValidExtended e₁ ρ cfg ∧ evalDomainValidExtended e₂ ρ cfg
  | Expr.mul e₁ e₂ => evalDomainValidExtended e₁ ρ cfg ∧ evalDomainValidExtended e₂ ρ cfg
  | Expr.neg e => evalDomainValidExtended e ρ cfg
  | Expr.inv e => evalDomainValidExtended e ρ cfg
  | Expr.exp e => evalDomainValidExtended e ρ cfg
  | Expr.sin e => evalDomainValidExtended e ρ cfg
  | Expr.cos e => evalDomainValidExtended e ρ cfg
  | Expr.log e => evalDomainValidExtended e ρ cfg ∧ (evalExtended e ρ cfg).hull.lo > 0
  | Expr.atan e => evalDomainValidExtended e ρ cfg
  | Expr.arsinh e => evalDomainValidExtended e ρ cfg
  | Expr.atanh e => evalDomainValidExtended e ρ cfg
  | Expr.sinc e => evalDomainValidExtended e ρ cfg
  | Expr.erf e => evalDomainValidExtended e ρ cfg
  | Expr.sinh e => evalDomainValidExtended e ρ cfg
  | Expr.cosh e => evalDomainValidExtended e ρ cfg
  | Expr.tanh e => evalDomainValidExtended e ρ cfg
  | Expr.sqrt e => evalDomainValidExtended e ρ cfg
  | Expr.namedConst _ => True

/-- Domain validity is trivially true for ExprSupported expressions (which exclude log). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant4a434e6c1461a27f69c1a804aba36e41c7883b86549901ad29a0bca7ee7af5cb.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96d0904b8789741ec7593dd0fed34aec5dc2b77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
