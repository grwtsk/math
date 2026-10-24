# inter_eq_singleton_of_nonempty_of_isCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b541c47a-1f7b-d453-5bab-faf45fa88de3",
  "kind": "theorem",
  "lexical_name": "inter_eq_singleton_of_nonempty_of_isCompl",
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
  "slug": "inter-eq-singleton-of-nonempty-of-iscompl--feacabdabaf56e60adbedd44",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1027,
    "line": 1011,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feacabdabaf56e60adbedd44b3573dd2c1df2d878d52140772cc6cd0dd123aa0",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b541c47a-1f7b-d453-5bab-faf45fa88de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1011–1027.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inter_eq_singleton_of_nonempty_of_isCompl {s1 s2 : AffineSubspace k P}
    (h1 : (s1 : Set P).Nonempty) (h2 : (s2 : Set P).Nonempty)
    (hd : IsCompl s1.direction s2.direction) : ∃ p, (s1 : Set P) ∩ s2 = {p} := by
  cases' inter_nonempty_of_nonempty_of_sup_direction_eq_top h1 h2 hd.sup_eq_top with p hp
  use p
  ext q
  rw [Set.mem_singleton_iff]
  constructor
  · rintro ⟨hq1, hq2⟩
    have hqp : q -ᵥ p ∈ s1.direction ⊓ s2.direction :=
      ⟨vsub_mem_direction hq1 hp.1, vsub_mem_direction hq2 hp.2⟩
    rwa [hd.inf_eq_bot, Submodule.mem_bot, vsub_eq_zero_iff_eq] at hqp
  · exact fun h => h.symm ▸ hp
#align affine_subspace.inter_eq_singleton_of_nonempty_of_is_compl AffineSubspace.inter_eq_singleton_of_nonempty_of_isCompl

/-- Coercing a subspace to a set then taking the affine span produces the original subspace. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L1011).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
