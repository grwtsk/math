# exists_isInternal_prime_power_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a4b65f709a277303058afe98ae27abea5355961",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77ff6291-49d7-5f1b-c6e9-ebd23460af43",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3307f300-04a8-65c1-d62f-af43d706bd68",
  "kind": "theorem",
  "lexical_name": "exists_isInternal_prime_power_torsion",
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
  "slug": "exists-isinternal-prime-power-torsion--8646f95764bfad2220fb9b6b",
  "source": {
    "blob": "9a4b65f709a277303058afe98ae27abea5355961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 72,
    "path": "GRWTSK/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8646f95764bfad2220fb9b6b7e43571dba909c6f5d941e1abfbd9a42852a72fc",
  "verification": {
    "reference": "docs/verification/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3307f300-04a8-65c1-d62f-af43d706bd68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isInternal_prime_power_torsion [Module.Finite R M] (hM : Module.IsTorsion R M) :
    ∃ (P : Finset <| Ideal R) (_ : DecidableEq P) (_ : ∀ p ∈ P, Prime p) (e : P → ℕ),
      DirectSum.IsInternal fun p : P => torsionBySet R M (p ^ e p : Ideal R) := by
  classical
  exact ⟨_, _, fun p hp => prime_of_factor p (Multiset.mem_toFinset.mp hp), _,
    isInternal_prime_power_torsion hM⟩

end Submodule
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DedekindDomain/Variantf70f652f20c677443e02359c5e3ea0eec99525ebac29195cda4dd4d004958001.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a4b65f709a277303058afe98ae27abea5355961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
