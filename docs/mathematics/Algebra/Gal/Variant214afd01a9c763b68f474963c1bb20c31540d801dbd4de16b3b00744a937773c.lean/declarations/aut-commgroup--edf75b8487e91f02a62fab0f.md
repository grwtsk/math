# Aut.commGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47bdaad61bb8e1a1d83d4098f1aad84448f1d7275ef202af6c7812183dfb4e64",
  "kind": "def",
  "lexical_name": "Aut.commGroup",
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
  "slug": "aut-commgroup--edf75b8487e91f02a62fab0f",
  "source": {
    "blob": "1f3aebcb5b203e621a7da2cebcac931285e3c2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edf75b8487e91f02a62fab0f50a5586337079be0409a512d6b379a9af5a4de40",
  "verification": {
    "reference": "docs/verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47bdaad61bb8e1a1d83d4098f1aad84448f1d7275ef202af6c7812183dfb4e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Aut.commGroup : CommGroup (L ≃ₐ[K] L) :=
  ((zeta_spec n K L).autToPow_injective K).commGroup _ (map_one _) (map_mul _) (map_inv _)
    (map_div _) (map_pow _) (map_zpow _)
#align is_cyclotomic_extension.aut.comm_group IsCyclotomicExtension.Aut.commGroup

variable (h : Irreducible (cyclotomic n K)) {K} (L)

/-- The `MulEquiv` that takes an automorphism `f` to the element `k : (ZMod n)ˣ` such that
  `f μ = μ ^ k` for any root of unity `μ`. A strengthening of `IsPrimitiveRoot.autToPow`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Gal/Variant214afd01a9c763b68f474963c1bb20c31540d801dbd4de16b3b00744a937773c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f3aebcb5b203e621a7da2cebcac931285e3c2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
