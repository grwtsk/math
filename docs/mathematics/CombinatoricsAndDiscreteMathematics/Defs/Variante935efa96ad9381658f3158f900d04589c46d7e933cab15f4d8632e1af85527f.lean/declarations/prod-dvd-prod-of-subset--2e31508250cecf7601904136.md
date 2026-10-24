# prod_dvd_prod_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eec64f2576f4d449b44b877678fe95678cfc9f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 639,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d6c38fb-14a1-34b0-9d05-98d693401f48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bc55ab7-0ff3-9f0c-8c15-2fa3fed233e7",
  "kind": "theorem",
  "lexical_name": "prod_dvd_prod_of_subset",
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
  "slug": "prod-dvd-prod-of-subset--2e31508250cecf7601904136",
  "source": {
    "blob": "0eec64f2576f4d449b44b877678fe95678cfc9f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 639,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e31508250cecf7601904136fe7ec197986f57b7076268044e3c1e21a0d8eb39",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bc55ab7-0ff3-9f0c-8c15-2fa3fed233e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_dvd_prod_of_subset {ι M : Type*} [CommMonoid M] (s t : Finset ι) (f : ι → M)
    (h : s ⊆ t) : (∏ i ∈ s, f i) ∣ ∏ i ∈ t, f i :=
  Multiset.prod_dvd_prod_of_le <| Multiset.map_le_map <| by simpa

end CommMonoid

section MulOpposite
variable [AddCommMonoid M] (s : Finset ι)

open MulOpposite

/-- Moving to the opposite additive commutative monoid commutes with summing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variante935efa96ad9381658f3158f900d04589c46d7e933cab15f4d8632e1af85527f.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eec64f2576f4d449b44b877678fe95678cfc9f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
