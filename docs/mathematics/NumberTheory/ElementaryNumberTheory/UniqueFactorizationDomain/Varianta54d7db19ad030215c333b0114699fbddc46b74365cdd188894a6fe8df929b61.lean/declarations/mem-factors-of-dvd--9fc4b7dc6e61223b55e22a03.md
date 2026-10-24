# mem_factors'_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e634ab6e-7bf1-5035-e570-50afe666ea99",
  "kind": "theorem",
  "lexical_name": "mem_factors'_of_dvd",
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
  "slug": "mem-factors-of-dvd--9fc4b7dc6e61223b55e22a03",
  "source": {
    "blob": "cf401250dde34a934d25e304e587c93dabbe5bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1611,
    "line": 1605,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc4b7dc6e61223b55e22a0399835f080308cd5511c6be014882e4bb256511b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e634ab6e-7bf1-5035-e570-50afe666ea99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1605–1611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_factors'_of_dvd {a p : α} (ha0 : a ≠ 0) (hp : Irreducible p) (hd : p ∣ a) :
    Subtype.mk (Associates.mk p) ((irreducible_mk _).2 hp) ∈ factors' a := by
  obtain ⟨q, hq, hpq⟩ := exists_mem_factors_of_dvd ha0 hp hd
  apply Multiset.mem_pmap.mpr; use q; use hq
  exact Subtype.eq (Eq.symm (mk_eq_mk_iff_associated.mpr hpq))
#align associates.mem_factors'_of_dvd Associates.mem_factors'_of_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean#L1605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf401250dde34a934d25e304e587c93dabbe5bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
