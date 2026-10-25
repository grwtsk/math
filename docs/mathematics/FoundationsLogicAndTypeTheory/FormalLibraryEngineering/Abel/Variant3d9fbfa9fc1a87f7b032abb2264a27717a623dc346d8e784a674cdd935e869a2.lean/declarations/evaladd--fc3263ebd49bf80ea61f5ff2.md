# evalAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81a93aaeb941cc17e65ed461392800d03042336c2b9f8439568f03ac8b5451c5",
  "kind": "def",
  "lexical_name": "evalAdd",
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
  "slug": "evaladd--fc3263ebd49bf80ea61f5ff2",
  "source": {
    "blob": "937cb3bbb356759b749c89ee242f247057484444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3263ebd49bf80ea61f5ff2ff4192ea00c0cb475d72f09f3599668a2d8c63ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81a93aaeb941cc17e65ed461392800d03042336c2b9f8439568f03ac8b5451c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalAdd : NormalExpr → NormalExpr → M (NormalExpr × Expr)
  | zero _, e₂ => do
    let p ← mkAppM ``zero_add #[e₂]
    return (e₂, p)
  | e₁, zero _ => do
    let p ← mkAppM ``add_zero #[e₁]
    return (e₁, p)
  | he₁@(nterm e₁ n₁ x₁ a₁), he₂@(nterm e₂ n₂ x₂ a₂) => do
    if x₁.1 = x₂.1 then
      let n' ← Mathlib.Meta.NormNum.eval (← mkAppM ``HAdd.hAdd #[n₁.1, n₂.1])
      let (a', h₂) ← evalAdd a₁ a₂
      let k := n₁.2 + n₂.2
      let p₁ ← iapp ``term_add_term
        #[n₁.1, x₁.2, a₁, n₂.1, a₂, n'.expr, a', ← n'.getProof, h₂]
      if k = 0 then do
        let p ← mkEqTrans p₁ (← iapp ``zero_term #[x₁.2, a'])
        return (a', p)
      else return (← term' (n'.expr, k) x₁ a', p₁)
    else if x₁.1 < x₂.1 then do
      let (a', h) ← evalAdd a₁ he₂
      return (← term' n₁ x₁ a', ← iapp ``term_add_const #[n₁.1, x₁.2, a₁, e₂, a', h])
    else do
      let (a', h) ← evalAdd he₁ a₂
      return (← term' n₂ x₂ a', ← iapp ``const_add_term #[e₁, n₂.1, x₂.2, a₂, a', h])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Abel/Variant3d9fbfa9fc1a87f7b032abb2264a27717a623dc346d8e784a674cdd935e869a2.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937cb3bbb356759b749c89ee242f247057484444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
