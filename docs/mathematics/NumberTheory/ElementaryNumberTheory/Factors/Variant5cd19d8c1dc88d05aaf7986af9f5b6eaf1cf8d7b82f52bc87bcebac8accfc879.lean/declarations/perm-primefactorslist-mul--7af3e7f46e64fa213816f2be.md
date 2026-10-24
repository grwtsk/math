# perm_primeFactorsList_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49ec6418-1281-a3ca-8522-1e4d4f845dbc",
  "kind": "theorem",
  "lexical_name": "perm_primeFactorsList_mul",
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
  "slug": "perm-primefactorslist-mul--7af3e7f46e64fa213816f2be",
  "source": {
    "blob": "747602f04098ab86237467f1a3966af27f87249d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 196,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af3e7f46e64fa213816f2becb7954bd805c87fd412716f08f8b8af0d4c66cc3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49ec6418-1281-a3ca-8522-1e4d4f845dbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_primeFactorsList_mul {a b : ℕ} (ha : a ≠ 0) (hb : b ≠ 0) :
    (a * b).primeFactorsList ~ a.primeFactorsList ++ b.primeFactorsList := by
  refine (primeFactorsList_unique ?_ ?_).symm
  · rw [List.prod_append, prod_primeFactorsList ha, prod_primeFactorsList hb]
  · intro p hp
    rw [List.mem_append] at hp
    rcases hp with hp' | hp' <;> exact prime_of_mem_primeFactorsList hp'

/-- For coprime `a` and `b`, the prime factors of `a * b` are the union of those of `a` and `b` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747602f04098ab86237467f1a3966af27f87249d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
