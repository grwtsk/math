# lemma_5_1_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abb4d988df589a463537396a6ba3fbd5ac54f13b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 692,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:036c38e7-66db-0531-ad39-87f9083f3e2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4645cbb5-d793-e9e9-2572-e16032809796",
  "kind": "theorem",
  "lexical_name": "lemma_5_1_g",
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
  "slug": "lemma-5-1-g--c64c82b3d214dc7ed1fdd982",
  "source": {
    "blob": "abb4d988df589a463537396a6ba3fbd5ac54f13b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 711,
    "line": 692,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c64c82b3d214dc7ed1fdd98270e151454668a68dbed3d343544d80f8dd19ea90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4645cbb5-d793-e9e9-2572-e16032809796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 692–711.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_5_1_g (f : ℂ → ℂ) (S : Set ℂ)
    (hfin : {z ∈ S | meromorphicOrderAt f z < 0}.Finite) :
    Filter.Tendsto (fun n ↦ sumResiduesIn f (S ∩ {z | l.σ n < z.re})) Filter.atTop
      (nhds (sumResiduesIn f S)) := by
  sorry

@[blueprint
  "ch2-lemma-5-1-h"
  (title := "$C_{n,1}^+ \\to C$ (CH2 Lemma 5.1, contour limit)")
  (statement := /--
  As $n \to \infty$ (so $\sigma_n \to -\infty$), the integral of $G^\star x^s$ over $C_{n,1}^+$
  converges to its integral over the full contour $C$:
  $$ \lim_{n\to\infty} \int_{C_{n,1}^+} G^\star(s) x^s\, ds = \int_C G^\star(s) x^s\, ds. $$ -/)
  (proof := /-- $C_{n,1}^+$ differs from $C$ (truncated at height $\delta$) only in its horizontal
  segment $1 + i\delta \to \sigma_n + i\delta$, which exhausts the ray $1 + i\delta \to -\infty + i\delta$, and its
  vertical segment $\sigma_n + i\delta \to \sigma_n + iT$, which vanishes --- both as in
  \ref{ch2-lemma-5-1-e}, \ref{ch2-lemma-5-1-f}, here at height $\delta$, using boundedness of
  $G^\star x_0^s$ on $L$ and on $C$. -/)
  (latexEnv := "sublemma")
  (discussion := 1455)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean#L692).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb4d988df589a463537396a6ba3fbd5ac54f13b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
