# sigmaCurryLEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29da3d9f316a9623c96008e38a29541782b8a43f4c5da5de4f978a6847c68e95",
  "kind": "def",
  "lexical_name": "sigmaCurryLEquiv",
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
  "slug": "sigmacurrylequiv--52e4419f9ee6fe2c8980e693",
  "source": {
    "blob": "aacb59887a4ddaaae0275b3e52b5ac621ebde6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52e4419f9ee6fe2c8980e693a540284aee8e0dd060cb95c2a21d28020a631b42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29da3d9f316a9623c96008e38a29541782b8a43f4c5da5de4f978a6847c68e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaCurryLEquiv {α : ι → Type*} {M : (i : ι) → α i → Type*}
    [Π i j, AddCommMonoid (M i j)] [Π i j, Module R (M i j)] :
    (Π₀ (i : (x : ι) × α x), M i.fst i.snd) ≃ₗ[R] Π₀ (i : ι) (j : α i), M i j where
  __ := DFinsupp.sigmaCurryEquiv
  map_add' _ _ := by ext; rfl
  map_smul' _ _ := by ext; rfl

/-- `DFinsupp.equivFunOnFintype` as a linear equivalence.

This is the `DFinsupp` version of `Finsupp.linearEquivFunOnFintype`. -/
@[simps! apply symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant0ec8ab5f60b29e5a44ea2880efc94eb7044d7e846353cf4b49754654faf8a6d7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aacb59887a4ddaaae0275b3e52b5ac621ebde6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
