# LSeries_liouville_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:118703cc-7591-ee48-31ef-c01a442a6d02",
  "kind": "lemma",
  "lexical_name": "LSeries_liouville_eq",
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
  "slug": "lseries-liouville-eq--8e3855b06eafa26523fb8ee1",
  "source": {
    "blob": "f10936542ce26f4e3d13f8c80e4a797c94ed7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 1007,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e3855b06eafa26523fb8ee128a8a87051078b244ae4e5dbc9819a141a9c9829",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:118703cc-7591-ee48-31ef-c01a442a6d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1007–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeries_liouville_eq {s : ℂ} (hs : 1 < s.re) :
    LSeries (↗(liouville : ArithmeticFunction ℤ)) s = riemannZeta (2 * s) / riemannZeta s := by
  sorry

/-- `liouville` agrees with `moebius` on square-free numbers -/
@[blueprint
  "liouville_eq_moebius_on_squarefree"
  (title := "liouville eq moebius on squarefree")
  (statement := /-- The Liouville function agrees with the Möbius function on square-free numbers. -/)
  (proof := /--
  The Liouville function $\lambda(n)$ is defined as $(-1)^{\Omega(n)}$, where $\Omega(n)$ counts the total number of prime factors of $n$ with multiplicity. The Möbius function $\mu(n)$ is defined as $0$ if $n$ has a squared prime factor, and otherwise it is $(-1)^{\omega(n)}$, where $\omega(n)$ counts the number of distinct prime factors of $n$. For square-free numbers, we have $\Omega(n) = \omega(n)$, since there are no repeated prime factors. Therefore, for square-free numbers, we have $\lambda(n) = (-1)^{\omega(n)} = \mu(n)$, which shows that the Liouville function agrees with the Möbius function on square-free numbers.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean#L1007).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10936542ce26f4e3d13f8c80e4a797c94ed7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
