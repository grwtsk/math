# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d39de3a4118b80ec1dcb6910bb51e58d5d95ec6338e1325f949ca5013dcbc9d3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--316eaffc07cbc2d439819438",
  "source": {
    "blob": "189f35228e7419dce7cf6875a0c89054769d7d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:316eaffc07cbc2d4398194385813f908a1d77a44e5f8dd5110d12f9797aac79f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d39de3a4118b80ec1dcb6910bb51e58d5d95ec6338e1325f949ca5013dcbc9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [PseudoMetricSpace R] [Monoid R] [LipschitzMul R] : BoundedMul R where
  isBounded_mul {s t} s_bdd t_bdd := by
    have bdd : Bornology.IsBounded (s ×ˢ t) := Bornology.IsBounded.prod s_bdd t_bdd
    obtain ⟨C, mul_lip⟩ := ‹LipschitzMul R›.lipschitz_mul
    convert! mul_lip.isBounded_image bdd
    ext p
    simp only [Set.mem_image, Set.mem_prod, Prod.exists]
    constructor
    · intro ⟨a, a_in_s, b, b_in_t, eq_p⟩
      exact ⟨a, b, ⟨a_in_s, b_in_t⟩, eq_p⟩
    · intro ⟨a, b, ⟨a_in_s, b_in_t⟩, eq_p⟩
      simpa [← eq_p] using Set.mul_mem_mul a_in_s b_in_t

end bounded_mul

section SeminormedAddCommGroup
/-!
### Bounded operations in seminormed additive commutative groups
-/

variable {R : Type*} [SeminormedAddCommGroup R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedOperation/Variant66c8caa1181b40b97f6a0c4674ca614aed0b9821327b43644f2f6d9ab4ca643c.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189f35228e7419dce7cf6875a0c89054769d7d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
