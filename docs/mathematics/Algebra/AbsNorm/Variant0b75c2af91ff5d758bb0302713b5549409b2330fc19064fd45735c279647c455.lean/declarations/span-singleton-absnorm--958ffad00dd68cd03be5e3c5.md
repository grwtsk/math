# span_singleton_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2fc8109-c9b7-e561-eaea-f7efd0bce1e5",
  "kind": "theorem",
  "lexical_name": "span_singleton_absNorm",
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
  "slug": "span-singleton-absnorm--958ffad00dd68cd03be5e3c5",
  "source": {
    "blob": "e0039619e80c46ba5612d3ea3f7b870e46f2b701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 344,
    "path": "GRWTSK/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:958ffad00dd68cd03be5e3c5bb509e1be69f36d0784e5fc460e888f8fcb0f15c",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2fc8109-c9b7-e561-eaea-f7efd0bce1e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_singleton_absNorm {I : Ideal S} (hI : (Ideal.absNorm I).Prime) :
    Ideal.span (singleton (Ideal.absNorm I : ℤ)) = I.comap (algebraMap ℤ S) := by
  have : Ideal.IsPrime (Ideal.span (singleton (Ideal.absNorm I : ℤ))) := by
    rwa [Ideal.span_singleton_prime (Int.ofNat_ne_zero.mpr hI.ne_zero), ← Nat.prime_iff_prime_int]
  apply (this.isMaximal _).eq_of_le
  · exact ((isPrime_of_irreducible_absNorm
      ((Nat.irreducible_iff_nat_prime _).mpr hI)).comap (algebraMap ℤ S)).ne_top
  · rw [span_singleton_le_iff_mem, mem_comap, algebraMap_int_eq, map_natCast]
    exact absNorm_mem I
  · rw [Ne, span_singleton_eq_bot]
    exact Int.ofNat_ne_zero.mpr hI.ne_zero

end Infinite

section Free

variable [Module.Free ℤ S] [Module.Finite ℤ S]

-- A nontrivial free `ℤ`-module is infinite; local to this section to supply `Infinite S`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variant0b75c2af91ff5d758bb0302713b5549409b2330fc19064fd45735c279647c455.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0039619e80c46ba5612d3ea3f7b870e46f2b701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
