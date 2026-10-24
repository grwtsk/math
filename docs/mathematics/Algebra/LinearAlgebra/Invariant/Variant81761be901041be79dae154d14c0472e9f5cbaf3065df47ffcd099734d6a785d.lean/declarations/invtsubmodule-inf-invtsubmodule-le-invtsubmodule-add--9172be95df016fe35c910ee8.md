# invtSubmodule_inf_invtSubmodule_le_invtSubmodule_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e266cec-79cc-edc6-469a-9cfea910d859",
  "kind": "lemma",
  "lexical_name": "invtSubmodule_inf_invtSubmodule_le_invtSubmodule_add",
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
  "slug": "invtsubmodule-inf-invtsubmodule-le-invtsubmodule-add--9172be95df016fe35c910ee8",
  "source": {
    "blob": "64ca0f0519a4d8358774c8944e447259f4456d1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9172be95df016fe35c910ee8489ac938d03fd9487690d054ecdeb291fb09ec74",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e266cec-79cc-edc6-469a-9cfea910d859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invtSubmodule_inf_invtSubmodule_le_invtSubmodule_add :
    f.invtSubmodule ⊓ g.invtSubmodule ≤ (f + g).invtSubmodule :=
  fun p ⟨hfp, hgp⟩ _ hx ↦ p.add_mem (hfp hx) (hgp hx)

section CommRing

variable {R S : Type*} [Semiring R] [Semiring S] [Module R M] [Module S M]
  [DistribSMul S R] [SMulCommClass R S M] [IsScalarTower S R M] (f : End R M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64ca0f0519a4d8358774c8944e447259f4456d1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
