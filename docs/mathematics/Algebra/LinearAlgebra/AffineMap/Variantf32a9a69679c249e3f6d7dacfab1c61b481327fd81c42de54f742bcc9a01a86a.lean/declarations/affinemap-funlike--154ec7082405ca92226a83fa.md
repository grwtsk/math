# AffineMap.funLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc927fa30434dfab053118d562ba0de4983f5efa71c537422d0797ce37955e17",
  "kind": "instance",
  "lexical_name": "AffineMap.funLike",
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
  "slug": "affinemap-funlike--154ec7082405ca92226a83fa",
  "source": {
    "blob": "69df7267565349a9cc9f9b5214762b9eb062479c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:154ec7082405ca92226a83fa7b367cbda7dbc938925161812678c7b017d07369",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc927fa30434dfab053118d562ba0de4983f5efa71c537422d0797ce37955e17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AffineMap.funLike (k : Type*) {V1 : Type*} (P1 : Type*) {V2 : Type*} (P2 : Type*)
    [Ring k] [AddCommGroup V1] [Module k V1] [AffineSpace V1 P1] [AddCommGroup V2] [Module k V2]
    [AffineSpace V2 P2] : FunLike (P1 →ᵃ[k] P2) P1 fun _ => P2
    where
  coe := AffineMap.toFun
  coe_injective' := fun ⟨f, f_linear, f_add⟩ ⟨g, g_linear, g_add⟩ => fun (h : f = g) => by
    cases' (AddTorsor.Nonempty : Nonempty P1) with p
    congr with v
    apply vadd_right_cancel (f p)
    erw [← f_add, h, ← g_add]
#align affine_map.fun_like AffineMap.funLike

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69df7267565349a9cc9f9b5214762b9eb062479c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
