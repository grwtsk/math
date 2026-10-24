# parsePock3Mode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21812ce977634dcd041d3346079e29c811e5be7d006a9a4703bffd7b811b290e",
  "kind": "def",
  "lexical_name": "parsePock3Mode",
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
  "slug": "parsepock3mode--aaecdde0048bffee2aea3b61",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaecdde0048bffee2aea3b6164536c5756103ba8b4bb88dc42914fbf5465d4dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21812ce977634dcd041d3346079e29c811e5be7d006a9a4703bffd7b811b290e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def parsePock3Mode (stx : TSyntax ``pock3_mode) (dict : PrimeDict) :
    MetaM Q(Pocklington3CertMode) := match stx with
  | `(pock3_mode| $n:num) =>
    have n := n.getNat
    if n = 0 then return q(.zero) else do
      have nE : Q(ℕ) := mkNatLit n
      let pf : Q(($nE).Prime) ← dict.getM n
      return q(.prime $nE $pf)
  | `(pock3_mode| <) => return q(.lt)
  | _ => Elab.throwUnsupportedSyntax

/-- Syntax for a `pock3` certificate step: `(N, root, m, mode, F)`.

- `N`: the number to certify as prime
- `root`: a pseudo-primitive root (for the factored part of `N - 1`)
- `m`: sieve bound — all `l * F + 1` for `1 ≤ l < m` must not divide `N`
  (smaller `m` = less sieve work but requires larger `F`)
- `mode`: how to discharge the non-square condition (see `pock3_mode`)
- `F`: the even, fully-factored divisor of `N - 1`, written as `2 ^ e * p₁ ^ e₁ * p₂ * ...`
  (the power of 2 must come first)

```lean
-- Certify 73471: root 3, sieve bound 1, non-square witness 7, F = 2 * 31
pock3 (73471, 3, 1, 7, 2 * 31)

-- With higher power of 2 and multiple odd factors:
pock3 (32560621, 2, 1, 7, 2 ^ 2 * 3 * 29)
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
