# Submodule.finrank_quotient_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4993785-f1e6-9eaa-047d-2c1ca6ccbe01",
  "kind": "theorem",
  "lexical_name": "Submodule.finrank_quotient_le",
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
  "slug": "submodule-finrank-quotient-le--e8df9c59b06a24b60f35acfc",
  "source": {
    "blob": "2616590f7387c5ef7ded451ecd988c1ac27c61a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8df9c59b06a24b60f35acfc7c9fd512dc8da239bdeb1779bce18a9ccfaa979b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4993785-f1e6-9eaa-047d-2c1ca6ccbe01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.finrank_quotient_le [StrongRankCondition R] [Module.Finite R M]
    (s : Submodule R M) : finrank R (M ⧸ s) ≤ finrank R M :=
  toNat_le_toNat ((Submodule.mkQ s).rank_le_of_surjective Quot.mk_surjective)
    (rank_lt_aleph0 _ _)

end Quotient

variable [Semiring R] [CommSemiring S] [AddCommMonoid M] [AddCommMonoid M'] [AddCommMonoid M₁]
variable [Module R M]

section ULift

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Constructions/Variant0cecbe331a1249e3ba680d06f287e621d12132c610b7f7537a54073c8906cb4a.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2616590f7387c5ef7ded451ecd988c1ac27c61a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
