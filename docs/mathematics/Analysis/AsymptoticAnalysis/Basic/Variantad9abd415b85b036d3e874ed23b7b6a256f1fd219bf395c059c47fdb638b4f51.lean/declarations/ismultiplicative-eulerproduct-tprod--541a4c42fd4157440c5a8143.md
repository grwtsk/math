# IsMultiplicative.eulerProduct_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3dc16a0-9b31-1615-e884-85223c2f95b0",
  "kind": "theorem",
  "lexical_name": "IsMultiplicative.eulerProduct_tprod",
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
  "slug": "ismultiplicative-eulerproduct-tprod--541a4c42fd4157440c5a8143",
  "source": {
    "blob": "957605101c128a359c8d8b3ea64cb8de69bf1fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 257,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:541a4c42fd4157440c5a8143914e38ac2299d1607b969ac47ec4a24261f661eb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3dc16a0-9b31-1615-e884-85223c2f95b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsMultiplicative.eulerProduct_tprod {f : ArithmeticFunction R}
    (hf : f.IsMultiplicative) (hsum : Summable (‖f ·‖)) :
    ∏' p : Primes, ∑' e, f (p ^ e) = ∑' n, f n :=
  eulerProduct_tprod hf.1 hf.2 hsum f.map_zero

end ArithmeticFunction

end General

section CompletelyMultiplicative

/-!
### Euler Products for completely multiplicative functions

We now assume that `f` is completely multiplicative and has values in a complete normed field `F`.
Then we can use the formula for geometric series to simplify the statement. This leads to
`EulerProduct.eulerProduct_completely_multiplicative_hasProd` and variants.
-/

variable {F : Type*} [NormedField F] [CompleteSpace F]

namespace EulerProduct

-- a helper lemma that is useful below
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantad9abd415b85b036d3e874ed23b7b6a256f1fd219bf395c059c47fdb638b4f51.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957605101c128a359c8d8b3ea64cb8de69bf1fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
