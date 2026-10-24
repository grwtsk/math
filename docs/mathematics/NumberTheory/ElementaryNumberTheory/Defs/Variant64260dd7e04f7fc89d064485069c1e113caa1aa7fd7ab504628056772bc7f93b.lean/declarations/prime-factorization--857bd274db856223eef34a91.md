# Prime.factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c69b3bf-debb-5249-2c88-e19de4200b03",
  "kind": "theorem",
  "lexical_name": "Prime.factorization",
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
  "slug": "prime-factorization--857bd274db856223eef34a91",
  "source": {
    "blob": "083e01712b4ff4005135b80928b7b11e5245b218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 242,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:857bd274db856223eef34a91fe3df68b4fb010b23d3a5deca3a1935ddafc87e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c69b3bf-debb-5249-2c88-e19de4200b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Prime.factorization {p : ℕ} (hp : Prime p) : p.factorization = single p 1 := by
  ext q
  rw [← primeFactorsList_count_eq, primeFactorsList_prime hp, single_apply, count_singleton',
    if_congr eq_comm] <;> rfl

/-- For prime `p` the only prime factor of `p^k` is `p` with multiplicity `k` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083e01712b4ff4005135b80928b7b11e5245b218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
