# tsum_G2Term_eq_tsum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a3576d-7ef8-c6a8-9590-a6849a06e4b1",
  "kind": "lemma",
  "lexical_name": "tsum_G2Term_eq_tsum'",
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
  "slug": "tsum-g2term-eq-tsum--ddeed9ab4b4cfaddaaa78a2b",
  "source": {
    "blob": "93558a52addb8f6fea227644a98dc0e86d9c1d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 185,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddeed9ab4b4cfaddaaa78a2bab22891f5a8234e95c21b2624324174af4e67608",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a3576d-7ef8-c6a8-9590-a6849a06e4b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tsum_G2Term_eq_tsum' (z : ℍ) : ∑' (m : Fin 2 → ℤ), G2Term z m =
    ∑' n : ℤ, ∑' m : ℤ, G2Term z ![m, n] := by
  rw [Summable.tsum_comm', tsum_G2Term_eq_tsum]
  · exact G2Term_prod_summable z
  · exact (G2Term_prod_summable z).prod_factor
  · have H := G2Term_summable z
    rw [← ((finTwoArrowEquiv _).trans (.prodComm ..)).symm.summable_iff] at H
    exact H.prod_factor


public section

section transform

/-- This is the key identity for how `G2` transforms under the slash action by `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Transform/Variant34f976a3eb7145dba4fea30483ebe01c8a69e65a83cda0121cb7d1e23b576b04.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93558a52addb8f6fea227644a98dc0e86d9c1d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
