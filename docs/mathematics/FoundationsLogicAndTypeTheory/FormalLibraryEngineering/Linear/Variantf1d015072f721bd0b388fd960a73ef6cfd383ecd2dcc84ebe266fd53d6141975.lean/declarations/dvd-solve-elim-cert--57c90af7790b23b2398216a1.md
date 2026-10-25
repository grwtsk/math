# dvd_solve_elim_cert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b475644529784fde21950cdef1e528a06d9b9903bb5495a3c06deddfb3ed370",
  "kind": "def",
  "lexical_name": "dvd_solve_elim_cert",
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
  "slug": "dvd-solve-elim-cert--57c90af7790b23b2398216a1",
  "source": {
    "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 958,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c90af7790b23b2398216a1b4cebd812dedb4e215d04a75987127d5e1f737af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b475644529784fde21950cdef1e528a06d9b9903bb5495a3c06deddfb3ed370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 958–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dvd_solve_elim_cert (d₁ : Int) (p₁ : Poly) (d₂ : Int) (p₂ : Poly) (d : Int) (p : Poly) : Bool :=
  match p₁, p₂ with
  | .add a₁ x₁ p₁, .add a₂ x₂ p₂ =>
    x₁.beq x₂ &&
    (d.beq' (Int.gcd (a₁*d₂) (a₂*d₁)) &&
     p.beq' (p₁.combine_mul_k a₂ (- a₁) p₂))
  | _, _ => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean#L958).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43335f1fbd938bca5e0516fa91279a56144dc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
