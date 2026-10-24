# exprContinuousDomainValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a42d7c7cd2a507f3e52b403948123db3750de0ba502c1191565346d95644d38",
  "kind": "def",
  "lexical_name": "exprContinuousDomainValid",
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
  "slug": "exprcontinuousdomainvalid--10b6c62e184ef6c9490d30a1",
  "source": {
    "blob": "9ece43ee45b550d676b203990572320b242e0349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10b6c62e184ef6c9490d30a1b12fb5a6ad21eb84b4fe671274cbd43acdb4062c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a42d7c7cd2a507f3e52b403948123db3750de0ba502c1191565346d95644d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exprContinuousDomainValid (e : LExpr) (s : Set ℝ) : Prop :=
  match e with
  | LeanCert.Core.Expr.const _ => True
  | LeanCert.Core.Expr.var _ => True
  | LeanCert.Core.Expr.add e₁ e₂ => exprContinuousDomainValid e₁ s ∧ exprContinuousDomainValid e₂ s
  | LeanCert.Core.Expr.mul e₁ e₂ => exprContinuousDomainValid e₁ s ∧ exprContinuousDomainValid e₂ s
  | LeanCert.Core.Expr.neg e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.inv e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.exp e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.sin e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.cos e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.log e => exprContinuousDomainValid e s ∧
      ∀ x ∈ s, 0 < LeanCert.Core.Expr.eval (fun _ => x) e
  | LeanCert.Core.Expr.atan e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.arsinh e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.atanh e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.sinc e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.erf e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.sinh e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.cosh e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.tanh e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.sqrt e => exprContinuousDomainValid e s
  | LeanCert.Core.Expr.namedConst _ => True

/-- Domain validity is trivially true for ExprSupported expressions (which exclude log). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece43ee45b550d676b203990572320b242e0349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
