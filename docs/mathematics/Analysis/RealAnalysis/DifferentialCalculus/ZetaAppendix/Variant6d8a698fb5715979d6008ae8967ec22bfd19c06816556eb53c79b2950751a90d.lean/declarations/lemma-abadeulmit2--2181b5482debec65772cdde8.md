# lemma_abadeulmit2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2723,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2de52546-c206-1fee-3e7e-817d9a7b00b4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7741c519-24a6-3722-16e0-adb14786ec65",
  "kind": "theorem",
  "lexical_name": "lemma_abadeulmit2",
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
  "slug": "lemma-abadeulmit2--2181b5482debec65772cdde8",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2753,
    "line": 2723,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2181b5482debec65772cdde80b48a53a9955bdef48c9117b01a291849e19df99",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7741c519-24a6-3722-16e0-adb14786ec65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2723–2753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadeulmit2 {z : ℂ} (hz : z ∈ integerComplement) :
    (π ^ 2 / (sin (π * z) ^ 2)) = ∑' (n : ℤ), (1 / ((z - n) ^ 2)) := by
  rw [← lemma_abadeulmit2_deriv_neg_pi_mul_cot_pi_mul hz]
  rw [← lemma_abadeulmit2_tsum_one_div_sub_int_sq hz]

@[blueprint
  "lem:abadimpseri"
  (title := "Estimate for an inverse cubic series")
  (statement := /--
For $\vartheta\in \mathbb{R}$ with $0\leq |\vartheta|< 1$,
\[\sum_n\left(\frac{1}{(n-\vartheta)^3} + \frac{1}{(n+\vartheta)^3}\right)
\leq \frac{1}{(1-|\vartheta|)^3} + 2\zeta(3)-1.\]
-/)
  (proof := /--
Since $\frac{1}{(n-\vartheta)^3} + \frac{1}{(n+\vartheta)^3}$ is even,
we may replace $\vartheta$ by $|\vartheta|$. Then we rearrange the sum:
\[\sum_{n=1}^\infty \left(\frac{1}{(n-|\vartheta|)^3} + \frac{1}{(n+|\vartheta|)^3}\right)
  = \frac{1}{(1-|\vartheta|)^3}
  + \sum_{n=1}^\infty \left(\frac{1}{\left(n+1-|\vartheta|\right)^3}
  + \frac{1}{\left(n+|\vartheta|\right)^3}\right).\]
We may write $(n+1-|\vartheta|)^3$, $(n+|\vartheta|)^3$
as $(n+\frac{1}{2}-t)^3$, $(n+\frac{1}{2} + t)^3$ for $t = |\vartheta|-1/2$.
Since $1/u^3$ is convex, $\frac{1}{(n+1/2-t)^3} + \frac{1}{(n+1/2+t)^3}$ reaches its
maximum on $[-1/2,1/2]$ at the endpoints. Hence
\[\sum_{n=1}^\infty \left(\frac{1}{\left(n+1-|\vartheta|\right)^3}
  + \frac{1}{\left(n+|\vartheta|\right)^3}\right)
  \leq \sum_{n=1}^\infty \left(\frac{1}{n^3} + \frac{1}{(n+1)^3}\right) = 2 \zeta(3)-1.
\]
-/)
  (latexEnv := "lemma")
  (discussion := 571)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L2723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
