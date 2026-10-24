# prodAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fb48c1ac976525cf7067b2083890f64e3b7cc70e72d633dce484d05d5ef4755",
  "kind": "def",
  "lexical_name": "prodAssoc",
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
  "slug": "prodassoc--7a65b3e4a49442d83bdc0088",
  "source": {
    "blob": "3d30871a2dd49dcabb4a0ab8e742fac9ccdebc92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1032,
    "line": 1024,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a65b3e4a49442d83bdc0088542c9bd1d794a3de06ff762500f550b169f0a28e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fb48c1ac976525cf7067b2083890f64e3b7cc70e72d633dce484d05d5ef4755`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1024–1032.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodAssoc [Module R E₂] [Module R E₃] : (E × E₂) × E₃ ≃ₗᵢ[R] E × E₂ × E₃ :=
  { LinearEquiv.prodAssoc R E E₂ E₃ with
    norm_map' := by
      rintro ⟨⟨e, f⟩, g⟩
      simp only [LinearEquiv.prodAssoc_apply, AddEquiv.toEquiv_eq_coe,
        Equiv.toFun_as_coe, EquivLike.coe_coe, AddEquiv.coe_prodAssoc,
        Equiv.prodAssoc_apply, Prod.norm_def, max_assoc] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean#L1024).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d30871a2dd49dcabb4a0ab8e742fac9ccdebc92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
