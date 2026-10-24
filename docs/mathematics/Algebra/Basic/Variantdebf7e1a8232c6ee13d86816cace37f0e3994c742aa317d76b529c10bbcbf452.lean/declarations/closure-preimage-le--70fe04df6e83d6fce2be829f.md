# closure_preimage_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da8558f6-ced9-ed14-18a3-9e9fab7e8cda",
  "kind": "theorem",
  "lexical_name": "closure_preimage_le",
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
  "slug": "closure-preimage-le--70fe04df6e83d6fce2be829f",
  "source": {
    "blob": "eed4653873a91b048990618e6675004b305c1b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 550,
    "path": "GRWTSK/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fe04df6e83d6fce2be829fe767e28e02a557ced2c9dce6028381449c005cc3",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da8558f6-ced9-ed14-18a3-9e9fab7e8cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_preimage_le (f : K →+* L) (s : Set L) : closure (f ⁻¹' s) ≤ (closure s).comap f :=
  closure_le.2 fun _ hx => SetLike.mem_coe.2 <| mem_comap.2 <| subset_closure hx

section Commutative

variable {K : Type u} [Field K] (s : Subfield K)

/-- Product of a multiset of elements in a subfield is in the subfield. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantdebf7e1a8232c6ee13d86816cace37f0e3994c742aa317d76b529c10bbcbf452.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed4653873a91b048990618e6675004b305c1b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
