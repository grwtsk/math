# M_isLittleO'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b15b792a-27dd-4b57-3c60-a8412133990c",
  "kind": "lemma",
  "lexical_name": "M_isLittleO'",
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
  "slug": "m-islittleo--c6a7af319a7bae2d08bce9da",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1962,
    "line": 1929,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a7af319a7bae2d08bce9da31d95f579b38f03be5263cccf5fdd918fed6cdf2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b15b792a-27dd-4b57-3c60-a8412133990c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1929–1962.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma M_isLittleO' : M =o[atTop] id := by
  exact M_isLittleO


@[blueprint
  "mu-pnt"
  (title := "M\\\"obius form of prime number theorem")
  (statement := /-- We have $\sum_{n \leq x} \mu(n) = o(x)$. -/)
  (proof := /--
  From the Dirichlet convolution identity
    $$ \mu(n) \log n = - \sum_{d|n} \mu(d) \Lambda(n/d)$$
  and summing we obtain
  $$ \sum_{n \leq x} \mu(n) \log n = - \sum_{d \leq x} \mu(d) \sum_{m \leq x/d} \Lambda(m).$$
  For any $\eps>0$, we have from the prime number theorem that
  $$ \sum_{m \leq x/d} \Lambda(m) = x/d + O(\eps x/d) + O_\eps(1)$$
  (divide into cases depending on whether $x/d$ is large or small compared to $\eps$).
  We conclude that
  $$ \sum_{n \leq x} \mu(n) \log n
    = - x \sum_{d \leq x} \frac{\mu(d)}{d} + O(\eps x \log x) + O_\eps(x).$$
  Applying \eqref{mun} we conclude that
  $$ \sum_{n \leq x} \mu(n) \log n = O(\eps x \log x) + O_\eps(x).$$
  and hence
  $$ \sum_{n \leq x} \mu(n) \log x
    = O(\eps x \log x) + O_\eps(x) + O( \sum_{n \leq x} (\log x - \log n) ).$$
  From Stirling's formula one has
  $$  \sum_{n \leq x} (\log x - \log n) = O(x)$$
  thus
  $$ \sum_{n \leq x} \mu(n) \log x = O(\eps x \log x) + O_\eps(x)$$
  and thus
  $$ \sum_{n \leq x} \mu(n) = O(\eps x) + O_\eps(\frac{x}{\log x}).$$
  Sending $\eps \to 0$ we obtain the claim.
  -/)
  (proofUses := ["WeakPNT", "mun"])
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L1929).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
