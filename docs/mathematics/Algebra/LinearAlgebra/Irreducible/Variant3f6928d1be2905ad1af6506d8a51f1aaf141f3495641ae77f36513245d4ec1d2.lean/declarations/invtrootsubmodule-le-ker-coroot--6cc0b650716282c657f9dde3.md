# invtRootSubmodule.le_ker_coroot'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e9f4fc5-9e64-dc98-8f28-19e7736b6952",
  "kind": "lemma",
  "lexical_name": "invtRootSubmodule.le_ker_coroot'",
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
  "slug": "invtrootsubmodule-le-ker-coroot--6cc0b650716282c657f9dde3",
  "source": {
    "blob": "ee8983cbe82c4f8ae46595b373f28cc6529e1303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc0b650716282c657f9dde3896e295a3950a49b02de72699fc11580e6cd6d10",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e9f4fc5-9e64-dc98-8f28-19e7736b6952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma invtRootSubmodule.le_ker_coroot' {K : Type*} [Field K] [NeZero (2 : K)]
    [Module K M] [Module K N] {P : RootPairing ι K M N}
    (q : P.invtRootSubmodule) {k : ι} (hk : P.root k ∉ (q : Submodule K M)) :
    (q : Submodule K M) ≤ LinearMap.ker (P.coroot' k) :=
  (Submodule.mem_invtSubmodule_reflection_iff (P.flip.root_coroot_two k)
    (Submodule.disjoint_span_singleton_of_notMem hk)).mp
    (P.mem_invtRootSubmodule_iff.mp q.property k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant3f6928d1be2905ad1af6506d8a51f1aaf141f3495641ae77f36513245d4ec1d2.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8983cbe82c4f8ae46595b373f28cc6529e1303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
