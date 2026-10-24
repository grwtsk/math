# instSmulZeroClassRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bdc1cdccba22b8b1aab8d0a40978b9463830cbbdebe188270ae4061507bd3b",
  "kind": "instance",
  "lexical_name": "instSmulZeroClassRight",
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
  "slug": "instsmulzeroclassright--38cc88649f3d57d3f6792d0b",
  "source": {
    "blob": "b4bdff0d9a680ecb74791d8385109e7bf4facfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38cc88649f3d57d3f6792d0bad2f8cd505df004342150deb67b1ac2b333fffc8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bdc1cdccba22b8b1aab8d0a40978b9463830cbbdebe188270ae4061507bd3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSmulZeroClassRight : SMulZeroClass M (IncidenceAlgebra 𝕜 α) where
  smul c f :=
    ⟨c • ⇑f, fun a b hab ↦ by simp_rw [Pi.smul_apply, apply_eq_zero_of_not_le hab, smul_zero]⟩
  smul_zero c := by ext; exact smul_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bdff0d9a680ecb74791d8385109e7bf4facfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
