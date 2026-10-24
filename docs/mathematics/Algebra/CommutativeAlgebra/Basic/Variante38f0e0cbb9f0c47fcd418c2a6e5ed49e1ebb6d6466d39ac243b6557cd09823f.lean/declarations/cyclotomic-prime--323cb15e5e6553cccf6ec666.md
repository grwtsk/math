# cyclotomic_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 367,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:557dfb0e-f270-4fa7-fd3f-46f2baf924be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd79b158-0701-f461-a5e2-030c11e67de8",
  "kind": "theorem",
  "lexical_name": "cyclotomic_prime",
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
  "slug": "cyclotomic-prime--323cb15e5e6553cccf6ec666",
  "source": {
    "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 367,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:323cb15e5e6553cccf6ec666df560b13a336d1041e0473aab841284a4e3b8b6f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd79b158-0701-f461-a5e2-030c11e67de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_prime (R : Type*) [Ring R] (p : ℕ) [hp : Fact p.Prime] :
    cyclotomic p R = ∑ i ∈ Finset.range p, X ^ i := by
  suffices cyclotomic p ℤ = ∑ i ∈ range p, X ^ i by
    simpa only [map_cyclotomic_int, Polynomial.map_sum, Polynomial.map_pow, Polynomial.map_X] using
      congr_arg (map (Int.castRingHom R)) this
  rw [← prod_cyclotomic_eq_geom_sum hp.out.pos, hp.out.divisors,
    erase_insert (mem_singleton.not.2 hp.out.ne_one.symm), prod_singleton]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f853660d247b96b7f961ca389dffed335cd006d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
