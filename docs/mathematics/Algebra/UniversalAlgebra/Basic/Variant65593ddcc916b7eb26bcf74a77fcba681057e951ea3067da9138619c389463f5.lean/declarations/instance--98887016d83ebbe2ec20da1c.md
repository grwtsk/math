# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31e974b1f60e19c40ac3c54cc97ba9263309ac8d95948201c16def668249ae13",
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
  "slug": "instance--98887016d83ebbe2ec20da1c",
  "source": {
    "blob": "a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 434,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98887016d83ebbe2ec20da1c95ad29d06d62397c00a0a4effc0cc7c7e2ad9748",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31e974b1f60e19c40ac3c54cc97ba9263309ac8d95948201c16def668249ae13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsCancelAdd R] : IsStrictOrderedModule R A where
  smul_lt_smul_of_pos_right a ha r s hrs := by
    rw [StarOrderedRing.pos_iff] at ha
    rw [StarOrderedRing.lt_iff] at hrs ⊢
    obtain ⟨r, hr₀, hr, rfl⟩ := hrs
    obtain ⟨ha₀, ha⟩ := ha
    exact ⟨r • a, smul_ne_zero hr₀ ha₀, smul_mem_closure_star_mul hr ha, add_smul ..⟩

end StarModule

section OrderClass

variable {F R S : Type*} [NonUnitalSemiring R] [PartialOrder R] [StarRing R]
  [StarOrderedRing R]
variable [NonUnitalSemiring S] [PartialOrder S] [StarRing S] [StarOrderedRing S]

-- we prove this auxiliary lemma in order to avoid duplicating the proof twice below.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
