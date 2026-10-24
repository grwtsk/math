# Int.natAbs_eq_of_chain_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "966b4861c2fcf951a36c853ed1d97f02b150f986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd4b7b31-2095-383a-bb5b-78f5aad72708",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a4038bc-4ef0-e74d-555c-dcb9ce5ca964",
  "kind": "theorem",
  "lexical_name": "Int.natAbs_eq_of_chain_dvd",
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
  "slug": "int-natabs-eq-of-chain-dvd--dba890c4f64dea64cedd6db7",
  "source": {
    "blob": "966b4861c2fcf951a36c853ed1d97f02b150f986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba890c4f64dea64cedd6db7bdf32b82c01227f61338d01b5e06304c79fb36c3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a4038bc-4ef0-e74d-555c-dcb9ce5ca964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.natAbs_eq_of_chain_dvd {l : Cycle ℤ} {x y : ℤ} (hl : l.Chain (· ∣ ·)) (hx : x ∈ l)
    (hy : y ∈ l) : x.natAbs = y.natAbs := by
  rw [Cycle.chain_iff_pairwise] at hl
  exact Int.natAbs_eq_of_dvd_dvd (hl x hx y hy) (hl y hy x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966b4861c2fcf951a36c853ed1d97f02b150f986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
